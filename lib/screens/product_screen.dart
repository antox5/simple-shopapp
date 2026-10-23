import 'package:flutter/material.dart';
import 'package:flutter_application_3/jsondata.dart';
import 'package:flutter_application_3/main.dart';
import 'package:flutter_application_3/widgets/widgets.dart';


class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            
            gradient: LinearGradient(colors: [
              Colors.amber,Colors.orange, Colors.red
            ],begin: AlignmentGeometry.topCenter, end: AlignmentGeometry.bottomEnd
            )
          ) ,
          child: SizedBox.expand(
            child: ListView.builder(
            itemCount: productList.length ,
              padding: EdgeInsets.all(8),
              itemBuilder: (BuildContext context, int index) {
                final item = productList[index];
                return ItemCard(title:item.title , imgLink: item.img, inStock: item.inStock, price: item.price, qty: item.qty,);
                     
              }
            
                ,),
          ),
        );
  }
}