
import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/models.dart';
import 'package:flutter_application_3/screens/cart_screen.dart';

class ItemCard extends StatefulWidget {
  
   ItemCard({super.key,required this.title, required this.imgLink,required this.inStock, required this.price, required this.qty});
   String title;
   String imgLink;
   bool inStock;
   int price;
   int qty = 0;
    


  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {

  void incCounter() {
    if (!widget.inStock) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('This product is out of stock'),
          duration: Duration(seconds: 1),
        ),
      );
      return;
    }
    setState(() {
          widget.qty++;

    });

  }

  void decCounter() {
    if (!widget.inStock) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('This product is out of stock'),
          duration: Duration(seconds: 1),
        ),
      );
      return;
    }
    setState(() {
       if (widget.qty > 0){
        widget.qty--;

       } 

    });
    if (widget.qty <= 0) {
      ScaffoldMessenger.of(context).showMaterialBanner( MaterialBanner(content: Text('Cant decrement further..'), actions:[

        TextButton(
          onPressed: (){
          ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
        },
         child: Text('OK'))
      ],backgroundColor: Colors.redAccent, ));
    }
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      
      child: GestureDetector(
        onTap: () {
          if(widget.inStock) {
          showDialog(context: context, builder: (context) {
            return Dialog(
              child: Container(
                child:
                    ElevatedButton(onPressed: () {
                      setState(() {
                        cartedList.add(Item(title: widget.title, img: widget.imgLink, inStock: widget.inStock, price: widget.price, qty: widget.qty));
                      });

                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${widget.title} added to cart!')),
    );

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,

                    ),
                     child: Text('Add ${widget.title} to Cart',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                      ), 
                      autofocus: true,
                      
                      )
                
              ),
            );

          });
        }},
        child: Card(
          
          
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 2,
          
          color: Colors.white,
          child: ListTile(
            subtitle:widget.inStock ? Text('₹${widget.price} | In Stock',style:TextStyle(color: Colors.green, fontWeight: FontWeight.bold) ,):Text('Out of Stock',style:TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
            leading: SizedBox(
          width: 60,
          height: 60,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
        widget.imgLink,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image),
            ),
          ),
        ),
            title: Text(widget.title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)) ,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                FloatingActionButton.small(onPressed: incCounter,child: Icon(Icons.arrow_upward_rounded,color: Colors.white,),elevation: 0,backgroundColor:widget.inStock? Colors.blue:Colors.grey,),
                SizedBox(width: 30,child: Center(child: Text('${widget.qty}',style: TextStyle(fontWeight: FontWeight.bold),)),),
                FloatingActionButton.small(onPressed: decCounter,child: Icon(Icons.arrow_downward_rounded,color: Colors.white,),elevation: 0,backgroundColor:widget.inStock? Colors.red: Colors.grey,),
                    
              ],
            ) ,
            
        
          ),
        ),
      ),
    );
  }
}

class CartCard extends StatefulWidget {
   CartCard({super.key, required this.title, required this.link, required this.price, required this.qty});
   String title;
   int qty;
   String link; 
   int price;
   

  @override
  State<CartCard> createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card.filled(
        color: Colors.orangeAccent.shade100,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(widget.link, width: 50, height: 50, fit: BoxFit.cover),
        ),
          title: Text(widget.title) ,
          subtitle:Text("₹${widget.price} | Qty: ${widget.qty}") ,
          titleTextStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black) ,
          trailing:Text('₹${widget.price*widget.qty}',style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),) ,
          isThreeLine: false,
          
          
      
      
        ),
      ),
    );
  }
}