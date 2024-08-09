import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_material/core/helper/UIUtil.dart';
import 'package:flutter_material/core/widgets/base_scaffold.dart';
import 'package:flutter_material/core/zcore.dart';

class CounterBasicScreen extends StatefulWidget {

  final String title;

  const CounterBasicScreen({
    super.key,
    required this.title,
  });

  @override
  State<StatefulWidget> createState() => _CounterBasicState();

}

class _CounterBasicState extends State<CounterBasicScreen> {

  int _count = 0;

  @override
  Widget build(BuildContext context) {

    return BaseScaffold(
      // Access widget state
      title: widget.title,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(ZCore.string.labelPushButtonNoOfTimes),
            Text(
              '${_count}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            UIUtil.verticalPadding(10),
            ElevatedButton(onPressed: () {
              setState(() {
                _count = 0;
              });
            }, child: Text(ZCore.string.labelReset))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
           setState(() {
             _count++ ;
           });
          },
        tooltip: ZCore.string.labelIncrement,
        child: const Icon(Icons.add),
      )
    );
  }

}

