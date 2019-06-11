import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: bodyContainer(),
    );
  }

  dynamic appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: Colors.black38,
        onPressed: () => Navigator.pop(context, false),
      ),
    );
  }

  dynamic bodyContainer() {
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
          const SizedBox(height: 10,),
          textContentTitle(),
          const SizedBox(height: 10,),
          textContentCopy(),
          const SizedBox(height: 20,),
          formField(),
          const SizedBox(height: 10,),
          formButton(),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }

  Widget imageContent() {
    return SizedBox(
      width: 200,
      height: 200,
      child: Image.asset(
        'assets/reset-password-icon.png'
      ),
    );
  }

  Widget textContentTitle() {
    return Text(
      'Esqueceu sua senha?',
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget textContentCopy() {
    return Text(
      'Por favor, informe o E-mail associado a sua conta que enviaremos um link para o mesmo com as instruções para restauração de sua senha.',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget formField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'E-mail',
        labelStyle: TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
      style: TextStyle(
        fontSize: 16,
      ),
    );
  }

  Widget formButton() {
    return Container(
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const <double>[0.3,1],
          colors: const <Color>[
            Color(0xFFF56524),
            Color(0xFFF92B7F),
          ],
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: SizedBox.expand(
        child: FlatButton(
          child: Text(
            'Enviar',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: () => null,
        ),
      ),
    );
  }
}