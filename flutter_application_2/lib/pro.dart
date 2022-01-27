import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/main.dart';

class SimplePro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SimpleProState();
}

class SimpleProState extends State<SimplePro> {
  bool passwordVisible = true;
  var w = Colors.white;
  var r = Colors.red;
  var b = Colors.black;
  var bl = Colors.blue;
  var br = Colors.brown;
  var g = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AppBar Title'),
        ),
        body: Container(
            color: b,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: g),
                          borderRadius: BorderRadius.circular(80.0),
                        ),
                        labelText: 'TextField',
                        labelStyle: TextStyle(fontSize: 30, color: r),
                        hintText: 'Enter Text',
                        hintStyle: TextStyle(fontSize: 20, color: w),
                      ),
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: w),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: g),
                            borderRadius: BorderRadius.circular(60.0)),
                        icon: Icon(Icons.person_outline, color: bl),
                        labelText: 'Name',
                        labelStyle: TextStyle(fontSize: 30, color: r),
                        hintText: 'Enter Name',
                        hintStyle: TextStyle(fontSize: 20, color: w),
                      ),
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: w),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: br,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: g),
                            borderRadius: BorderRadius.circular(8.0)),
                        prefixIcon: Icon(Icons.alternate_email, color: bl),
                        labelText: 'Email',
                        labelStyle: TextStyle(fontSize: 30, color: r),
                        hintText: 'Enter Email',
                        hintStyle: TextStyle(fontSize: 20, color: w),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: w),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Passowrd',
                        labelStyle: TextStyle(fontSize: 30, color: r),
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(fontSize: 20, color: w),
                        suffixIcon: IconButton(
                          icon: Icon(
                            passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: bl,
                          ),
                          onPressed: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(color: w),
                      obscureText: passwordVisible,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.phone,
                          color: bl,
                        ),
                        labelText: 'Phone',
                        labelStyle: TextStyle(fontSize: 30, color: r),
                        hintText: 'Enter phoneNumber',
                        hintStyle: TextStyle(fontSize: 20, color: w),
                      ),
                      keyboardType: TextInputType.phone,
                      style: TextStyle(color: w),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            )));
  }
}
