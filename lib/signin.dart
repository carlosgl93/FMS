import 'package:flutter/material.dart';
import 'package:fms/authentication_service.dart';
import 'package:provider/provider.dart';

import 'SignUp.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido a FMS'),
      ),
      body: Center(
        child: Container(
          height: size.height,
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(40.0, 100, 40, 50),
          child: Column(children: [
            Text('Ingrese su email y contraseña para proceder'),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
              ),
            ),
            TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                )),
            ElevatedButton(
              onPressed: () {
                context.read<AuthenticationService>().signIn(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim());
              },
              child: Text("Sign in"),
            ),
            Container(
                child: Column(
              children: [
                Text("¿No tienes cuenta?"),
                ElevatedButton(
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()))
                  },
                  child: Text("Registrate Aquí"),
                ),
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
