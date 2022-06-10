import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rappi clon',
      home: productoPage());
  }
}

class productoPage extends StatefulWidget {
  productoPage({Key? key}) : super(key: key);

  @override
  State<productoPage> createState() => _productoPageState();
}

class _productoPageState extends State<productoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: <Widget>[
          Card(
            child: Image.asset("assets/cake.jpg"),
          ),
          Card(
            child: Column(
              children: const <Widget>[
                Text('Nombre del producto'),
                Text('Descripción del producto'),
                Text('&Precio')
              ]
            )
          ),
        ]
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Cantidad',
            icon: Icon(Icons.abc)
          ),
          BottomNavigationBarItem(
            label: 'Agregar',
            icon: Icon(Icons.abc),
          ),
        ]
      ),

    );
  }
}