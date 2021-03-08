import 'package:flutter/material.dart';

class PendingRedemption extends StatelessWidget {
  const PendingRedemption({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Canjes Pendientes')
          ),
          body: Center(
            child: Container(
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5.0,
              childAspectRatio: 1.5
            ),
            itemCount: 50,
            itemBuilder: (context, index) => Container(
              child: Center(
                child: Text('$index'),)
            ),
            

        ),
      ),
          ),
    );
  }
}