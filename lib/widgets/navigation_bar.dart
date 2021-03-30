import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/logo_transparent.png",
            color: Colors.white,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _NavBarItem(
                title: "About",
              ),
              SizedBox(
                width: 60,
              ),
              _NavBarItem(
                title: "Projects",
              ),
              SizedBox(
                width: 60,
              ),
              _NavBarItem(
                title: "Resume",
              ),
              SizedBox(
                width: 60,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, color: Colors.white),
    );
  }
}
