import 'package:flutter/material.dart';
import 'package:test_flutter/screens/datos.dart';
import 'package:test_flutter/screens/paginaDos.dart';
import 'package:test_flutter/screens/paginaTres.dart';
import 'package:test_flutter/screens/TestStack.dart';
import 'package:test_flutter/screens/paginaForm.dart';
import 'package:test_flutter/screens/payment.dart';


void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/segundo': (context) => const PaginaDos(),
        '/tercero': (context) => const PaginaTres(),
        '/datos': (context) => const Datos(),
        '/testSatck': (context) => const TestStack(),
        '/formulario': (context) => const PaginaForm(),
        '/pago':(context) => const Payment()
      }
      //home: HomePage(),
      ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Color.fromARGB(255, 7, 238, 45),
        centerTitle: true,
        title: const Text('Pagina inicial'),
        elevation: 20.0,
        shadowColor: Color.fromARGB(255, 228, 6, 161),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: () => {})
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/img/jocho.jpg", width: 370.0),
            const SizedBox(height: 20.0),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 170, 128, 128)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 15))),
                child: const Text('Segunda Pantalla'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const PaginaDos(),
                  );
                  Navigator.pushNamed(context, '/segundo');
                }),
            const SizedBox(height: 10.0),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 170, 128, 128)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 15))),
                child: const Text('Tercera Pantalla'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const PaginaTres(),
                  );
                  Navigator.pushNamed(context, '/tercero');
                }),
            const SizedBox(height: 10.0),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 170, 128, 128)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 15))),
                child: const Text('Pantalla Datos'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const TestStack(),
                  );
                  Navigator.pushNamed(context, '/testSatck');
                }),
            const SizedBox(height: 10.0),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 170, 128, 128)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                ),
                child: const Text('Datos'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const Datos(),
                  );
                  Navigator.pushNamed(context, '/datos');
                }),
            const SizedBox(height: 10.0),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 170, 128, 128)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                ),
                child: const Text('Datos Contar'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const Datos(),
                  );
                  Navigator.pushNamed(context, '/formulario');
                }),
            const SizedBox(height: 10.0),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 170, 128, 128)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                ),
                child: const Text('Payment'),
                onPressed: () {
                  final route = MaterialPageRoute(
                    builder: (context) => const Payment(),
                  );
                  Navigator.pushNamed(context, '/pago');
                })
          ],
        ),
      ),
    );
  }
}