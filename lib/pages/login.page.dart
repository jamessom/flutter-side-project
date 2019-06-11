import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              cpfInput(),
              Divider(),
              passInput(),
              Divider(),
              actionButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget cpfInput() {
    return TextFormField(
      autofocus: true,
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.white, fontSize: 20),
      decoration: InputDecoration(
        labelText: 'CPF',
        labelStyle: TextStyle(color: Colors.white)
      ),
    );
  }

  Widget passInput() {
    return TextFormField(
      autofocus: true,
      obscureText: true,
      keyboardType: TextInputType.text,
      style: TextStyle(color: Colors.white, fontSize: 20),
      decoration: InputDecoration(
        labelText: 'Senha',
        labelStyle: TextStyle(color: Colors.white)
      ),
    );
  }

  Widget actionButton() {
    return ButtonTheme(
      height: 60.0,
      child: RaisedButton(
        onPressed: () => false,
        child: Text(
          'Entrar',
          style: TextStyle(color: Colors.deepPurple),
        ),
        color: Colors.white,
      ),
    );
  }
}