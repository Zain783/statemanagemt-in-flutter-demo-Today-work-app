import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:today_work_firebase/screens/homescreen.dart';
import 'package:today_work_firebase/screens/loginscreen.dart';
import 'package:today_work_firebase/screens/signup.dart';
import 'package:today_work_firebase/screens/tasks_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        HomePage.id: (context) => HomePage(),
        LoginScreen.id: (context) => const LoginScreen(),
        TasksScreen.id: (context) => TasksScreen(),
        SignUpScreen.id: (context) => SignUpScreen()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: TasksScreen(),
      home: HomePage(),
    );
  }
}
