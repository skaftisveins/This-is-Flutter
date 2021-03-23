import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:this_is_flutter/widgets/drawer.dart';
import 'package:http/http.dart' as http;

class DataScreen extends StatefulWidget {
  static const String routeName = "/data";

  @override
  _DataScreenState createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Flutter Playground",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text("ID: ${data[index]["id"]}"),
                  leading: Image.network(
                    data[index]["url"],
                  ),
                );
              },
              itemCount: data.length,
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _nameController.text;
          // _nameController.clear();
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
