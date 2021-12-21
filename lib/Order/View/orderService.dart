import 'package:beeb_shop/Home/View/homeService.dart';
import 'package:flutter/material.dart';

class OrderServicePage extends StatefulWidget {
  const OrderServicePage({Key? key}) : super(key: key);

  @override
  _OrderServicePageState createState() => _OrderServicePageState();
}

class _OrderServicePageState extends State<OrderServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarWidget(),
      appBar: AppBar(
        title: Text("Siparişlerim"),
      ),
      body: Container(
        child: Text("Siparişlerim"),
      ),
    );
  }
}
