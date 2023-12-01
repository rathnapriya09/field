import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var formkey = GlobalKey<FormState>();

  var name = TextEditingController();
  var pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'enter the value';
                    }
                  },
                  decoration: InputDecoration(hintText: 'name'),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'enter the password';
                    }
                  },
                  decoration: InputDecoration(hintText: 'password'),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {}
                    },
                    child: Text('Login'))
              ],
            ),
          ),
        ));
  }
}
