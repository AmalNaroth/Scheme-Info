import 'package:flutter/material.dart';
import 'package:schemeinfo_demo/presentation/scheme_info_screen.dart';
import 'package:schemeinfo_demo/utils/constants/size/value_size.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    mHight = MediaQuery.of(context).size.height;
    mWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(),
      initialRoute: "/home",
      routes: {
        "/home": (context) => const SchemeInfoScreen(),
      },
    );
  }
}
