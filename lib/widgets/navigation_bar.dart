import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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
            color: Colors.grey,
          ) /* .shimmer(
            duration: Duration(seconds: 8),
          ), */
          ,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _NavBarItem(
                title: "Home",
                onPressed: () {},
              ),
              SizedBox(
                width: 60,
              ),
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
  final Function onPressed;
  const _NavBarItem({
    Key key,
    this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontWeight: FontWeight.w600, fontSize: 20, color: Colors.grey),
    );
  }
}
