import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nossoapp/Wrapper.dart';
import 'package:nossoapp/logic/authentication/auth_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'apresentação',
        home: BlocProvider(
          create: (context) => AuthBloc(),
          child: Wrapper(),
        ));
  }
}
