import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper/scrren/provider/homeProvider.dart';
import 'package:stepper/scrren/view/homeScreen.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Loginscreen(),
        },
      ),
    ),
  );
}
