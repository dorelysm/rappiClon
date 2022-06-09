import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rappi clon',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //appBar: AppBar(),

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
            )
          ),
          Card(
            child: Row(
              children: const <Widget>[
                //TextField(
                //  decoration: InputDecoration(
                //    labelText: 'Buscar en Rappi'
                //  )
                //),
                IconButton(onPressed: null, icon: Icon(Icons.search)),
                IconButton(onPressed: null, icon: Icon(Icons.notifications))
              ]
            )
            
          ),
          Card(
            child: Row(
              children: const <Widget>[
                Expanded(child: Text('Secciones')),
                TextButton(onPressed: null, child: Text('Ver todos'))
              ]
            )
          ),
          const Card(
            child: Divider(
              height: 5,
              thickness: 1,
              color: Colors.grey,
            )
          ),
          
          const Card(
            //Agregar GridView
          ),

          Card(
            child: Row(
              children: const <Widget>[
                ElevatedButton(onPressed: null, child: Text('RappiPay')),
                ElevatedButton(onPressed: null, child: Text('CashBack')),
              ]
            )
          ),

          Card(
            color: Colors.orange,
            child: Column(
              children: const <Widget>[
                Text("Supermercados"),
                //Agregar listView
                //ListView(
                //  children: const <Widget>[
                //    Card(
                //      child: Text('Supermercados')
                //    )
                //  ]
                //),
                ElevatedButton(
                  onPressed: null,
                  child: Text('Ver todos los mercados')
                  )
              ]
              )
          )

        ]
      ),

    floatingActionButton: FloatingActionButton(
      child: const Icon(Icons.menu),
      onPressed: () {},
    ), 
    
    //drawer: Drawer(),
    );
  }


}