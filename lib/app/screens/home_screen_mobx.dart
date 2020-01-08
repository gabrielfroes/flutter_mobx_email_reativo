import 'package:email_reativo/app/stores/email_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeScreenMobx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Desenhando a tela");
    final emailStore = EmailStore();

    void _nextStep() {
      print("Botão Ativado");
    }

    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged: emailStore.changeEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "E-mail", labelStyle: TextStyle(fontSize: 30.0)),
              ),
              Observer(
                builder: (_) => MaterialButton(
                  minWidth: double.infinity,
                  child: Text(
                    'Continuar',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: emailStore.buttonEnabled ? _nextStep : null,
                  textColor: Colors.white,
                  color: Colors.blue,
                  disabledColor: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
