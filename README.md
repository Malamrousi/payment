Payment Gateway Testing Project
A simple Flutter project created to test and experiment with three payment gateways: Stripe, PayPal, and Paymob. This is a minimal, backend-focused practice project without a user interface, designed solely for learning and testing payment integrations.
Table of Contents

Project Overview
Features
Technologies Used
Setup and Installation
Payment Gateway Testing
Usage
Contributing

Project Overview
This project is a personal training exercise to understand the integration of Stripe, PayPal, and Paymob payment gateways using Flutter. It focuses on backend logic and API calls, with no UI components, to test payment flows in a sandbox environment.
Features

Stripe Testing: Processes card payments using Stripe's Flutter SDK in test mode.
PayPal Testing: Handles PayPal payments via API calls in sandbox mode.
Paymob Testing: Tests regional payment methods using Paymob's API.
Minimal Codebase: Lightweight structure focused on payment logic.
Error Handling: Basic handling for payment failures and network issues.

Technologies Used

Flutter: Framework for building the app.
Dart: Programming language for Flutter.
Stripe SDK: For card payment testing.
PayPal API: For PayPal payment testing.
Paymob API: For regional payment method testing.
Git: For version control.

Setup and Installation
To set up the project locally:

Clone the Repository:
git clone https://github.com/Malamrousi/payment.git
cd your-repo-name


Install Dependencies:Ensure Flutter is installed, then run:
flutter pub get


Configure Payment Gateways:

Stripe: Get test API keys from Stripe Dashboard and add to lib/stripe_payment.
PayPal: Obtain sandbox credentials from PayPal Developer Portal and update lib/config/paypal_payment.
Paymob: Retrieve test API keys from Paymob Dashboard and configure in lib/config/paymob_paymet


Run the App:
flutter run



Payment Gateway Testing
The project includes separate modules for each payment gateway, focusing on API interactions:

Stripe:

Uses flutter_stripe for card payment testing.
Configured for test mode with Stripe's test cards.


PayPal:

Uses REST API calls for sandbox testing.
Supports payment initiation and confirmation.


Paymob:

Tests card and mobile wallet payments via Paymob's API.
Configured for sandbox mode.
