import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:problema_bloc_pattern/blocs/bloc_1.dart';
import 'package:problema_bloc_pattern/pages/page1.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  Bloc1 bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.getBloc<Bloc1>();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FlatButton(
            onPressed: (){
            bloc.inChat.add('Teste 1');
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Page1()), (ctx) => false);
            },
              child: Text('Page 1')),
        ),
      ),
    );
  }
}
