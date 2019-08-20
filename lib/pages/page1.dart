import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:problema_bloc_pattern/blocs/bloc_1.dart';
import 'package:problema_bloc_pattern/pages/page2.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {


  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FlatButton(
            onPressed: (){
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Page2()), (ctx) => false);
            },
              child: Text('Page 2')),
        ),
      ),
    );
  }

}
