import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Second Flutter App',
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }

}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  MySnackBar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second App'),
        titleSpacing: 10,
        toolbarHeight: 65.0,
        backgroundColor: Colors.teal,
        elevation: 0,
        actions: [
            IconButton(onPressed: (){MySnackBar('Click on Search', context);}, icon: Icon(Icons.search)),
            IconButton(onPressed: (){MySnackBar('Click on Notification', context);}, icon: Icon(Icons.notifications)),
        ],
      ),
    );
  }

}