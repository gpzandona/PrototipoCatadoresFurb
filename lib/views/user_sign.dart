import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste_flutter/models/user.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);

  final TextEditingController _controllerId = TextEditingController();
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPhoneNumber = TextEditingController();
  final TextEditingController _controllerCpf = TextEditingController();
  //final TextEditingController _controllerCatador = TextEditingController();
  final TextEditingController _controllerPasswd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cadastro'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controllerName,
                decoration: InputDecoration(labelText: 'nome'),
                inputFormatters: [
                ],
              ),
              TextField(
                controller: _controllerEmail,
                decoration: InputDecoration(labelText: 'email'),
              ),
              TextField(
                controller: _controllerPhoneNumber,
                decoration: InputDecoration(labelText: 'numero de celular'),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  TelefoneInputFormatter()
                ],
              ),
              TextFormField(
                controller: _controllerCpf,
                decoration: InputDecoration(labelText: 'cpf'),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CpfInputFormatter()
                ],
              ),

              ElevatedButton(
                child: Text('Cadastrar'),
                onPressed: () {
                  final String id = _controllerId.text;
                  final String name = _controllerName.text;
                  final String email = _controllerEmail.text;
                  final String phoneNumber = _controllerPhoneNumber.text;
                  final String cpf = _controllerCpf.text;
                  final String passwd = _controllerPasswd.text;

                  final User cadastro = User(
                      id: "",
                      name: name,
                      email: email,
                      phoneNumber: phoneNumber,
                      cpf: cpf,
                      birthDate: '');
                  print(cadastro);
                },
              )
            ],
          ),
        ));
  }
}