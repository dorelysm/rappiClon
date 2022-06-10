import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rappi clon',
      home: canastaPage());
  }
}

class canastaPage extends StatefulWidget {
  canastaPage({Key? key}) : super(key: key);

  @override
  State<canastaPage> createState() => _canastaPageState();
}

class _canastaPageState extends State<canastaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: <Widget>[
          const Card(
            child: Center(child: Text('Tu canasta')),
          ),
          Card(
            child: Row(
              children: <Widget>[
                Image.asset("assets/french-restaurant.jpg"),
                Column(
                  children: const <Widget>[
                    Text('Nombre del restaurante'),
                    TextButton(onPressed: null, child: Text('Volver a la tienda'))
                  ]
                )
              ]
            ),
          ),
          const Card(child: Divider(
              height: 5,
              thickness: 1,
              color: Colors.grey,
            )
          ),
          const Card(
            //ListView.builder(itemBuilder: itemBuilder)
          ),
          const Card(child: Divider(
              height: 5,
              thickness: 1,
              color: Colors.grey,
            )
          ),
          const Card(child: Center(child: TextButton(onPressed: null, child: Text('Vaciar canasta')),))
        ]
      ),

      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Text('Ir a pagar'),
      ),

    );
  }
}