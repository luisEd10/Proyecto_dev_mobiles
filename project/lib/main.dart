import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:project/database_update.dart';
import 'package:project/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required by FlutterConfig
  await FlutterConfig.loadEnvVariables();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: DatabaseUpdate(),
    );
  }
}