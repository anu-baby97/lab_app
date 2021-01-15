import 'package:flutter/material.dart';
import 'package:patient_portal/Screens/ForgotPassword.dart';
import 'package:patient_portal/Screens/Lab1.dart';
import 'package:patient_portal/Screens/LabInfo.dart';
import 'package:patient_portal/Screens/LoginScreen.dart';
import 'package:patient_portal/Screens/RegistrationScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Patient Portal",
      debugShowCheckedModeBanner: false,
      initialRoute: LabInfo.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ForgotPassword.id: (context) => ForgotPassword(),
        LabInfo.id: (context) => LabInfo(),
        Lab1.id: (context) => Lab1(),
      },
    );
  }
}
