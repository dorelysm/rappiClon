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
}
