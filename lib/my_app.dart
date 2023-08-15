import 'package:fluter_1/Counter1_Page.dart';
import 'package:flutter/material.dart';

//Статусу жок (жарандыгы жок) виджеттер колдонмо учурунда касиеттерин өзгөртпөйт.
//Мындай виджеттер жарандыгы жок.
// Аларды ата-энелик контейнер виджетинде пайда болгон тышкы окуялар менен гана өзгөртүүгө болот.
// Ал эми StatelessWidget классы виджеттин ушул түрүн гана көрсөтөт.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Counter1Page(),
    );
  }
}
