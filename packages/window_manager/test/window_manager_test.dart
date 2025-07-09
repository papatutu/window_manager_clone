import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:window_manager_clone_clone/window_manager_clone.dart';

void main() {
  const MethodChannel channel = MethodChannel('window_manager_clone');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      null,
    );
  });
}
