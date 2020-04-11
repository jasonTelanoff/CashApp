import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is a CASH App")),
      body:Center(
      child: Image.asset('assets/images/cash.jpg')
      
      )
      );
    
  }
}