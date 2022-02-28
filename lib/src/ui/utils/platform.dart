import 'package:flutter/foundation.dart';

bool get isAndroid => defaultTargetPlatform == TargetPlatform.android;
bool get isIOS => defaultTargetPlatform == TargetPlatform.iOS;
bool get isWeb => kIsWeb;
bool get isWebMobile => isWeb && (isIOS || isAndroid);
