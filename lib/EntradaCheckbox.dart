import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({Key? key}) : super(key: key);

  @override
  State<EntradaCheckbox> createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {

  bool _comidaBR = false;
  bool _comidaMX = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: [
            CheckboxListTile(
              value: _comidaBR,
              onChanged: (bool? valor){
              setState(() {
                _comidaBR = valor!;
              });
            },
              title: Text("Comida BR"),
              subtitle: Text("Teste subtitle"),
            ),
            CheckboxListTile(
              value: _comidaMX,
              onChanged: (bool? valor){
                setState(() {
                  _comidaMX = valor!;
                });
              },
              title: Text("Comida MX"),
              subtitle: Text("Teste subtitle"),
              //secondary: Icon(Icons.add_a_photo),
            )
            /*
            Text("Comida Brasileira"),
            Checkbox(value: _valor, onChanged: (bool? valor){
              setState(() {
                _valor = valor!;
              });
            },
            )*/
          ],
        ),
      ),
    );
  }
}
