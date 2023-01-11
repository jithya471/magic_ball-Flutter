// ignore_for_file: prefer_const_constructors, camel_case_types

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
       MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Center(
              child: const Text('Ask me Anything..',
              style: TextStyle(
              color: Colors.white,
              ),
              ),
            ),
          ),
          body: magicBall(),
          
        ),
      ),
    );
    class magicBall extends StatefulWidget {
      const magicBall({super.key});
    
      @override
      State<magicBall> createState() => _magicBallState();
    }
    
    class _magicBallState extends State<magicBall> {
      int ballno = 1;
      @override
      Widget build(BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: (() {
                      setState(() {
                         ballno = Random().nextInt(5) + 1;
                      });
                     
                    }),
                    child: Image.asset('images/ball$ballno.png'),
                  ),
                )
              ],
            )
          ],
        );
      }
    }