import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CounterButtoms extends StatelessWidget {
  final Function fOne;
  final Function fTwo;
  final Function fThree;

  const CounterButtoms({Key key, this.fOne, this.fTwo, this.fThree})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 35.0),
        FloatingActionButton(child: Icon(Icons.replay), onPressed: fThree),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: fTwo),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: fOne),
      ],
    );
  }
}
