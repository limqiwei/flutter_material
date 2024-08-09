import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_material/core/helper/UIUtil.dart';
import 'package:flutter_material/core/widgets/base_scaffold.dart';
import 'package:flutter_material/core/zcore.dart';
import 'package:flutter_material/features/counter_riverpod/providers/count_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class CounterRiverpodScreen extends ConsumerWidget {

  final String title;

  const CounterRiverpodScreen({
    super.key,
    required this.title,
  });

  // Using flutter hooks, there is no need to define a State
  // but just need to define build method directly
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    // Similar to flutter hooks but now has WidgetRef in build method.
    // This is to allow the widget to reference (ref) and watch/read the providers
    // See countProvider declared in counter_riverpod/providers/count_providers

    final count = ref.watch(countProvider);
    // Now has this ref that can be used to watch providers

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
                '${count}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              UIUtil.verticalPadding(10),
              ElevatedButton(onPressed: () {
                // Update using riverpod, update the notifier by updating the state
                // This will automatically update the value and trigger rebuilding (build function)
                // The frame will be rebuild with the updated count
                ref.watch(countProvider.notifier).state = 0;
              }, child: Text(ZCore.string.labelReset))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Update using riverpod, update the notifier by updating the state
            // This will automatically update the value and trigger rebuilding (build function)
            // The frame will be rebuild with the updated count
            ref.watch(countProvider.notifier).state++;
          },
          tooltip: ZCore.string.labelIncrement,
          child: const Icon(Icons.add),
        )
    );
  }

}

