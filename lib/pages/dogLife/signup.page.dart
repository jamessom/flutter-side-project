import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyContainer(context),
    );
  }
      
  _bodyContainer(context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        left: 40,
        right: 40,
      ),
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          _listViewItemAssetImageContent(),
          _listViewItemFormFieldName(),
          _listViewItemFormFieldEmail(),
          _listViewItemFormFieldPass(),
          SizedBox(height: 40,),
          _listViewItemButtonRegister(),
          SizedBox(height: 5,),
          _listViewItemButtonCancel(context),
        ],
      ),
    );
  }

  _listViewItemAssetImageContent() {
    return Container(
      width: 200,
      height: 200,
      alignment: Alignment(0.0, 1.15),
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: AssetImage('assets/profile-picture.png'),
          fit: BoxFit.fitHeight
        ),
      ),
      child: _listViewItemContentBox(),
    );
  }

  _listViewItemContentBox() {
    return Container(
      height: 56,
      width: 56,
      alignment: Alignment.center,
      decoration: _listViewItemContentBoxDecoration(),
      child: SizedBox.expand(
        child: FlatButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: (){},
        ),
      ),
    );
  }

  _listViewItemContentBoxDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.3, 1.0],
        colors: [
          Color(0XFFF58524),
          Color(0XFFF92B7F),
        ]
      ),
      border: Border.all(
        width: 4.0,
        color: Colors.white,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(56),
      ),
    );
  }

  _listViewItemFormFieldName() {
    return TextFormField(
      keyboardType: TextInputType.text,
      style: TextStyle(
        fontSize: 20,
      ),
      decoration: InputDecoration(
        labelText: "Nome",
        labelStyle: TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
    );
  }

  _listViewItemFormFieldEmail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        fontSize: 20,
      ),
      decoration: InputDecoration(
        labelText: "E-mail",
        labelStyle: TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
    );
  }

  _listViewItemFormFieldPass() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: true,
      style: TextStyle(
        fontSize: 20,
      ),
      decoration: InputDecoration(
        labelText: "Senha",
        labelStyle: TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
    );
  }

  _listViewItemButtonRegister() {
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
          child: Text(
            "Cadastrar",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20
            ),
          ),
          onPressed: () => {},
        ),
      )
    );
  }

  _listViewItemButtonCancel(context) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      child: FlatButton(
        child: Text(
          "Cancelar",
          textAlign: TextAlign.center,
        ),
        onPressed: () => Navigator.pop(context, false),
      ),
    );
  }
}
