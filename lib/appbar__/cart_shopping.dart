import 'package:flutter/material.dart';
import 'package:flutter_application/appbar__/profile.dart';

class cart_Page extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<cart_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: buildCartItems(), // Add your cart items display here
      bottomSheet: buildBottomSheet(), // Add your checkout button or summary here
    );
  }

  Widget buildCartItems() {
    // Customize this method to display the items in the cart
    return ListView(
      children: [
        // Add your cart items widgets here
      ],
    );
  }

  Widget buildBottomSheet() {
    // Customize this method to build the bottom sheet (checkout button or summary)
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 10,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total: \$XXX', // Add the total price dynamically
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ElevatedButton.icon(
            onPressed: () {
              // Add your checkout logic here
            },
            icon: const Icon(Icons.payment, color: Colors.blueGrey),
            label: const Text(
              "Proceed to Checkout",
              style: TextStyle(color: Colors.blueGrey),
            ),
          ),
        ],
      ),
    );
  }
}

