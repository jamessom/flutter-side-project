import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            assetLogo(),
            customDivider(),
            emailInput(),
            SizedBox(height: 10,),
            passInput(),
            buttonForgotPassword(),
            SizedBox(height: 10,),
            buttonLogin(),
            SizedBox(height: 10,),
            buttonLoginFacebook(),
            SizedBox(height: 10,),
            Container(
              height: 40,
              child: FlatButton(
                child: Text(
                  "Cadastre-se",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  assetLogo() {
    return SizedBox(
      width: 128,
      height: 128,
      child: Image.asset("assets/logo.png"),
    );
  }

  customDivider() {
    return SizedBox(
      height: 20,
    );
  }

  emailInput() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: new TextStyle(fontSize: 20),
      autofocus: true,
      decoration: InputDecoration(
        labelText: "E-mail",
        labelStyle: TextStyle(
          color: Colors.black38, 
          fontWeight: FontWeight.w400, 
          fontSize: 10,
        )
      ),
    );
  }

  passInput() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      style: new TextStyle(fontSize: 20),
      decoration: InputDecoration(
        labelText: "Senha",
        labelStyle: TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.w400,
          fontSize: 20
        ),
      ),
    );
  }

  buttonForgotPassword() {
    return Container(
      height: 40,
      alignment: Alignment.centerRight,
      child: FlatButton(
        child: Text(
          "Recuperar Senha",
          textAlign: TextAlign.right,
        ),
        onPressed: () => {},
      ),
    );
  }

  buttonLogin() {
    return Container(
      height: 60,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3, 1],
          colors: [
            Color(0xFFF58524),
            Color(0xFFF92B7F),
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        )
      ),
      child: SizedBox.expand(
        child: FlatButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Login",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
              Container(
                child: SizedBox(
                  child: Image.asset("assets/bone.png"),
                  height: 28,
                  width: 28,
                ),
              )
            ],
          ),
          onPressed: () => {},
        ),
      )
    );
  }

  buttonLoginFacebook() {
    return Container(
      height: 60,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Color(0xFF3C5A99),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        )
      ),
      child: SizedBox.expand(
        child: FlatButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Login com Facebook",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
              Container(
                child: SizedBox(
                  child: Image.asset("assets/fb-icon.png"),
                  height: 28,
                  width: 28,
                ),
              )
            ],
          ),
          onPressed: () => {},
        ),
      ),
    );
  }

  // actionForgotPasswordPage() {
  //   return Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //             builder: (context) => ResetPasswordPage()
  //           )
  //         )
  // }
}