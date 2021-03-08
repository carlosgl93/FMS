import 'package:flutter/material.dart';
import 'package:fms/authentication_service.dart';
import 'package:provider/provider.dart';

import 'NavBar.dart';

class HomePage extends StatelessWidget {


  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Fidelization Management System"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
            tooltip: 'Open navigation menu',
            icon: const Icon(Icons.menu),
            onPressed: () {} // todo: Menu displaying function like a sidebar 
          ),
          IconButton(
            tooltip: 'Search',
            icon: const Icon(Icons.search),
            onPressed: () {} // todo: Menu displaying function like a sidebar 
          ),
          IconButton(
            tooltip: 'Log Out',
            icon: const Icon(Icons.logout),
            onPressed: () {
                context.read<AuthenticationService>().signOut();
              }, 
          ),],
        ),
      ),
      body: Center(
        child: Text('Homepage'),
      ), 
    );
  }
}