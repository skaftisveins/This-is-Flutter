import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var myText = "Change my name";
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "My Flutter Playground",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/bg.jpg",
                  height: 300,
                  width: 500,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  myText,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter some text",
                        labelText: "Name"),
                  ),
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Skafti"),
                accountEmail: Text("skaftisveins@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/skafti-bg.jpg"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Skafti"),
                subtitle: Text("Junior Programmer"),
                trailing: Icon(Icons.edit),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                subtitle: Text("skaftisveins@gmail.com"),
                trailing: Icon(Icons.edit),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            myText = _nameController.text;
            _nameController.clear();
            setState(() {});
          },
          child: Icon(Icons.send),
        ));
  }
}
