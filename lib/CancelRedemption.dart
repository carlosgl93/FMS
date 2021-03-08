import 'package:flutter/material.dart';

class CancelRedemption extends StatelessWidget {
  const CancelRedemption({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Cancelar canje')
          ),
          body: Center(
            child: Text('Cancelar canje'),
            ),
    );
  }
}