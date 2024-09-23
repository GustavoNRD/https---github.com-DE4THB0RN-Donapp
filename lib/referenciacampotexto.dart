import 'package:flutter/material.dart';

class Campotexto extends StatefulWidget {
  const Campotexto({super.key});

  @override
  State<Campotexto> createState() => _CampotextoState();
}

class _CampotextoState extends State<Campotexto> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(labelText: 'Insira texto aqui'),
            style: TextStyle(fontSize: 20, color: Colors.white),
            maxLength: 20,
            enabled: true,
            keyboardType: TextInputType.text,
            controller: _controller,
            //onChanged: (value) => {print(value)},
          ),
        ),
        ElevatedButton(
          onPressed: () => {print(_controller.text)},
          child: Text('Enviar'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(230, 192, 192, 192),
          ),
        )
      ],
    );
  }
}
