import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyContainer(context),
    );
  }
      
  dynamic bodyContainer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
        left: 40,
        right: 40,
      ),
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          imageContent(),
          formFieldName(),
          formFieldEmail(),
          formFieldPass(),
          const SizedBox(height: 40,),
          custonRegister(),
          const SizedBox(height: 5,),
          custonCancel(context),
        ],
      ),
    );
  }

  Widget imageContent() {
    return Container(
      width: 200,
      height: 200,
      alignment: const Alignment(0.0, 1.15),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('assets/profile-picture.png'),
          fit: BoxFit.fitHeight
        ),
      ),
      child: contentBox(),
    );
  }

  Widget contentBox() {
    return Container(
      height: 56,
      width: 56,
      alignment: Alignment.center,
      decoration: contentBoxDecoration(),
      child: SizedBox.expand(
        child: FlatButton(
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: (){},
        ),
      ),
    );
  }

  dynamic contentBoxDecoration() {
    final List<double> stopsGradient = <double>[0.3, 1.0];

    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: stopsGradient,
        colors: const <Color>[
          Color(0XFFF58524),
          Color(0XFFF92B7F),
        ]
      ),
      border: Border.all(
        width: 4.0,
        color: Colors.white,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(56),
      ),
    );
  }

  Widget formFieldName() {
    return TextFormField(
      keyboardType: TextInputType.text,
      style: TextStyle(
        fontSize: 20,
      ),
      decoration: InputDecoration(
        labelText: 'Nome',
        labelStyle: TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget formFieldEmail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        fontSize: 20,
      ),
      decoration: InputDecoration(
        labelText: 'E-mail',
        labelStyle: TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget formFieldPass() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      style: TextStyle(
        fontSize: 20,
      ),
      decoration: InputDecoration(
        labelText: 'Senha',
        labelStyle: TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget custonRegister() {
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
          child: Text(
            'Cadastrar',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20
            ),
          ),
          onPressed: () => null,
        ),
      )
    );
  }

  Widget custonCancel(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      child: FlatButton(
        child: const Text(
          'Cancelar',
          textAlign: TextAlign.center,
        ),
        onPressed: () => Navigator.pop(context, false),
      ),
    );
  }
}
