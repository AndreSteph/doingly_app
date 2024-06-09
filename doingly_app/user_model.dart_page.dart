import 'package:flutter/material.dart';
import 'package:doingly_appundefined/index.dart';

class UserModel.dartPage extends StatefulWidget {
  static const String routeName = '/userModel.dart';

  @override
  _UserModel.dartPageState createState() => _UserModel.dartPageState();
}

class _UserModel.dartPageState extends State<UserModel.dartPage> {
  final _userModel.dartBloc = UserModel.dartBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UserModel.dart'),
      ),
      body: UserModel.dartScreen(userModel.dartBloc: _userModel.dartBloc),
    );
  }
}
