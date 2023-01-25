
import 'package:flutter/material.dart';
import 'package:hack2023/provider/place_class.dart';


List<String> timings = ["9:00 AM to 5:00 PM" , "9:00 AM to 5:00 PM" ,"9:00 AM to 5:00 PM" ,"9:00 AM to 5:00 PM" ,"9:00 AM to 5:00 PM" ,"9:00 AM to 5:00 PM" ,"9:00 AM to 5:00 PM"  ];

class PlaceDetailScreen extends StatelessWidget {
  static const routeName = "/PlaceDetailScreen";

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as newplace;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            // it is a container for all screen used to size the below stack
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [

                // 1st child : image
                Container(
                    height: MediaQuery.of(context).size.height / 3 + 20,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      args.imageUrl,
                      fit: BoxFit.fill,
                    )),

                // 2nd child  : back icon
                Positioned(
                  // top left back icon
                  top: 10,
                  left: 10,
                  child: IconButton(
                    icon: CircleAvatar(
                        backgroundColor: Colors.black.withOpacity(0.6),
                        radius: 50,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),

                // 3rd item bottom white sheet as container & price list as child
                Positioned(
                  top: MediaQuery.of(context).size.height / 3 - 30,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Color(0xffF0F8FF),
                      borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(50)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            // all info about place here
                            height: 135,
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 365,
                            // margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 15,),
                                    Text(" Overview",style:
                                    TextStyle(fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20)),
                                    SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, right: 10),
                                      child: Text(args.description, style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 14,
                                      ),),
                                    ),
                                    SizedBox(height: 6,),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal:50),
                                      child: Divider(color: Colors.black,thickness: 1),
                                    ),
                                  Text(" Timings",style:
                                TextStyle(fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20)),
                                    SizedBox(height: 10,),
                                    Timing_Widget(timings),
                                    SizedBox(height: 6,),


                                  ],
                                ),
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                ),

                // for box image may be map + place info title , locality , rating
                Positioned(
                  top: MediaQuery.of(context).size.height / 3 - 60,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 3 - 20,
                          height: MediaQuery.of(context).size.height / 6 + 20,
                          decoration: BoxDecoration(
                              color: args.bgcolor=="1" ? Color(0xffFFF0EB) : Color(0xffEBF6FF) ,
                              borderRadius: BorderRadius.circular(20)),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
// YAHA KA KAAM BAKI HAI
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  "https://www.google.com/maps/d/thumbnail?mid=1_1HSIp0ZildS0TGMjp7CBju3spk",

                                  fit: BoxFit.fill,
                                ),
                              ),

                            ],
                          ),
                        ),
                        // colored box

                        SizedBox(
                          width: 20,
                        ),

                        // place info title , locality , rating
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              args.title,
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              args.locality,
                              style: TextStyle(
                                  color: Colors.black, fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              args.city,
                              style: TextStyle(
                                  color: Colors.black, fontFamily: "Montserrat",fontWeight: FontWeight.w500,),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Color(0xffFF8573),
                                ),
                                SizedBox(
                                  width: 5,
                                ),Text(
                                  '4.7',
                                  style: TextStyle(
                                      color: Color(0xffFF8573),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Montserrat"),
                                ),

                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '(56)',
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                Positioned(
                  bottom:0,
                  child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  color: Color(0xff4E2958),
                  child: TextButton(onPressed: (){
                    Navigator.pushNamed(context, "/checkoutScreen", arguments: args);
                  },
                    child:
                  Text('BOOK NOW >' , style: TextStyle(color: Colors.white, fontFamily: "Montserrat", fontSize: 18)),),


                ),)

              ],
            ),
          ),
        ),
      ),
    );
  }
}

// to show timings
List days = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
class Timing_Widget extends StatelessWidget {
  late List<String> timings;
  Timing_Widget( this.timings);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 55),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Textshow(days[0],timings[0]),
          SizedBox(height: 2,),
          Textshow(days[1],timings[1]),
          SizedBox(height: 2,),
          Textshow(days[2],timings[2]),
          SizedBox(height: 2,),
          Textshow(days[3],timings[3]),
          SizedBox(height: 2,),
          Textshow(days[4],timings[4]),
          SizedBox(height: 2,),
          Textshow(days[5],timings[5]),
          SizedBox(height: 2,),
          Textshow(days[6],timings[6]),
        ],
      ),
    );
  }
}
class Textshow extends StatelessWidget {
  String a;
  String b;
  Textshow(this.a,this.b);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("$a ",style: TextStyle(fontFamily: "Montserrat", fontWeight: FontWeight.w500),),
        Text('$b',style: TextStyle(fontFamily: "Montserrat",  ),)
      ],
    );
  }
}

