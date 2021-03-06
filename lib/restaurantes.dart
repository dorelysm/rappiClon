//import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rappi clon',
      home: RestaurantsPage());
  }
}

class RestaurantsPage extends StatefulWidget {
  RestaurantsPage({Key? key}) : super(key: key);

  @override
  State<RestaurantsPage> createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: <Widget>[
          Card(
            child: Row(
              children: const <Widget>[
                Icon(
                Icons.add_location,
                color: Colors.orange,
                ),
                TextButton(onPressed: null, child: Text('Dirección'))
              ]
              ),
          ),
          Card(
            child: Center(
              child: Row(
                children: const <Widget>[
                  Expanded(child: ElevatedButton(onPressed: null, child: Text('A domicilio'))),
                  Expanded(child: ElevatedButton(onPressed: null, child: Text('Para recoger'))),
              ]
            )
            )
          ),
          Card(
            child: Row(
              children: const <Widget>[
                //TextField(
                //  decoration: InputDecoration(
                //    labelText: '¿Qué quieres comer?'
                //  )),
                IconButton(onPressed: null, icon: Icon(Icons.search))
              ]
            )
          ),
          Card(
            child: Center(
              child: Row(
                children: const <Widget>[
                  IconButton(onPressed: null, icon: ImageIcon(AssetImage("assets/food.jpg"))),
                  IconButton(onPressed: null, icon: ImageIcon(AssetImage("assets/food.jpg"))),
                  IconButton(onPressed: null, icon: ImageIcon(AssetImage("assets/food.jpg"))),
                  IconButton(onPressed: null, icon: ImageIcon(AssetImage("assets/food.jpg"))),
                  OutlinedButton(onPressed: null, child: Text('Ver todo')),
                ]
              )
            )
          ),
          Card(
            child: Row(
              children: const <Widget>[
                IconButton(onPressed: null, icon: Icon(Icons.abc))
              ]
            )
          ),
          const Card(
            child: Text('Recomendados para ti'),
          ),
          const Card(
            child: Divider(
              height: 5,
              thickness: 1,
              color: Colors.grey,
            )
          ),
          Card(
            child: Column(
              children: <Widget>[
                Row( 
                  children: <Widget>[
                    Image.asset("assets/french-restaurant.jpg", height: 150),
                    Row(
                      children: <Widget>[
                        const TextButton(onPressed: null, child: Text('Restaurante 1')),
                        const Text('Tipo de restaurante'),
                        Row(
                          children: const <Widget>[
                            Icon(Icons.schedule),
                            Text('Tiempo')
                          ]
                        )
                      ]
                    )
                  ]
                ),
                Row( 
                  children: <Widget>[
                    Image.asset("assets/french-restaurant.jpg", height: 150),
                    Row(
                      children: <Widget>[
                        const TextButton(onPressed: null, child: Text('Restaurante 1')),
                        const Text('Tipo de restaurante'),
                        Row(
                          children: const <Widget>[
                            Icon(Icons.schedule),
                            Text('Tiempo')
                          ]
                        )
                      ]
                    )
                  ]
                ),
                Row( 
                  children: <Widget>[
                    Image.asset("assets/french-restaurant.jpg", height: 150),
                    Row(
                      children: <Widget>[
                        const TextButton(onPressed: null, child: Text('Restaurante 1')),
                        const Text('Tipo de restaurante'),
                        Row(
                          children: const <Widget>[
                            Icon(Icons.schedule),
                            Text('Tiempo')
                          ]
                        )
                      ]
                    )
                  ]
                ),
              ]
            )
          ),
          const Card(
            child: Text('Restaurantes cerrados'),
          ),
          const Card(
            child: Divider(
              height: 5,
              thickness: 1,
              color: Colors.grey,
            )
          ),
          Card(
            child: Column(
              children: <Widget>[
                Row( 
                  children: <Widget>[
                    Image.asset("assets/french-restaurant.jpg", height: 150),
                    Row(
                      children: <Widget>[
                        const TextButton(onPressed: null, child: Text('Restaurante 1')),
                        const Text('Tipo de restaurante'),
                        Row(
                          children: const <Widget>[
                            Icon(Icons.schedule),
                            Text('Tiempo')
                          ]
                        )
                      ]
                    )
                  ]
                ),
                Row( 
                  children: <Widget>[
                    Image.asset("assets/french-restaurant.jpg", height: 150),
                    Row(
                      children: <Widget>[
                        const TextButton(onPressed: null, child: Text('Restaurante 1')),
                        const Text('Tipo de restaurante'),
                        Row(
                          children: const <Widget>[
                            Icon(Icons.schedule),
                            Text('Tiempo')
                          ]
                        )
                      ]
                    )
                  ]
                ),
                Row( 
                  children: <Widget>[
                    Image.asset("assets/french-restaurant.jpg", height: 150),
                    Row(
                      children: <Widget>[
                        const TextButton(onPressed: null, child: Text('Restaurante 1')),
                        const Text('Tipo de restaurante'),
                        Row(
                          children: const <Widget>[
                            Icon(Icons.schedule),
                            Text('Tiempo')
                          ]
                        )
                      ]
                    )
                  ]
                ),
              ]
            )
          ), 

        ]
      ),

      
    );



  }
}