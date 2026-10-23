import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/models.dart';
import 'package:flutter_application_3/widgets/widgets.dart';


List<Item> cartedList = [];
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    int totalAmount = 0;
    for (var item in cartedList) {
      int qty = item.qty;
      totalAmount += (item.price * qty);
    }


    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.amber, Colors.orange, Colors.red],begin: AlignmentGeometry.topCenter, end: AlignmentGeometry.bottomEnd)
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartedList.length,
                 
              itemBuilder: (context, i) {
                final carted_item = cartedList[i];
              return CartCard(title: carted_item.title, link: carted_item.img, price: carted_item.price, qty: carted_item.qty,);
              
            
            }),
          ),
           Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.black26,
              border: Border(
                top: BorderSide(color: Colors.white30, width: 1),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total Amount:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "₹$totalAmount",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),

    );
  }
}