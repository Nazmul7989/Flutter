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
      color: Colors.teal,
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: Icon(Icons.add),
        onPressed: (){
          MySnackBar('I am floating action button', context);
        },
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   backgroundColor: Colors.teal,
      //   label: Text('Save'),
      //   icon: Icon(Icons.add),
      //   onPressed: (){
      //     MySnackBar('I am floating action button', context);
      //   },
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Carts'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        ],
        onTap: (int index){
          if(index == 0){
            MySnackBar('Bottom Home menu', context);
          }
          if(index == 1){
            MySnackBar('Bottom Carts menu', context);
          }
          if(index == 2){
            MySnackBar('Bottom Profile menu', context);
          }
        },
        currentIndex: 0,
        backgroundColor: Colors.teal,
        selectedItemColor: Colors.white,
        iconSize: 30,
        elevation: 0,
      ),
    );
  }

}