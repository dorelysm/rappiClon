import 'package:flutter/material.dart';
import 'userProfile.dart';
import 'restaurantes.dart';

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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    Widget addressSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          /*1*/
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Icon(
              Icons.location_on_rounded,
              color: Colors.red[500],
            ),
          ]),
          Expanded(
            /*3*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/

                Container(
                  padding: const EdgeInsets.only(top: 5),
                  child: const Text(
                    'Calle 00 #11 - 22 Apto 123',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    void _profileView() {
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (context) {
            return ProfileView();
          },
        ),
      );
    }

    void _restaurantsView() {
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (context) {
            return RestaurantsPage();
          },
        ),
      );
    }


    return Scaffold(
      key: _scaffoldKey,
      // appBar: AppBar(
      //   title: const Text('Welcome to Rappi clone'),
      // ),

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
          
          //Card(
          //  child: GridView.count(
          //    crossAxisCount: 2,
          //    scrollDirection: Axis.horizontal,
          //    children: const <Widget>[
          //      IconButton(onPressed: () {
          //          _showRestaurantesPage(context);
          //        }, icon: ImageIcon(AssetImage("assets/food.jpg"))),
          //      IconButton(onPressed: null, icon: ImageIcon(AssetImage("assets/food.jpg"))),
          //      IconButton(onPressed: null, icon: ImageIcon(AssetImage("assets/food.jpg"))),
          //      IconButton(onPressed: null, icon: ImageIcon(AssetImage("assets/food.jpg"))),
          //      IconButton(onPressed: null, icon: ImageIcon(AssetImage("assets/food.jpg"))),
          //      IconButton(onPressed: null, icon: ImageIcon(AssetImage("assets/food.jpg"))),
          //      IconButton(onPressed: null, icon: ImageIcon(AssetImage("assets/food.jpg"))),
          //      IconButton(onPressed: null, icon: ImageIcon(AssetImage("assets/food.jpg"))),
          //    ]
          //  )
          //),

          Card(
            child: Row(
              children: const <Widget>[
                Expanded(child: ElevatedButton(onPressed: null, child: Text('RappiPay'))),
                Expanded(child: ElevatedButton(onPressed: null, child: Text('CashBack'))),
              ]
            )
          ),

          Card(
            color: Colors.orange,
            child: Column(
              children: <Widget>[
                const Text("Supermercados"),
                //Agregar listView
                //ListView(
                //  children: const <Widget>[
                //    Card(
                //      child: Text('Supermercados')
                //    )
                //  ]
                //),
                ElevatedButton(
                  onPressed: () {
                    _showRestaurantesPage(context);
                  },
                  child: const Text('Ver todos los mercados')
                  )
              ]
              )
          )

        ]
      ),


    
    drawer: Drawer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Hola name',
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: _profileView,
                child: const Text('Datos de Perfil'),
              ),
            ],
          ),
        ),
      ),
      drawerEnableOpenDragGesture: false,
      floatingActionButton: FloatingActionButton(
        onPressed: _openDrawer,
        tooltip: 'Login menu',
        child: const Icon(Icons.menu),
      ), 

    );
  }


  void _showRestaurantesPage(BuildContext context) {
    final route = MaterialPageRoute(builder: (BuildContext context){
      return RestaurantsPage();
    });
    Navigator.of(context).push(route);
  }

}