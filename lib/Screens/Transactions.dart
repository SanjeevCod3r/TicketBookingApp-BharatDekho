import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  static const routeName = "/TransactionScreen";

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;
    final ref = FirebaseDatabase.instance.ref('Bookings');

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Transactions",
            style: TextStyle(fontFamily: "Montserrat", color: Colors.white),
          ),
          backgroundColor: Color(0xff4E2958),
        ),
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color(0xffebe8e2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: FirebaseAnimatedList(
                      query: ref,
                      itemBuilder: (context, snapshot, animation, index) {
                        return TransactionItem(
                          title: snapshot.child('title').value.toString(),
                          id: snapshot.child('id').value.toString(),
                          date: snapshot.child('date').value.toString(),
                          cost: snapshot.child('cost').value.toString(),
                          qty: snapshot.child('qty').value.toString(),
                          amt: snapshot.child('amt').value.toString(),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  late String title;
  late String date;
  late String cost;
  late String qty;
  late String id;
  late String amt;
  TransactionItem({
    required this.title,
    required this.date,
    required this.cost,
    required this.qty,
    required this.id,
    required this.amt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: MediaQuery.of(context).size.width - 20,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Card(
          elevation: 7,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("#$id",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Montserrat",
                            color: Colors.red,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(title,
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text('$qty * \u{20B9}$cost  = ',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500)),
                        Text('\u{20B9}$amt',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                Row(
                         children: [
                          Text("Date: " ,style : TextStyle(fontSize: 16 ,fontFamily: "Montserrat",fontWeight: FontWeight.w700)),
                            SizedBox(width: 10,),
                            Text("$date",style : TextStyle(fontSize: 16 ,fontFamily: "Montserrat",fontWeight: FontWeight.w500))
                      ],
                        )
                  ],
                ),
              ),
              Container(
                  height: 100,
                  width: 120,
                  child: Image.network(
                      "https://st2.depositphotos.com/27186674/45711/v/600/depositphotos_457117280-stock-illustration-booked-rubber-stamp-booked-rubber.jpg")),
            ],
          )

          //
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 10),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Row(children: [
          //         Column(
          //           children: [
          //             Text("#$id", style: TextStyle(fontSize: 20 ,fontFamily: "Montserrat",color:Colors.red,fontWeight: FontWeight.w700)),
          //             Text(title, style: TextStyle(fontSize: 20 ,fontFamily: "Montserrat",fontWeight: FontWeight.w700)),
          //
          //           ],
          //         ),
          //         Container(
          //           height: 30,
          //             width: 50,
          //
          //       ],),
          //
          //
          //
          //       SizedBox(height: 7,),
          //       Row(
          //         children: [
          //           SizedBox(width: 15,),
          //           Text("Date: " ,style : TextStyle(fontSize: 16 ,fontFamily: "Montserrat",fontWeight: FontWeight.w700)),
          //           SizedBox(width: 10,),
          //           Text("$date",style : TextStyle(fontSize: 16 ,fontFamily: "Montserrat",fontWeight: FontWeight.w500))
          //         ],
          //       )
          //     ],
          //   ),
          // )
          ),
    );
  }
}
