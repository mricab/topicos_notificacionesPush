import 'package:flutter/material.dart';
import 'package:pushing/src/providers/push_notifications_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String msgRecibido = "(Vacío)";
  int counter = 0;

  @override
  void initState() {
    super.initState();
    final pushProvider = new PushNotificationProvider();
    pushProvider.initNotifications();
    pushProvider.msg.listen((arg) {
      print('Argumentos de la Notificacion');
      print(arg);
      msgRecibido = arg;
      counter++;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pushing',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pushing'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Contenido del Mensaje Recibido'),
              Text(msgRecibido),
              SizedBox(
                height: 16,
              ),
              Text('Numero de Mensajes Recibidos:'),
              Text(counter.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
