import 'package:flutter/material.dart';
import 'package:hack2023/Screens/homePageScreen.dart';
import 'package:hack2023/email/send_email.dart';
import 'package:hack2023/provider/billing_class.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'dart:async';

class PaymentScreen extends StatefulWidget {
  static const routeName = "/PaymentScreen";
  
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}
int x = 0;
class _PaymentScreenState extends State<PaymentScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey();
  late TextEditingController _amountController;
  late Razorpay _razorpay;

  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess(context));
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerErrorFailure);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  handlerPaymentSuccess(BuildContext context) {
    print("payment success");
    Navigator.pushNamed(context, '/TransactionScreen');

  }

  void handlerErrorFailure() {
    print("payment failed");
  }

  void handlerExternalWallet() {
    print("External Wallet");
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute
        .of(context)!
        .settings
        .arguments as int;

    int checkoutAmount = args;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4E2958),
        title: const Text("Payment Gateway", style: TextStyle(
            fontFamily: "Montserrat", color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

         Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 150,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Form(
                      key: _formkey,
                      child: Column(
                        children: [

                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Image.network(
                              "https://upload.wikimedia.org/wikipedia/en/thumb/8/89/Razorpay_logo.svg/1896px-Razorpay_logo.svg.png",),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                            ),
                            onPressed: () {
                              if (!_formkey.currentState!.validate()) {
                                return;
                              }
                              _formkey.currentState!.save();
                              var options = {
                                "key": "rzp_test_PRmiY4zIB51ehT",
                                "amount": checkoutAmount * 100,

                                "name": "BharatDekho",
                                "description": "payment for booking tickets",
                                "prefill": {
                                  "contact": "7904435022",
                                  "email": "mvel1620r@gmail.com"
                                },
                                "external": {
                                  "wallets": ["paytm"]
                                },
                              };
                              try {
                                _razorpay.open(options);
                              } catch (e) {
                                print(e.toString());
                              }


// Go to Page2 after 5s.
                              Timer(Duration(seconds: 5), () {
                                Navigator.pushNamed(context, "/TransactionScreen");
                              });

                            },
                            child: const Text("Pay Using Razorpay",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 19,
                                  color: Colors.white),),
                          )
                        ],
                      )),
                ),
              ),
            ) ,
          ],
        ),
      ),
    );
  }
}

