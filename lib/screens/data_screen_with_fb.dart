// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:this_is_flutter/widgets/drawer.dart';
import 'package:this_is_flutter/widgets/my_details.dart';
import 'package:this_is_flutter/widgets/my_intro.dart';
import 'package:this_is_flutter/widgets/widgets.dart';
// import 'package:http/http.dart' as http;

class DataScreenFB extends StatefulWidget {
  @override
  _DataScreenFBState createState() => _DataScreenFBState();
}

class _DataScreenFBState extends State<DataScreenFB>
    with SingleTickerProviderStateMixin {
  // Future fetchData() async {
  //   final url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  //   var res = await http.get(url);
  //   var data = jsonDecode(res.body);
  //   return data;
  // }

  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 500),
    );
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.easeOut,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "My Flutter Playground",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          BackgroundWidget(),
          Container(
            child: Column(
              children: [
                NavigationBar(),
                Expanded(
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyDetails(),
                      Expanded(
                        child: Center(
                          child: MyIntro(),
                        ),
                      ),
                      /* Expanded(child: Center(child: AboutMe(),),), */
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _nameController.text;
          // _nameController.clear();
        },
        child: Icon(Icons.send),
      ),
    );
  }

  FutureBuilder buildFutureBuilder() {
    return FutureBuilder(
      // future: fetchData(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return Center(
              child: Text("Fetch something"),
            );
          case ConnectionState.active:
          case ConnectionState.waiting:
            return Center(
              child: CircularProgressIndicator(),
            );
          case ConnectionState.done:
            if (snapshot.hasError) {
              return Center(
                child: Text("Some Error occured"),
              );
            }
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data[index]["title"]),
                  subtitle: Text("ID: ${snapshot.data[index]["id"]}"),
                  leading: Image.network(
                    snapshot.data[index]["url"],
                  ),
                );
              },
              itemCount: snapshot.data.length,
            );
        }
        return CircularProgressIndicator();
      },
    );
  }
}

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("assets/images/bg_1.jpg"),
      fit: BoxFit.cover,
      color: Colors.black.withOpacity(0.6),
      colorBlendMode: BlendMode.darken,
    );
  }
}
