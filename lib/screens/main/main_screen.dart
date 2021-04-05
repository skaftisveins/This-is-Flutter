import 'package:flutter/material.dart';
import 'package:this_is_flutter/constants.dart';
import 'package:this_is_flutter/screens/main/components/background.dart';
import 'package:this_is_flutter/widgets/my_details.dart';

import 'components/header.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Background(),
          Header(),
          Meat(),
        ],
      ),
    );
  }
}

class Meat extends StatelessWidget {
  const Meat({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 6),
      child: Row(
        children: [
          Expanded(flex: 2, child: MyDetails()),
          Expanded(
            child: Container(
              height: 400,
              width: 200,
              // color: Colors.redAccent,
            ),
          )
        ],
      ),
    );
  }
}
