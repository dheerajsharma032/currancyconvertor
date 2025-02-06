import 'package:currancyconvertor/Material.dart' as custom_material;
import 'package:flutter/Material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: custom_material.Material(),
    );
  }
}
