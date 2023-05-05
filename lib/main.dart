import 'package:boatapp/screens/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:device_preview/device_preview.dart';
import 'Allcolor.dart';
import 'module/tabmodule.dart';

void main() {

  runApp(
    DevicePreview(
      enabled: true,
      tools: [
        ...DevicePreview.defaultTools
      ],
      builder: (context) =>  MyApp(),)
     );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => boat_module(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Boat App',
        theme: ThemeData(

          iconTheme: IconThemeData(color: primary),
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(size: 25),
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
              titleTextStyle: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          primarySwatch: primary,
        ),
        home: LoginScreen(),
      ),
    );
  }
}
