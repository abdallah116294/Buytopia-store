import 'package:ecommerce_app/core/app/connectivity_controller.dart';
import 'package:ecommerce_app/core/app/env_variables.dart';
import 'package:ecommerce_app/core/common/screens/no_network_screen.dart';
import 'package:ecommerce_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Buytopia_App extends StatelessWidget {
  const Buytopia_App({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, child) {
        if (value) {
          return ScreenUtilInit( 
              designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
            builder: (_,child) {
              return MaterialApp(
                 onGenerateRoute: AppRoutes.onGenerateRoute,
                 initialRoute: AppRoutes.testone,
                  debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
                  // title: "Buytopia",
                  theme: ThemeData(
                    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                    useMaterial3: true,
                  ),
                  builder: (context, widget) {
                    return Scaffold(
                      body: Builder(
                        builder: (context) {
                          ConnectivityController.instance.init();
                          return widget!;
                        },
                      ),
                    );
                  },
                  home: Scaffold(
                      appBar: AppBar(
                    title: const Text('Buytopia'),
                  )));
            },
          );
        } else {
          return const MaterialApp(
            home: NoNetworkScreen(),
          );
        }
      },
    );
  }
}
