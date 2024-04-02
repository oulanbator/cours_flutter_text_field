import 'package:cours_flutter_text_field/screens/home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        // inputDecorationTheme: InputDecorationTheme(
        //   errorStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
        //         color: Theme.of(context).colorScheme.error,
        //         // color: Colors.deepPurpleAccent,
        //       ),
        // ),
        useMaterial3: true,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
