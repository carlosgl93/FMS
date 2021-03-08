import 'package:flutter/material.dart';

class CreateProduct extends StatelessWidget {
  const CreateProduct({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Crear GiftCard')
          ),
          body: Center(
            child: Text('Crear GC'),
            ),
    );
  }
}