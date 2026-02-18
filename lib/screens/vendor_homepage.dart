import 'package:flutter/material.dart';

class VendorHomePage extends StatelessWidget {
  const VendorHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vendor Home Page')),
      body: Center(
        child: Text('Welcome Vendor', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
