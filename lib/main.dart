import 'package:flutter/material.dart';
import 'package:image_search/ui/home_screen.dart';

import 'data/api.dart';
import 'data/photo_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: PhotoProvider(
        api: PixabayApi(),
        child: const HomeScreen(),
      ),
    );
  }
}
