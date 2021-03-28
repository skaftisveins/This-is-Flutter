import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:this_is_flutter/widgets/drawer.dart';
import 'package:http/http.dart' as http;

class DataScreenFB extends StatelessWidget {
  Future fetchData() async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
    var res = await http.get(url);
    var data = jsonDecode(res.body);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "My Flutter Playground",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/logo_transparent.png",
              // height: 400,
              // width: 400,
            ),
            // SizedBox(
            //   height: 250,
            //   width: 250,
            //   child: Image.asset(
            //     ,
            //     height: 500,
            //     width: 500,
            //   ),
            // ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Resume",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 60,
                ),
                Text(
                  "About",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ],
        ),
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
      future: fetchData(),
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
