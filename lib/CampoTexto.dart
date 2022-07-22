import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              //.text digitar texto
              //.number digitar somente numeros
              //.emailAdress para digitar email
              //.datetime para colocar data e hora
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Digite um valor",
              ),
              maxLength: 3,
              /*style: TextStyle(
                fontSize: 25,
                color: Colors.redAccent,
              ),*/

              //esconde texto, usado pra senha
              //obscureText: true,

              //pegar informações quando o campo modificado
              /*onChanged: (String texto){
                print("Valor digitado" + texto);
              },*/

              //pegar informações quando clicado enter
              onSubmitted: (String texto) {
                print("valor digitado: " + texto);
              },
              controller: _textEditingController,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print("Valor digitado:" + _textEditingController.text);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.indigoAccent),
            ),
            child: const Text("Salvar"),
          )
        ],
      ),
    );
  }
}
