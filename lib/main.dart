import 'package:flutter/material.dart';
import 'package:widgetsapp/config/theme/app_theme.dart';
import 'package:widgetsapp/presentation/screens/buttons/button_screen.dart';
import 'package:widgetsapp/presentation/screens/cards/cards_screen.dart';
import 'package:widgetsapp/presentation/screens/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      title: 'Flutter Hello World',
      home: const HomeScreen(),
      routes: {
        '/buttons': (context) => const ButtonsScreen(),
        '/cards': (context) => const CardsScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
          child: FilledButton(
        child: const Text('Hola'),
        onPressed: () {},
      )),
    );
  }
}
