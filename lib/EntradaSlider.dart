import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({Key? key}) : super(key: key);

  @override
  State<EntradaSlider> createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double _valor = 5;
  String _label = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Slider(
              activeColor: Colors.red,
              label: _label,
                divisions: 10,
                value: _valor,
                min: 0,
                max: 10,
                onChanged: (double? novoValor) {
                  setState(() {
                    _valor = novoValor!;
                    _label = novoValor!.toString();
                  });
                }),
          )
        ],
      ),
    );
  }
}
