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
      home: const ProfileView(),
    );
  }
}

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  Widget formSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 15),
                child: TextFormField(
                  initialValue: 'Tus nombres',
                  decoration: const InputDecoration(
                    labelText: 'Nombres',
                    errorText: 'Campo obligatorio',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.error,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 15),
                child: TextFormField(
                  initialValue: 'Tus apellidos',
                  decoration: const InputDecoration(
                    labelText: 'Apellidos',
                    errorText: 'Campo obligatorio',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.error,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );

  void profileView() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Profile data'),
            ),
            // body: ListView(children: divided),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text('Datos del usuario',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                formSection
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile data'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text('Datos del usuario',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          formSection
        ],
      ),
    );
  }
}