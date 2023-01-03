import 'package:flutter/material.dart';
import 'package:phone_auth_flutter_project/screen_Bavly/Welcome_Screen_Bavly.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Phone auth',
      home: welcome(),
    );
  }
}
