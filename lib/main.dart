import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Shopping',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        backgroundColor: Colors.red,
        title: Text("Shops"),
        actions: <Widget>[IconButton(onPressed: () {}, icon: Icon(Icons.shop))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Featured Products',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ProductCard(
              productName: 'Product 1',
              productPrice: 'Rp20.000',
              productImage:
                  'assets/images/b.png', // Ganti dengan path gambar sesuai proyek Anda
            ),
            ProductCard(
              productName: 'Product 2',
              productPrice: 'Rp30.000',
              productImage:
                  'assets/images/a.png', // Ganti dengan path gambar sesuai proyek Anda
            ),
            // Tambahkan lebih banyak widget ProductCard untuk produk tambahan
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String productImage;

  ProductCard({
    required this.productName,
    required this.productPrice,
    required this.productImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              productImage,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8),
            Text(
              productName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Price: $productPrice',
              style: TextStyle(fontSize: 16, color: Colors.green),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                // Tambahkan fungsionalitas untuk menambahkan produk ke keranjang
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
