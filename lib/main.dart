import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './Screens/checkoutScreeb.dart';
import './Screens/payment_gateway.dart';
import './Screens/signupFailScreen.dart';
import './Screens/PlaceList.dart';
import './Screens/homePageScreen.dart';
import './Screens/signinScree.dart';
import './Screens/signupScreen.dart';
import 'Screens/signinScree.dart';
import './provider/placeProvier.dart';
import './Screens/PlaceDetailScreen.dart';
import './Screens/Transactions.dart';


final FirebaseAuth _auth = FirebaseAuth.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key:
  key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => place_provider(),
      child: MaterialApp(
        title: 'MyApp',

        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SignInScreen(),
        debugShowCheckedModeBanner: false,
        routes: {
          HomePage.routeName : (ctx) => HomePage(),
          PlaceListScreen.routeName :(ctx) => PlaceListScreen(),
          PlaceDetailScreen.routeName :(ctx) => PlaceDetailScreen(),
          FailScreen.routeName:(ctx)=>FailScreen(),
          SignInScreen.routeName:(ctx)=>SignInScreen(),
          CardScreen.routeName:(ctx)=>CardScreen(),
          PaymentScreen.routeName:(ctx)=>PaymentScreen(),
          Transactions.routeName:(ctx)=>Transactions(),
        },
      ),
    );
  }
}