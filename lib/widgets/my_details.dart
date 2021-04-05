import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:this_is_flutter/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nameWidget = "skaftisveins"
        .text
        .blue300
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (context.isMobile) 50.heightBox else 10.heightBox,
          CustomAppBar() /* .shimmer(secondaryColor: Colors.blueGrey) */,
          _TextItem(
            title: "Hi, there!",
          ),
          nameWidget,
          SizedBox(
            height: 50,
          ),
          // VxBox().size(60, 10).make().px4().shimmer(),
          SocialAccounts(),
          // _TextItem(
          //   title: "Pythonist and Enthusiastic Flutter developer",
          // ),
        ],
      ),
    );
  }
}

class SocialAccounts extends StatelessWidget {
  const SocialAccounts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.twitter,
        color: Colors.grey,
      ).mdClick(() {
        launch("https://twitter.com/skaftisveins");
      }).make(),
      30.widthBox,
      Icon(
        AntDesign.instagram,
        color: Colors.grey,
      ).mdClick(() {
        launch("https://instagram.com/skaftisveins");
      }).make(),
      30.widthBox,
      Icon(
        AntDesign.linkedin_square,
        color: Colors.grey,
      ).mdClick(() {
        launch("https://linkedin.com/in/skaftisveins/");
      }).make(),
      30.widthBox,
      Icon(
        AntDesign.github,
        color: Colors.grey,
      ).mdClick(() {
        launch("https://github.com/skaftisveins");
      }).make(),
    ].hStack();
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: kPrimaryColor,
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
