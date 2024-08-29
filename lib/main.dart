import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_responsive/app/app.dart';
import 'package:window_manager/window_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  if(Platform.isWindows || Platform.isLinux || Platform.isMacOS){
    WindowOptions windowOptions = const WindowOptions(
      minimumSize: Size(400, 600),
      center: true,
      title: 'Responsive',
      backgroundColor: Colors.transparent,
      skipTaskbar: false,
      titleBarStyle: TitleBarStyle.hidden,
      windowButtonVisibility: false,
    );
    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }
  runApp(const MyApp());
}


