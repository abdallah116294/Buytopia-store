import 'package:ecommerce_app/core/app/env_variables.dart';
import 'package:flutter/material.dart';

class Buytopia_App extends StatelessWidget {
  const Buytopia_App({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:EnvVariable.instance.debugMode,
     // title: "Buytopia",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
        title: const Text('Buytopia'),
      )),
    );
  }
}
