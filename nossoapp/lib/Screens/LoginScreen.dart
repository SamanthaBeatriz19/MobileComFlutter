import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nossoapp/logic/authentication/auth_bloc.dart';
import 'package:nossoapp/logic/authentication/auth_event.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = new GlobalKey();
    String username = "";
    String password = "";

    return Scaffold(
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text(
                "Nome",
                style: TextStyle(
                  fontFamily: "Calibri",
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3, bottom: 10),
                child: TextFormField(
                  validator: (inValue) {
                    if (inValue == null || inValue.isEmpty) {
                      return "por favor insira um nome";
                    }
                    return null;
                  },
                  onSaved: (inValue) {
                    username = inValue.toString();
                  },
                ),
              ),
              Text(
                "Senha",
                style: TextStyle(
                  fontFamily: "Calibri",
                  fontSize: 20,
                ),
              ),
              TextFormField(
                validator: (inValue) {
                  if (inValue.toString().length < 4) {
                    return "Tem que ter ao menos 4 caracters";
                  }
                  return null;
                },
                onSaved: (inValue) {
                  password = inValue.toString();
                },
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();

                      BlocProvider.of<AuthBloc>(context).add(
                          LoginUser(username: username, password: password));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen.shade700,
                    padding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 10,
                    ),
                  ),
                  child: Text("Submit"),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context).add(Logout());
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink.shade600,
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 10,
                  ),
                ),
                child: Text("Sair"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
