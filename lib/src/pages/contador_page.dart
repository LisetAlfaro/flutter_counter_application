import 'package:flutter/material.dart';
import 'package:flutter_hello_world/src/widgets/counter_bottons.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _styleText = new TextStyle(fontSize: 20);
  int _conteo = 0;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Hello World',
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Click here',
              style: _styleText,
            ),
            Text(
              '$_conteo',
              style: _styleText,
            )
          ],
        )),
        floatingActionButton: CounterButtoms(
            fOne: incrementCounter,
            fTwo: decrementCounter,
            fThree: replayCounter));
  }

  incrementCounter() => setState(() {
        _conteo++;
      });

  decrementCounter() => setState(() {
        _conteo--;
      });

  replayCounter() => setState(() {
        _conteo = 0;
      });
}
