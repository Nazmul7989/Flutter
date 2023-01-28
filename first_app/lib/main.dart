import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'First Mobile App',
        color: Colors.teal,
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
        debugShowCheckedModeBanner: false,
        home: HomePage()
    );
  }

}

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('My App'),
       titleSpacing: 0,
       // titleTextStyle: ,
       centerTitle: true,
       elevation: 0,
       backgroundColor: Colors.teal,
       toolbarHeight: 60.0,
       toolbarOpacity: 1,
       // toolbarTextStyle: ,

     ),
     body: Text('This is my first App'),
     // drawer: (),
     // endDrawer: (),
     // floatingActionButton: ,
     // bottomNavigationBar: (),
   );
  }

}