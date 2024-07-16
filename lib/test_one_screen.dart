import 'package:ecommerce_app/core/extensions/context_extensions.dart';
import 'package:ecommerce_app/core/language/lang_keys.dart';
import 'package:ecommerce_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class TestOneScreen extends StatelessWidget {
  const TestOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test One '),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  context.pushName(AppRoutes.testtwoe);
                },
                child: const Text('Test')),
          ),
              Text(
            context.translate(LangKeys.appName),
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
           Image.asset(context.assets.testImage??'')
        ],
      ),
    );
  }
}
