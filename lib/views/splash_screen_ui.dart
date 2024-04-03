// ignore_for_file: camel_case_types, sort_child_properties_last, prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:mukrata_sau_app/views/home_ui.dart';

class splashScreenUi extends StatefulWidget {
  const splashScreenUi({super.key});

  @override
  State<splashScreenUi> createState() => _splashScreenUiState();
}

class _splashScreenUiState extends State<splashScreenUi> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => homeUi(),
          ),
        ),
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              child: Image.asset(
                'assets/images/logo.png',
                width: MediaQuery.of(context).size.width * 0.7,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Text(
              'Tech SAU BUFFET',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.03,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Copyright © 2024 by Prasit K.',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.015,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
