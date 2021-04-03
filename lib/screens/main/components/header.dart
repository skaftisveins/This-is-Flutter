import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:this_is_flutter/screens/main/components/web_menu.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg_1.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.6),
            BlendMode.darken,
          ),
        ),
      ),
      width: double.infinity,
      height: 800,
      // color: kDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/shutterstock.svg",
                      ),
                      // Image.asset(
                      //   "assets/images/logo_transparent.png",
                      //   color: Colors.grey,
                      //   height: 140,
                      // ),
                      Spacer(),
                      WebMenu(),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding * 2,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
