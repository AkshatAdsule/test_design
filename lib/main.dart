import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_design/constants/brand.dart';
import 'package:test_design/pages/home/home.dart';
import 'package:test_design/pages/home/test/auth_shim.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: BrandConstants.awhcTheme,
      initialRoute: '/auth_shim',
      routes: {
        '/home': (context) => const HomePage(),
        '/auth_shim': (context) => const AuthShimPage()
      },
    );
  }
}
