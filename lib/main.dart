import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/models.dart';
import 'package:flutter_application_3/screens/cart_screen.dart';
import 'package:flutter_application_3/screens/product_screen.dart';
import 'package:flutter_application_3/widgets/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'My Product Store',
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        useMaterial3: true,
        primaryColor: Colors.white
        
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

    
 
    


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
            Tab(icon: Icon(Icons.shopping_bag, color: Colors.white,),),
            Tab(icon: Icon(Icons.shopping_cart, color: Colors.white,),),
          ]),
          elevation:0 ,
          backgroundColor: Colors.amber,
          leading: Icon(Icons.add_shopping_cart, color: Colors.white,),
          title: Text('Product Store', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),
            
          centerTitle: true,
        ),
      
        body: TabBarView(
          children: [
           ProductScreen(),
           CartScreen()
            

        ]),
    ));
  }
}



// Widgets

