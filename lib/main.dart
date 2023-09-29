import 'package:flutter/material.dart';
import 'package:widget_formato/config/theme/app_theme.dart';
import 'package:widget_formato/presentation/screens/buttons/buttons_screen.dart';
import 'package:widget_formato/presentation/screens/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 4).getTheme(),
      
      home: const HomeScreen()
    );
  }
}