import 'package:counter_app/screens/provider/counter_provider.dart';
import 'package:counter_app/screens/view/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => counterprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => counterscreen(),
        },
      ),
    ),
  );
}