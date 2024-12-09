import 'package:fitsy/navigation/app_navigator.dart';
import 'package:flutter/material.dart';

late AppNavigator nav;

void main() {
  nav = AppNavigator.instance;
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp.router(
      title: 'Fitsy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        cardTheme:
            CardTheme(color: Colors.white60, shadowColor: Colors.lime.shade50),
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: screenWidth * 0.05), // Regular text
        ),
        useMaterial3: true,
      ),
      routerConfig: nav.router,
    );
  }
}
