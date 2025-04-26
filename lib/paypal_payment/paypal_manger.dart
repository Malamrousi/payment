import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:payment_flutter/paypal_payment/paypal_key.dart';

class PaypalManger {
   Future<void> payWidthPaypal(BuildContext context) async {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => PaypalCheckoutView(
        sandboxMode: true,
        clientId: PaypalKey.paypalClientID,
        secretKey: PaypalKey.paypalSecret,
        transactions: const [
          {
            "amount": {
              "total": '10',
              "currency": "USD",
              "details": {
                "subtotal": '70',
                "shipping": '0',
                "shipping_discount": 0
              }
            },
            "description": "The payment transaction description.",
            // "payment_options": {
            //   "allowed_payment_method":
            //       "INSTANT_FUNDING_SOURCE"
            // },
            "item_list": {
              "items": [
                {
                  "name": "Apple",
                  "quantity": 4,
                  "price": '5',
                  "currency": "USD"
                },
                {
                  "name": "Pineapple",
                  "quantity": 5,
                  "price": '10',
                  "currency": "USD"
                }
              ],

              // shipping address is not required though
              //   "shipping_address": {
              //     "recipient_name": "tharwat",
              //     "line1": "Alexandria",
              //     "line2": "",
              //     "city": "Alexandria",
              //     "country_code": "EG",
              //     "postal_code": "21505",
              //     "phone": "+00000000",
              //     "state": "Alexandria"
              //  },
            }
          }
        ],
        note: "Contact us for any questions on your order.",
        onSuccess: (Map params) async {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Payment Successfull'),
            ),
          );
        },
        onError: (error) {
          Navigator.pop(context);
          log(" ❌❌❌❌❌❌ $error  ❌❌❌❌❌❌");
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Payment Error'),
            ),
          );
        },
        onCancel: () {
          Navigator.pop(context);
          //  Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Payment Close  '),
            ),
          );
        },
      ),
    ));
  }
}
