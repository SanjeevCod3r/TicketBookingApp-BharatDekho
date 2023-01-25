import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:hack2023/Screens/PlaceDetailScreen.dart';
import 'package:hack2023/provider/place_class.dart';
import 'package:provider/provider.dart';

import '../provider/placeModel.dart';
import '../provider/placeProvier.dart';


class PlaceListScreen extends StatelessWidget {
  static const routeName = "/PlaceListScreen";
  const PlaceListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedCity = ModalRoute.of(context)!.settings.arguments as String;

    final auth = FirebaseAuth.instance;
    final ref = FirebaseDatabase.instance.ref('places');

    return Scaffold(
      backgroundColor: Color(0xff4E2958),
      body: SafeArea(child: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                IconButton(onPressed: (){Navigator.pushNamed(context, "/HomePage" , arguments: "demo@gmail.com");}, icon: Icon(Icons.arrow_back) ,color: Colors.white,),
                //IconButton(onPressed: (){}, icon: Icon(Icons.search) ,color: Colors.white,)
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: MediaQuery.of(context).size.height -136,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50))
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Text("  $selectedCity" , style:TextStyle(fontSize: 24,fontFamily: "Montserrat",fontWeight: FontWeight.w700)),
                  SizedBox(height: 10,),
                   Expanded(child: FirebaseAnimatedList(
                     query: ref,
                    itemBuilder: (context , snapshot , animation , index){
                       bool a = snapshot.child('city').value.toString()==selectedCity;
                      return a ? LocationWidget(
                        title: snapshot.child('title').value.toString(),
                        locality: snapshot.child('locality').value.toString(),
                        logourl: snapshot.child('logourl').value.toString(),
                        bgcolor: snapshot.child('logourl').value.toString(),
                        imageUrl:snapshot.child('imageurl').value.toString(),
                        city: snapshot.child('city').value.toString(),
                        description: snapshot.child('description').value.toString(),
                        cost: snapshot.child('fees').value.toString(),
                      ) : SizedBox();
                    }
                   ))
                ],
              ),
            ),
          ),
        ],
      )),



    );
  }
}


class LocationWidget extends StatelessWidget {
  late String bgcolor;
  late String logourl;
  late String title;
  late String locality;
  late String imageUrl;
  late String description;
  late String city;
  late String cost;
  LocationWidget({
    required this.bgcolor,
    required this.cost,
    required this.logourl,
    required this.title,
    required this.locality,
    required this.imageUrl,
    required this.description,
    required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 13 ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4 - 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgcolor=="1" ? Color(0xffFFF0EB) : Color(0xffEBF6FF) ,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                logourl,
                height: 140,
                width:  140,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width:130,
                    height: 30,
                    child:Text( title ,overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 20 , fontFamily: "Montserrat",fontWeight: FontWeight.w700),)),
                SizedBox(height: 5,),
                Row(children: [Icon(Icons.location_on_outlined , size: 16,),SizedBox(width: 2,),
                  Text( locality ,overflow: TextOverflow.visible, style: TextStyle(fontSize: 12 , fontFamily: "Montserrat",fontWeight: FontWeight.w700)),],
                ),
                SizedBox(height: 8,),
                Row(children: [Icon(Icons.star , color: Color(0xff4E2958), size: 16,),SizedBox(width: 2,),
                  Text( '4.7' , style: TextStyle(fontSize: 12 , color: Color(0xff4E2958),fontFamily: "Montserrat",fontWeight: FontWeight.w700)),],
                ),
                SizedBox(height: 17,),
                MaterialButton(onPressed: (){ Navigator.pushNamed(context, "/PlaceDetailScreen" ,
                    arguments: newplace(description: description,
                    city: city,
                      bgcolor: bgcolor,
                      imageUrl: imageUrl,
                      locality: locality,
                      title: title,
                      logourl: logourl,
                      cost: cost,
                    )
                    );
                  },
                  color: Color(0xff4E2958),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text('Book Tickets', style: TextStyle(color: Colors.white , fontFamily: "Montserrat",fontWeight: FontWeight.w700),),)
              ],
            ),
          )
        ],
      ),
    );
  }
}

