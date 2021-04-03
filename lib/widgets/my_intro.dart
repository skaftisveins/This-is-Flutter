import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class MyIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 0, 0, 200),
            child: Intro(),
          ),
        ],
      ),
    );
  }
}

class Intro extends StatelessWidget {
  const Intro({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          "MyIntro".text.gray500.widest.sm.make(),
          10.heightBox,
          "Pythonist and Enthusiastic Flutter Developer"
              .text
              .white
              .xl3
              .maxLines(5)
              .make(),
          20.heightBox
        ].vStack(),
        ElevatedButton(
          onPressed: () {
            launch("urlString");
          },
          child: "Resume".text.make(),
        ).h(50)
      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}
