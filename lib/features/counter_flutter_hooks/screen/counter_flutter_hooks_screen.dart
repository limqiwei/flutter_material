import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_material/core/helper/UIUtil.dart';
import 'package:flutter_material/core/widgets/base_scaffold.dart';
import 'package:flutter_material/core/zcore.dart';
class CounterFlutterHooksScreen extends HookWidget {

  final String title;

  const CounterFlutterHooksScreen({
    super.key,
    required this.title,
  });

  // Using flutter hooks, there is no need to define a State
  // but just need to define build method directly
  @override
  Widget build(BuildContext context) {

    // Define a count value value notifier using a flutter hooks to track count
    final ValueNotifier<int> count = useState<int>(0); // Set initial value to 0;

    return BaseScaffold(
        // Note: As compared to basic example
        // No need to use widget.title since it is using under the same class now.
        title: title,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(ZCore.string.labelPushButtonNoOfTimes),
              Text(
                '${count.value}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              UIUtil.verticalPadding(10),
              ElevatedButton(onPressed: () {
                // Update using flutter hooks
                // This will automatically update the value and trigger rebuilding (build function)
                // The frame will be rebuild with the updated count
                count.value = 0;
              }, child: Text(ZCore.string.labelReset))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            count.value++;
            // This will automatically update the value and trigger rebuilding (build function)
            // The frame will be rebuild with the updated count
          },
          tooltip: ZCore.string.labelIncrement,
          child: const Icon(Icons.add),
        )
    );
  }

}

