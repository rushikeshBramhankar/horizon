import 'package:flutter/material.dart';
import 'package:horizon_project/Authentication/splashScreen.dart';
import 'package:horizon_project/profile.dart';
import 'package:horizon_project/search.dart';

void main() {
  runApp(
    MaterialApp(
      home: Search(),
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
    ),
  );
}
