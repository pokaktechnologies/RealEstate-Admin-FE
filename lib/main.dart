import 'package:flutter/material.dart';
import 'package:real_estate_admin_fe/src/features/product/bottombar/bottom_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokak Real-Estate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const BottomBar(),
    );
  }
}
