import 'package:ecommerce_app/core/app/env_variables.dart';
import 'package:ecommerce_app/firebase_options.dart';
import 'package:ecommerce_app/my_app/my_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await EnvVariable.instance.init(envTypeEnum: EnvTypeEnum.dev);
  await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],)
      .then((value) {
    runApp(const Buytopia_App());
  });
}
