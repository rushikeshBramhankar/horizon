import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:horizon_project/Authentication/splashScreen.dart';
import 'package:horizon_project/add.dart';
import 'package:horizon_project/firebase_options.dart';
import 'package:horizon_project/home.dart';
import 'package:horizon_project/profile.dart';
import 'package:horizon_project/search.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MaterialApp(
      home: SplashScreen(),
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
    ),
  );
}
