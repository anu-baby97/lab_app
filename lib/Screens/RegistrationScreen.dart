import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_portal/Screens/LoginScreen.dart';
import 'package:patient_portal/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = "RegistrationScreen";

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  bool showSpinner = false;
  String name;
  String email;
  String dob;
  String phno;
  String gender;
  String address;
  String uname;
  String password;
  @override
  void init() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0XFFB9D9E8),
            title: Text('Registration Page', style: TextStyle(fontSize: 20)),
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
            )),
        body: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: SingleChildScrollView(
            child: Container(
//          width: double.infinity,
////      height: ScreenUtil.getInstance().setHeight(500),
//          padding: EdgeInsets.only(left: 1),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image_02.png'),
                    fit: BoxFit.fitWidth),
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 80, 10),
                    child: Column(
                      children: [
                        TextField(
                          autofocus: true,
                          onChanged: (value) {
                            name = value;
                          },
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              hintText: "Enter Name",
                              hintStyle: TextStyle(
                                  color: Colors.grey, fontSize: 15.0)),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 80, 10),
                      child: TextField(
                        onChanged: (value) {
                          email = value;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "Enter Email",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15.0)),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 80, 10),
                      child: TextField(
                        onChanged: (value) {
                          dob = value;
                        },
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                            hintText: "Enter DOB",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15.0)),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 80, 10),
                      child: TextField(
                        onChanged: (value) {
                          phno = value;
                        },
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            hintText: "Enter Phone Number",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15.0)),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 80, 10),
                      child: TextField(
                        onChanged: (value) {
                          gender = value;
                        },
                        decoration: InputDecoration(
                            hintText: "Enter Gender",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15.0)),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 80, 10),
                      child: TextField(
                        onChanged: (value) {
                          address = value;
                        },
                        maxLines: 3,
                        decoration: InputDecoration(
                            hintText: "Enter Address",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15.0)),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 80, 10),
                      child: TextField(
                        onChanged: (value) {
                          uname = value;
                        },
                        decoration: InputDecoration(
                            hintText: "Enter Username",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15.0)),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 80, 10),
                      child: TextField(
                        onChanged: (value) {
                          password = value;
                        },
                        decoration: InputDecoration(
                            hintText: "Enter Password",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15.0)),
                      ),
                    ),
                  ),
                  /*Flexible(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 80, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Re-enter Password",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15.0),
                          //contentPadding: EdgeInsets.all(10)
                        ),
                      ),
                    ),
                  ),*/
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(80),
                  ),
                  InkWell(
                    child: Container(
                      width: ScreenUtil.getInstance().setWidth(900),
                      height: ScreenUtil.getInstance().setHeight(100),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFF17ead9), Color(0xFF6078ea)]),
                          borderRadius: BorderRadius.circular(6.0),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFF6078ea).withOpacity(.3),
                                offset: Offset(0.0, 8.0),
                                blurRadius: 8.0)
                          ]),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () async {
                            _firestore.collection("patients").add({
                              'name': name,
                              'email': email,
                              'dob': dob,
                              'phone': phno,
                              'address': address,
                              'username': uname,
                              'password': password
                            });
                            setState(() {
                              showSpinner = true;
                            });
                            try {
                              final newUser =
                                  await _auth.createUserWithEmailAndPassword(
                                      email: email, password: password);
                              if (newUser != null) {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, LoginScreen.id, (route) => true);
                              }
                              setState(() {
                                showSpinner = false;
                              });
                            } catch (e) {
                              print(e);
                            }
                          },
                          child: Center(
                            child: Text(
                              "REGISTER",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Poppins-Bold",
                                  fontSize: 15,
                                  letterSpacing: 0.4),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
