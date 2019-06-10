import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _bodyContainer(),
    );
  }

  _appBar(context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.black38,
        onPressed: () => Navigator.pop(context, false),
      ),
    );
  }

  _bodyContainer() {
    return Container(
      padding: EdgeInsets.only(
        top: 40,
        left: 40,
        right: 40,
      ),
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          _listViewItemAssetImageContent(),
          SizedBox(height: 10,),
          _listViewItemTextContentTitle(),
          SizedBox(height: 10,),
          _listViewItemTextContentCopy(),
          SizedBox(height: 20,),
          _listViewItemFormField(),
          SizedBox(height: 10,),
          _listViewItemFormButton(),
          SizedBox(height: 10,),
        ],
      ),
    );
  }

  _listViewItemAssetImageContent() {
    return SizedBox(
      width: 200,
      height: 200,
      child: Image.asset(
        "assets/reset-password-icon.png"
      ),
    );
  }

  _listViewItemTextContentTitle() {
    return Text(
      "Esqueceu sua senha?",
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }

  _listViewItemTextContentCopy() {
    return Text(
      "Por favor, informe o E-mail associado a sua conta que enviaremos um link para o mesmo com as instruções para restauração de sua senha.",
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      textAlign: TextAlign.center,
    );
  }

  _listViewItemFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "E-mail",
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

  _listViewItemFormButton() {
    return Container(
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3,1],
          colors: [
            Color(0xFFF56524),
            Color(0xFFF92B7F),
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: SizedBox.expand(
        child: FlatButton(
          child: Text(
            "Enviar",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: (){},
        ),
      ),
    );
  }
}