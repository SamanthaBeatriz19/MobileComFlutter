import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nossoapp/Layout/TabBar.dart';
import 'package:nossoapp/Screens/IsabelaScreen.dart';
import 'package:nossoapp/Screens/LoginScreen.dart';
import 'package:nossoapp/Screens/SamanthaScreen.dart';
import 'package:nossoapp/logic/authentication/auth_bloc.dart';
import 'package:nossoapp/logic/authentication/auth_state.dart';

class Wrapper extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WrapperState();
  }
}

class WrapperState extends State<Wrapper> {
  var _currentPage = 0;
  var _pages = [SamanthaScreen(), IsabelaScreen(), LoginScreen()];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is Authenticated) {
          return MyTabBarLayout();
        } else {
          return UnloggedLayout();
        }
      },
    );
  }
}
