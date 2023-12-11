import 'package:flutter/material.dart';
class Product {
  final int id;
  final String name;
  final double price;

  Product({required this.id, required this.name, required this.price});
}

class ShoppingCart {
  final List<Product> items = [];
}

class bag extends StatelessWidget {
  final ShoppingCart shoppingCart = ShoppingCart();
  final List<Product> products = [
    Product(id: 1, name: 'Product 1', price: 10.0),
    Product(id: 2, name: 'Product 2', price: 20.0),
    Product(id: 3, name: 'Product 3', price: 30.0),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shopping Cart Example'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ListTile(
                    title: Text(product.name),
                    subtitle: Text('\$${product.price}'),
                    trailing: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        // Add the selected product to the shopping cart
                        shoppingCart.items.add(product);
                        // You may want to update the UI or show a confirmation
                      },
                    ),
                  );
                },
              ),
            ),
            Divider(),
            Text(
              'Shopping Cart',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: shoppingCart.items.length,
                itemBuilder: (context, index) {
                  final item = shoppingCart.items[index];
                  return ListTile(
                    title: Text(item.name),
                    subtitle: Text('\$${item.price}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}