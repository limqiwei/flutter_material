class AppDurations {

  AppDurations._internal();

  Duration durationSnackbarDefault =  const Duration(seconds: 1);
  Duration durationSnackbarAnimation =  const Duration(milliseconds: 100);
  Duration durationSnackbarReverseAnimation =  const Duration(milliseconds: 50);

  static AppDurations instance = AppDurations._internal();



}