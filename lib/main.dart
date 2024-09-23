import 'package:flutter/material.dart';
import 'package:aplicativolddm/LoginMethods.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int cont = 0;

  void incrementar() {
    setState(() {
      cont++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('DonApp',
                  style: TextStyle(fontSize: 30, color: Colors.white)),
              backgroundColor: Color.fromARGB(255, 2, 54, 97),
            ),
            body: _body(),
            bottomNavigationBar: BottomAppBar(
              color: Color.fromARGB(255, 2, 54, 97),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Suponha',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    'Por',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Text(
                    'Absurdo',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            )));
  }
}

_botao(cont, incrementar) {
  return Center(
      child: ElevatedButton(
          onPressed: () => {incrementar()}, child: Text(cont.toString())));
}

_body() {
  return Loginmethods();
}
