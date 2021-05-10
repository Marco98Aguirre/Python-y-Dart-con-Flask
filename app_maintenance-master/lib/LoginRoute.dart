import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert' as convert;
import 'API.dart';

class LoginRoute extends API {
  @override
  LoginRouteState createState() => LoginRouteState();
}

class LoginRouteState extends APIState {
  String URL;
  String URLSuffix = "login";
  String appBarTitle = "Login";

  var messages = {
    "success": {"dialogHead": "", "dialogMessage": ""},
    "failure": {"dialogHead": "Login error"}
  };

  @override
  void onDialogPressed() {
    if (success == false) Navigator.pop(context);
  }

  @override
  onSuccess() async {
    // When login success, save the data ,
    // navigate to ProfilePage
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool("isLogged", true);

    sharedPreferences.setString(
        "username", responseData["data"]["user"]["username"]);
    sharedPreferences.setString(
        "fullname", responseData["data"]["user"]["fullname"]);
    sharedPreferences.setString("email", responseData["data"]["user"]["email"]);

    Navigator.pushReplacementNamed(context, '/profile');
  }
}
