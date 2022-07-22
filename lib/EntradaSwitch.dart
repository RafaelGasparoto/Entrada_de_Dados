import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaConfiguracao = false;
  bool _escolhaConfiguracao_2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: [
          SwitchListTile(
              title: Text("Receber email?"),
              value: _escolhaConfiguracao,
              onChanged: (bool valor) {
                setState(() {
                  _escolhaConfiguracao = valor;
                });
              }),
          SwitchListTile(
              title: Text("Sim sim? nao nao?"),
              value: _escolhaConfiguracao_2,
              onChanged: (bool valor) {
                setState(() {
                  _escolhaConfiguracao_2 = valor;
                });
              })
        ],
      ),
    );
  }
}
