import 'package:flutter/material.dart';
import 'package:payment_flutter/paymob_paymet/paymob_mannger.dart';
import 'package:url_launcher/url_launcher.dart';

class PaymobHomeScreen extends StatelessWidget {
  const PaymobHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text('paymob',
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
            _pay();
          }, child: const Text("pay 100 pOUND" ,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.normal
          ),),),
      )
    );
  }

   Future<void> _pay() async{
    PaymobManager().getPaymentKey(
      10,"EGP"
    ).then((String paymentKey) {
      launchUrl(
        Uri.parse("https://accept.paymob.com/api/acceptance/iframes/916424?payment_token=$paymentKey"),
      );
    });
    
  } 
}