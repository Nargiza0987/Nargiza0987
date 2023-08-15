
import 'package:flutter/material.dart';

class Counter2Page extends StatelessWidget {
  

  const Counter2Page({Key? achkych,required this.syrttanKelgenSan}):super(key: achkych);

  final int syrttanKelgenSan;
  
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('ТАПШЫРМА 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //экрандын центрне жылат ичиндегидер
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.black12,
              ),
              height: 50,
              width: 250,
              child:  Text(
                'сан:$syrttanKelgenSan',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

