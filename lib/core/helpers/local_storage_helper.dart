import 'package:hive_flutter/hive_flutter.dart';

class LocalStorageHelper {
  // Singleton pattern
  LocalStorageHelper._internal();
  static final LocalStorageHelper _shared = LocalStorageHelper._internal();
  factory LocalStorageHelper() => _shared;

  Box<dynamic>? hiveBox;

  /// Gọi hàm này trong `main()` để khởi tạo Hive
  static Future<void> initLocalStorageHelper() async {
    _shared.hiveBox = await Hive.openBox('TravoApp');
  }

  /// Lấy giá trị theo key
  static dynamic getValue(String key) {
    return _shared.hiveBox?.get(key);
  }

  /// Gán giá trị theo key
  static Future<void> setValue(String key, dynamic val) async {
    await _shared.hiveBox?.put(key, val);
  }
}
