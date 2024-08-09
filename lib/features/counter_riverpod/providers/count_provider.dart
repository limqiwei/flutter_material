import 'package:flutter_riverpod/flutter_riverpod.dart';


// Notes:
// Simple Count Provider but as compared to flutter hooks notifier that is
// declared in the build method. This provider can be declare in 1 place and
// read from multiple places, where the watchers will have the same values
final countProvider = StateProvider<int>((ref) => 0);