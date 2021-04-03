import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './screens/welcome_screen.dart';
import './screens/login_screen.dart';
import './screens/registration_screen.dart';
import './screens/chat_screen.dart';

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
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => WelcomeScreen(),
        '/login_screen': (ctx) => LoginScreen(),
        '/reg_screen': (ctx) => RegistrationScreen(),
        '/chat_screen': (ctx) => ChatScreen(),
      },
    );
  }
}
