

import 'dart:convert';

import 'package:cart_page/landing_page/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
class database {
  Future<SharedPreferences> prefs_ = SharedPreferences.getInstance();

  Future<void> test() async {
    // final SharedPreferences prefs = await prefs_;
    // prefs.setString('access', 'test');
    // print(prefs.getString("access"));
  }
 Future<bool> forgotPassword({required BuildContext context, required String email}) async {
  try {
    var url = Uri.https('admin.credenz.in', '/api/password-reset/'); // Replace with your actual URL
    Map<String, String> body = {"email": email};
    var response = await http.post(url, body: body);

    if (response.statusCode == 200) {
      // Reset email sent successfully
      final snackBar = SnackBar(
        elevation: 5,
        behavior: SnackBarBehavior.fixed,
        duration: Duration(seconds: 3),
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
          title: 'Reset Email Sent!',
          message: 'Please check your email to reset your password',
          contentType: ContentType.success,
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return true;
    } else {
      // Failed to send reset email
      final snackBar = SnackBar(
        elevation: 5,
        behavior: SnackBarBehavior.fixed,
        duration: Duration(seconds: 3),
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
          title: 'Error!',
          message: 'Failed to send reset email. Please try again later.',
          contentType: ContentType.failure,
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return false;
    }
  } catch (e) {
    print("Error: $e");
    final snackBar = SnackBar(
      elevation: 5,
      
      behavior: SnackBarBehavior.fixed,
      duration: Duration(seconds: 3),
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'Error!',
        message: 'An error occurred. Please try again later.',
        contentType: ContentType.failure,
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    return false;
  }
}

  Future<bool> register({
    required String username,
    required String email,
    required String phone,
    required String firstname,
    required String lastname,
    required String password,
    required String college,
    required String confirmpassword,
  }) async {
    String headerString = '';
    final SharedPreferences prefs = await prefs_;
    try {
      var url = Uri.https('admin.credenz.in', '/api/register/');

      Map<String, dynamic> body = {
        "username": username,
        "email": email,
        "phone": phone,
        "first_name": firstname,
        "last_name": lastname,
        "password": password,
        "institute": college,
        "referralCode": "",
        "senior": "True",
      };
      print(body.toString());
      var response = await http.post(url, body: body);

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      try {
        String token = jsonDecode(response.body)["access"];
        prefs.setString('access', token);
      } catch (e) {
        String error = "Error in registration";
        print(error);
        //      showSnackBar(context, error);
      }
      if (response.statusCode != 201) {
        jsonDecode(response.body).forEach((key, value) {
          headerString += '$key:$value\n';
        });
        //     showSnackBar(context, headerString);
        return false;
      } else {
        login(username: username, password: password);
        headerString = 'Registration Successful';

        //      showSnackBar(context, headerString);

        return true;
      }
    } catch (e) {
      print("error: ${e.toString()}");
      //    showSnackBar(context, e.toString());
      return false;
    }
  }

  Future<bool> placeOrders({
    required List<int> eventList,
    required int transactionId,
    required int amount,
  }) async {
    try {
      var url = Uri.parse('https://admin.credenz.in/api/placeorder/');

      Map<String, dynamic> data = {
        "event_list": eventList,
        "transaction_id": transactionId,
        "amount": amount,
      };

      String body = jsonEncode(data);

      Map<String, String> headers = {
        'Content-type': 'application/json',
        "Authorization": "Bearer ${await getHeaders()}",
      };

      var response = await http.post(url, body: body, headers: headers);

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 201) {
        print(response.body);
        return true;
      } else {
        print('Request failed with status: ${response.statusCode}');
        print('Error message: ${response.reasonPhrase}');
        return false;
      }
    } catch (e) {
      print("Error: $e");
      return false;
    }
  }

  Future<bool> getpass({
    required List<int> eventList,
    required int transactionId,
    required int amount,
  }) async {
    try {
     // eventList.addAll([101,102,103,104,105,106,107,108,109,110,111,112]);
      var url = Uri.parse('https://admin.credenz.in/api/placeorder/');

      Map<String, dynamic> data = {
        "event_list": eventList,
        "transaction_id": transactionId,
        "amount": amount,
      };

      String body = jsonEncode(data);

      Map<String, String> headers = {
        'Content-type': 'application/json',
        "Authorization": "Bearer ${await getHeaders()}",
      };

      var response = await http.post(url, body: body, headers: headers);

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 201) {
        print(response.body);
        return true;
      } else {
        print('Request failed with status: ${response.statusCode}');
        print('Error message: ${response.reasonPhrase}');
        return false;
      }
    } catch (e) {
      print("Error: $e");
      return false;
    }
  }

  Future<bool> login({
    required String username,
    required String password,
  }) async {
    String headerString = '';
    try {
      var url = Uri.https('admin.credenz.in', '/api/login/');

      final SharedPreferences prefs = await prefs_;

      Map<String, dynamic> body = {
        "username": username,
        "password": password,
      };

      var response = await http.post(url, body: body);

      print('Response status: ${response.statusCode}');
      print('Response body: ${jsonDecode(response.body)["access"]}');

      prefs.setString("access", jsonDecode(response.body)["access"]);

      if (response.statusCode != 200) {
        jsonDecode(response.body).forEach((key, value) {
          headerString += '$key:$value\n';
        });
        //      showSnackBar(context, headerString);
        return false;
      } else {
        headerString = 'Login Successful';
        profile();
        //      showSnackBar(context, headerString);

        return true;
      }
    } catch (e) {
      print("error: ${e.toString()}");
      Get.snackbar('Invalid Username Or Password', 'Try Again');
      //   showSnackBar(context, e.toString());
      return false;
    }
  }

  Future<bool> logout() async {
    try {
      final SharedPreferences prefs = await prefs_;
      await prefs.remove("access");
      return true;
    } catch (e) {
      print("error: ${e.toString()}");
      return false;
    }
  }

  Future<bool> checkLoggedIn() async {
    try {
      final SharedPreferences prefs = await prefs_;
      String? access = prefs.getString("access");
      return access != null;
    } catch (e) {
      print("error: ${e.toString()}");
      return false;
    }
  }

  Future<Map<dynamic, dynamic>> profile() async {
    String headerString = '';
    try {
      var url = Uri.https('admin.credenz.in', '/api/profile/');

      Map<String, String> headers = {
        "Authorization": "Bearer ${await getHeaders()}",
      };
      final SharedPreferences prefs = await prefs_;

      var response = await http.get(url, headers: headers);
      prefs.setString("username", jsonDecode(response.body)["username"]);
      prefs.setString("email", jsonDecode(response.body)["email"]);
      prefs.setString("phone", jsonDecode(response.body)["phone"]);

      Map temp = jsonDecode(response.body);
      print(
          "Checking values in profile: username: ${temp['username']} email: ${temp['email']}");
      //     print('Response status: ${response.statusCode}');
//      print('Response body: ${response.body}');
      if (response.statusCode != 200) {
        jsonDecode(response.body).forEach((key, value) {
          headerString += '$key:$value\n';
        });
        //      showSnackBar(context, headerString);
        return {};
      } else {
        print(jsonDecode(response.body));
        headerString = 'Got Profile Details';
        //       showSnackBar(context, headerString);
        return temp;
      }
    } catch (e) {
      print("error: ${e.toString()}");
      //    showSnackBar(context, e.toString());
      return {};
    }
  }

  Future<String> getHeaders() async {
    final SharedPreferences prefs = await prefs_;
    try {
      String? token = prefs.getString("access");
      if (token != null) {
        return token;
      } else {
        //      showSnackBar(context, "access token not found");
        return "access token not found";
      }
    } catch (e) {
      print("error: ${e.toString()}");
//      showSnackBar(context, e.toString());
      return e.toString();
    }
  }

  Future<Map> testProfileData({required BuildContext context}) async {
    if (await checkLoggedIn()) {
      Map<dynamic, dynamic> t = {
        "username": "-",
        "email": "-",
        "phone": "-",
        "signInStatus": false,
      };
      var url = Uri.https('');

      Map<String, String> headers = {
        "Authorization": "Bearer ${await getHeaders()}",
      };

      var response = await http.get(url, headers: headers);
      if (response.statusCode != 200) {
        t["username"] = 'data["username"]';
        t["email"] = 'data["email"]';
        t["phone"] = 'data["phone"]';
        t["signInStatus"] = false;
      } else {
        Map<dynamic, dynamic> data = jsonDecode(response.body);
        t["username"] = data["username"];
        t["email"] = data["email"];
        t["phone"] = data["phone"];
        t["signInStatus"] = true;
        return t;
      }

      return t;
    }
    return {
      "username": "-",
      "email": "-",
      "phone": "-",
      "signInStatus": false,
    };
  }
}

Initial() {}
