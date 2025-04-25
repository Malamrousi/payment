import 'package:flutter/material.dart';
import 'package:payment_flutter/stripe_payment/payment_manger.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            PaymentManger.makePayment(40, "EGP");
          }, child: Text("pay 40 pOUND")),
        ],
      )
    );
  }
}