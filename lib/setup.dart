import 'package:bull_sdk/bull_sdk.dart';
import 'package:flutter/foundation.dart';

bool isSatoshifierInit = false;

class LibSatoshifier {
  static Future<bool> init() async {
    if (isSatoshifierInit) return true;

    try {
      await BullSdk.init();
      isSatoshifierInit = true;
      return true;
    } catch (e) {
      debugPrint('FATAL: Failed to initialize native libraries: $e');
      rethrow;
    }
  }
}
