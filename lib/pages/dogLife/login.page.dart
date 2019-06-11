import 'package:flutter/material.dart';
import 'package:fsp/pages/dogLife/reset-password.page.dart';
import 'package:fsp/pages/dogLife/signup.page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyContainer(context),
    );
  }

  dynamic bodyContainer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 40,
        left: 40,
        right: 40,
      ),
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          imageContent(),
          const SizedBox(height: 20,),
          emailInput(),
          const SizedBox(height: 10,),
          passInput(),
          buttonForgotPassword(context),
          const SizedBox(height: 10,),
          buttonLogin(),
          const SizedBox(height: 10,),
          buttonLoginFacebook(),
          const SizedBox(height: 10,),
          textContent(context),
        ],
      ),
    );
  }

  Widget imageContent() {
    return SizedBox(
      width: 128,
      height: 128,
      child: Image.asset('assets/logo.png'),
    );
  }

  Widget emailInput() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
        labelText: 'E-mail',
        labelStyle: TextStyle(
          color: Colors.black38, 
          fontWeight: FontWeight.w400, 
          fontSize: 20,
        )
      ),
    );
  }

  Widget passInput() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
        labelText: 'Senha',
        labelStyle: TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.w400,
          fontSize: 20
        ),
      ),
    );
  }

  Widget buttonForgotPassword(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.centerRight,
      child: FlatButton(
        child: const Text(
          'Recuperar Senha',
          textAlign: TextAlign.right,
        ),
        onPressed: () => actionForgotPassword(context),
      ),
    );
  }

  Widget buttonLogin() {
    return Container(
      height: 60,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const <double>[0.3, 1],
          colors: const <Color>[
            Color(0xFFF58524),
            Color(0xFFF92B7F),
          ],
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        )
      ),
      child: SizedBox.expand(
        child: FlatButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Login',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
              Container(
                child: SizedBox(
                  child: Image.asset('assets/bone.png'),
                  height: 28,
                  width: 28,
                ),
              )
            ],
          ),
          onPressed: () => null,
        ),
      )
    );
  }

  Widget buttonLoginFacebook() {
    return Container(
      height: 60,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: const Color(0xFF3C5A99),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        )
      ),
      child: SizedBox.expand(
        child: FlatButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Login com Facebook',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
              Container(
                child: SizedBox(
                  child: Image.asset('assets/fb-icon.png'),
                  height: 28,
                  width: 28,
                ),
              )
            ],
          ),
          onPressed: () => null,
        ),
      ),
    );
  }

  Widget textContent(BuildContext context) {
    return Container(
      height: 40,
      child: FlatButton(
        child: const Text(
          'Cadastre-se',
          textAlign: TextAlign.center,
        ),
        onPressed: () => actionSignup(context),
      ),
    );
  }

  // Actions
  dynamic actionForgotPassword(BuildContext context) {
    return Navigator.push<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => ResetPasswordPage(),
      )
    );
  }

  dynamic actionSignup(BuildContext context) {
    return Navigator.push<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => SignupPage(),
      )
    );
  }
}