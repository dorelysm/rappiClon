import 'package:flutter/material.dart';
import 'userProfile.dart';
import 'restaurantes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
<<<<<<< HEAD

=======
>>>>>>> df6c45f9afb246e3c714fae562736db8b25ecf9c
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
<<<<<<< HEAD
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
=======
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
>>>>>>> df6c45f9afb246e3c714fae562736db8b25ecf9c

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

<<<<<<< HEAD

    
    drawer: Drawer(
=======
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
      body: Center(
          child: Column(
        children: [
          addressSection,
          ElevatedButton(
              onPressed: _restaurantsView,
              child: const Text('Ver todos los restaurantes'))
        ],
      )),
      drawer: Drawer(
>>>>>>> df6c45f9afb246e3c714fae562736db8b25ecf9c
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
<<<<<<< HEAD
              TextButton.icon(
                label: const Text('Cerrar sesión'),
                icon: const Icon(Icons.exit_to_app),
                onPressed: () {}
                )
=======
>>>>>>> df6c45f9afb246e3c714fae562736db8b25ecf9c
            ],
          ),
        ),
      ),
<<<<<<< HEAD

      drawerEnableOpenDragGesture: false,

      floatingActionButton: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        children: <Widget>[
          Container(
            margin:const EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                _openDrawer();
              },
              child: Icon(Icons.menu),
              backgroundColor: Colors.white,
            ),
          ),
          Container(
            margin:const EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                
              },
              child: Icon(Icons.discount),
              backgroundColor: Colors.white,
            ),
          ),
          Container(
            margin:const EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                
              },
              child: Icon(Icons.contact_support),
              backgroundColor: Colors.white,
            ),
          ),
        ]
      ),

      
=======
      drawerEnableOpenDragGesture: false,
      floatingActionButton: FloatingActionButton(
        onPressed: _openDrawer,
        tooltip: 'Login menu',
        child: const Icon(Icons.menu),
      ),
>>>>>>> df6c45f9afb246e3c714fae562736db8b25ecf9c
    );
  }
}
