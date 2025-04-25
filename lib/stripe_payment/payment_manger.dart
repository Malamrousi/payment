import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_flutter/stripe_payment/api_key.dart';

class PaymentManger {
  static Future<void> makePayment(int amount, String currency) async {
    try {
      final clientSecret =
          await getClientSecretKey(currency: currency, amount: amount);

      await initPaymentSheet(clientSecret: clientSecret);

      await Stripe.instance.presentPaymentSheet();
    } catch (error) {
      throw Exception('Payment failed: $error');
    }
  }

  static Future<void> initPaymentSheet({required String clientSecret}) async {
    SetupPaymentSheetParameters paymentSheetParameters =
        SetupPaymentSheetParameters(
      paymentIntentClientSecret: clientSecret,
      merchantDisplayName: 'Your Merchant Name',    
    );
    await Stripe.instance
        .initPaymentSheet(paymentSheetParameters: paymentSheetParameters);
  }

  static Future<String> getClientSecretKey(
      {required String currency, required int amount}) async {
    Dio dio = Dio();

    var response = await dio.post('https://api.stripe.com/v1/payment_intents',
        options: Options(headers: {
          "Authorization": "Bearer ${ApiKey.secretkey}",
          "Content-Type": "application/x-www-form-urlencoded"
        }),
        data: {
          "amount": amount * 100, 
          "currency": currency
        });

    return response.data["client_secret"];
  }

}