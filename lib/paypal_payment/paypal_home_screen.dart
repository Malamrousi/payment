import 'package:flutter/material.dart';
import 'package:payment_flutter/paypal_payment/paypal_manger.dart';

class PaypalHomeScreen extends StatelessWidget {
  const PaypalHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
                PaypalManger paypalManger = PaypalManger();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text('PayPal',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple
          ),
          onPressed: (){
            paypalManger.payWidthPaypal(context);
          }, child: const Text("pay 100 pOUND" ,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.normal
          ),),),
      )
    );
  }
}