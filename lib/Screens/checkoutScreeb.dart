import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:hack2023/email/send_email.dart';
import 'package:hack2023/provider/billing_class.dart';
import 'package:quantity_input/quantity_input.dart';
import 'package:intl/intl.dart';
import 'dart:math';
import '../provider/placeModel.dart';
import '../provider/place_class.dart';

class CardScreen extends StatefulWidget {
  static const routeName = "/checkoutScreen";

  @override
  State<CardScreen> createState() => _CardScreenState();
}

int _icitzenQuantity = 0;
int _icitzenAmt = 0;
int total = 0;
int randid = 10 + Random().nextInt((99 + 1) - 10);


class _CardScreenState extends State<CardScreen> {
  var email = TextEditingController();
  var name = TextEditingController();
  final databaseRef = FirebaseDatabase.instance.ref('Bookings');
  String formatted_date ="";
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as newplace;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Checkout",
            style: TextStyle(fontFamily: "Montserrat",color: Colors.white),
          ),
          backgroundColor: Color(0xff4E2958),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30 , right: 30 , top: 20 , bottom: 15),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Entry Ticket",
                                style: TextStyle(
                                    fontFamily: "Montserrat", fontSize: 19),
                              ),
                              Text(
                                "\u{20B9}${args.cost}",
                                style: TextStyle(
                                    fontFamily: "Montserrat", fontSize: 15),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 120,
                                height: 40,
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: QuantityInput(
                                      minValue: 0,
                                      acceptsZero: true,
                                      buttonColor: Color(0xff4E2958),
                                      value: _icitzenQuantity,
                                      onChanged: (value) => setState(() {
                                        _icitzenQuantity = int.parse(
                                            value.replaceAll(',', ''));
                                        _icitzenAmt = _icitzenQuantity *
                                            int.parse(args.cost);
                                        total = _icitzenAmt;
                                      })),
                                ),
                              ),
                              Text(
                                "\u{20B9}${_icitzenAmt}",
                                style: TextStyle(
                                    fontFamily: "Montserrat", fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Divider(color: Colors.black),


                    ],
                  ),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width-30,
                height: 270,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15,),
                        Text(" Enter details to receive tickets !",style:
                        TextStyle(fontFamily: "Montserrat", fontSize: 17)),
                        SizedBox(height: 15,),
                        Container(
                          width: 280,
                          child: TextField(
                            controller: name,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.perm_identity),

                                hintText: "Name",
                                labelText: "Name",
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11),
                                  borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 2
                                  ),

                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Color(0xff4E2958),
                                        width: 2
                                    )

                                )
                            ),

                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          width: 280,
                          child: TextField(
                            controller: email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email),

                                hintText: "Email Address",
                                labelText: "Email Address",
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(11),
                                  borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 2
                                  ),

                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Color(0xff4E2958),
                                        width: 2
                                    )

                                )
                            ),

                          ),
                        ),
                        SizedBox(height: 15,),
                        Row(

                          children: [
                            SizedBox(width: 5,),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff4E2958)),
                                onPressed: () async
                                {
                                  DateTime? t = await showDatePicker(context: context,
                                      firstDate: DateTime.now(),
                                      initialDate: DateTime.now(),  lastDate: DateTime(2030));
                                  setState(() {
                                    formatted_date = DateFormat.yMMMd().format(t!);
                                  });

                                }
                                , child: Text('Date')),
                            SizedBox(width: 10,),
                            Text("$formatted_date",),
                            SizedBox(width: 10,),


                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 255,),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                color: Color(0xff4E2958),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("\u{20B9} $total" , style: TextStyle(color: Colors.white, fontFamily: "Montserrat", fontSize: 17)),
                        SizedBox(height: 10,),
                        Text('TOTAL' , style: TextStyle(color: Colors.white, fontFamily: "Montserrat", fontSize: 15)),
                      ],
                    ),
                    TextButton(onPressed: (){
                      databaseRef.child(randid.toString()).set({
                        "name": name.text,
                        "email":email.text,
                        "qty":_icitzenQuantity,
                        "cost":_icitzenAmt,
                        "title":args.title,
                        "amt":_icitzenAmt * _icitzenQuantity,
                        "id":randid,
                        "date":formatted_date,
                      });
                        MailFeedback(
                          title: args.title,
                          amt: _icitzenAmt * _icitzenQuantity,
                          qty: _icitzenQuantity,
                          cost: _icitzenAmt,
                          id: randid,
                          to_name: name.text,
                          to_mail: email.text,
                          date:formatted_date,
                        );

                      Navigator.pushNamed(context, "/PaymentScreen" , arguments: total);
                    }, child:  Text('PAY SECURELY >' , style: TextStyle(color: Colors.white, fontFamily: "Montserrat", fontSize: 18)),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}