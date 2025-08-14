import 'package:flutter/material.dart';
import 'package:registrov1/api/core/api_client.dart';
// importa il tuo ApiClient

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ApiClient client = ApiClient();
  bool loading = true;
  String? error;

  @override
  void initState() {
    super.initState();
    _loginUser();
  }

  Future<void> _loginUser() async {
    try {
      await client.login('S9477262T', 'Rickardo@07');
      setState(() {
        loading = false;
      });
    } catch (e) {
      setState(() {
        loading = false;
        error = e.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Profilo Studente')),
        body: Center(
          child: loading
              ? CircularProgressIndicator()
              : error != null
              ? Text('Errore: $error')
              : Text(
                  '${client.user.firstName ?? ''} ${client.user.lastName ?? ''}',
                  style: TextStyle(fontSize: 24),
                ),
        ),
      ),
    );
  }
}
