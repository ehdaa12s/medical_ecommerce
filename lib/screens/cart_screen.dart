import 'package:flutter/material.dart';
import 'package:medical_ecommerce/feauters/check_out/presentation/views/check_out.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
          style: TextStyle(
            color: Colors.black,
            fontSize:
                20, ) ),
      ),
      body: Center(
        child: TextButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CheckOutView(totalPrice: 0)),
          );
        }, child: Text("checkout")),
      ),



    );
  }
}
