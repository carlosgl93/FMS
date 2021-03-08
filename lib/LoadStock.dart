import 'package:flutter/material.dart';

class LoadStock extends StatelessWidget {
  const LoadStock({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Cargar Stock')
          ),
          body: Center(
            child: Container(
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0 
            ),
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                child: Text('index: $index'),
              );
            },
            

        ),
      ),
          ),
    );
  }
}