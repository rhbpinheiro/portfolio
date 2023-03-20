import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {

  const MobileAppBar({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text(''),),
           body: Container(),
       );
  }
}