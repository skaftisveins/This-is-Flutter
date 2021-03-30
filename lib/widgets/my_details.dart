import 'package:flutter/material.dart';

class MyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _TextItem(
            title: "Hi, there!",
          ),
          _TextItem(
            title: "I am skaftisveins",
          ),
          SizedBox(
            height: 50,
          ),
          _TextItem(
            title: "Pythonist and Enthusiastic Flutter developer",
          ),
        ],
      ),
    );
  }
}

class _TextItem extends StatelessWidget {
  final String title;
  const _TextItem({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontWeight: FontWeight.w600, fontSize: 50, color: Colors.grey),
    );
  }
}
