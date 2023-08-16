import 'package:flutter/material.dart';

import 'counterapp1.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 76, 125, 231)),
        //useMaterial3: true,
      ),
      home: Counter1Page(),
    );
  }
}
