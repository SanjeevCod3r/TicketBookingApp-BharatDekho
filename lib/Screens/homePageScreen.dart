import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hack2023/Screens/PlaceList.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/HomePage";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _email= ModalRoute.of(context)!.settings.arguments as String;

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg_image.jpg"),
          fit:BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff4E2958),
                ),
                accountName: Text("Welcome !", style: TextStyle(color: Colors.white, fontFamily: "Montserrat", fontSize: 18),),
                accountEmail: Text(_email, style: TextStyle(color: Colors.white, fontFamily: "Montserrat", fontSize: 18),),

                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color(0xffFFd73a),
                  child: Text(
                    (_email.substring(0,1)).toUpperCase(),
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),

              ListTile(
                leading: Icon(Icons.book_online), title: Text("Book Now"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.menu_book), title: Text("Transactions"),
                onTap: () {
                  Navigator.pushNamed(context, "/TransactionScreen").then((value) => Navigator.pop(context));
                  
                },
              ),
              ListTile(
                leading: Icon(Icons.logout), title: Text("Logout"),
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/SigninScreen");
                },
              ),
            ],
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 100,
          child: Column(
            children: [
              Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 26,top: 10),
                    child: Text('Where are you visiting today ?',
                        style:
                        TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.w700, fontSize: 35,color: Colors.white)),
                  )),
              SizedBox(height: 20,),
              CityGrid(),
            ],
          )


        )
      ),
    );
  }
}


class CityGrid extends StatelessWidget {
  List citylist = [
    {
      "imgurl":
      "https://cdn.iconscout.com/wordpress/2017/04/hawamahal-hawa-mahal-jaipur-monument-sandstone-historical-places-india-754x700.png",
      "city": "Jaipur"
    },
    {
      "imgurl": "https://cdn.iconscout.com/icon/free/png-256/delhi-139357.png",
      "city": "Delhi"
    },
    {
      "imgurl":
      "https://cdn.iconscout.com/icon/free/png-256/tajmahal-1-119689.png",
      "city": "Agra"
    },
    {
      "imgurl": "https://cdn.iconscout.com/icon/free/png-256/bara-1-119695.png",
      "city": "Lucknow"
    },
    {
      "imgurl":
      "https://cdn.iconscout.com/icon/free/png-256/charminar-1-119696.png",
      "city": "Hyderabad"
    },
    {
      "imgurl":
      "https://cdni.iconscout.com/illustration/free/thumb/open-hand-monument-2128057-1793450.png",
      "city": "Chandigarh"
    },
    {
      "imgurl":
      "https://cdn.iconscout.com/icon/free/png-256/chennai-1-119692.png",
      "city": "Chennai"
    },
    {
      "imgurl":
      "https://cdn.iconscout.com/icon/free/png-256/hawamahal-119686.png",
      "city": "Jaipur"
    },
    {
      "imgurl":
      "https://cdn.iconscout.com/icon/free/png-256/charminar-1-119696.png",
      "city": "Hyderabad"
    },
    {
      "imgurl":
      "https://cdni.iconscout.com/illustration/free/thumb/open-hand-monument-2128057-1793450.png",
      "city": "Chandigarh"
    },
    {
      "imgurl":
      "https://cdn.iconscout.com/icon/free/png-256/chennai-1-119692.png",
      "city": "Chennai"
    },
    {
      "imgurl":
      "https://cdn.iconscout.com/icon/free/png-256/hawamahal-119686.png",
      "city": "Jaipur"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.builder(
          itemCount: citylist.length,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: (){
                 Navigator.pushNamed(context, PlaceListScreen.routeName , arguments: citylist[index]["city"]);

                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 20,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.network(citylist[index]["imgurl"],
                            height: 100, width: 150),
                      ),
                      Text(citylist[index]["city"],style: TextStyle(
                        fontFamily: "Montserrat",fontWeight: FontWeight.w700,fontSize: 17
                      ),),
                          // style:
                          // TextStyle(fontFamily: "Montserrat", fontSize: 15))
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}