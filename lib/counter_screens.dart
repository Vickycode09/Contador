import 'package:flutter/material.dart';

class CounterScreens extends StatefulWidget {
  const CounterScreens({super.key});

  @override
  State<CounterScreens> createState() => _CounterScreensState();
}

class _CounterScreensState extends State<CounterScreens> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Define contenudo de appBar
      appBar: AppBar(
        title: Center(child: const Text("Pantalla de contador")),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
            icon: Icon(Icons.refresh_rounded),
          ),
        ],
      ),

      body: Center(
        child: Column(
          // Propiedad de la columna para centrar el texto de pantalla
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$clickCounter",
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Click${clickCounter == 1 ? "" : "s"}",
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            //boton para decrementar el contador sin permitir negativos
            shape: const StadiumBorder(),
            onPressed: () {
              if (clickCounter > 0) {
                setState(() {
                  clickCounter--;
                });
              }
            },
            child: const Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(height: 15), // Espacio entre los botones
          FloatingActionButton(
            //boton para incrementar el contador
            shape: const StadiumBorder(),
            onPressed: () {
              setState(() {
                clickCounter++;
              });
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
