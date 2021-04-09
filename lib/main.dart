import 'package:flutter/material.dart';
//import '../screens/mainItem.dart';
import './screens/Home/home.dart';
import './screens/Registration/login.dart';
import './screens/Registration/register.dart';
import './screens/user_type.dart';
import './screens/splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      allowFontScaling: false,
      builder: () => MaterialApp(
        title: 'Heavy Rental',
        theme: ThemeData(
            accentColor: Colors.blueGrey,
            fontFamily: 'cairo',
            scaffoldBackgroundColor: Color(0xffFFFAFA),
            textTheme: TextTheme(
              headline1: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 60.sp,
                fontWeight: FontWeight.w400,
                height: 1,
              ),
              headline2: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                height: 1,
              ),
              headline3: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 40,
                fontWeight: FontWeight.w400,
                height: 1,
              ),
              headline4: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.w700,
                height: 1,
              ),
            )),
        initialRoute: UserType.id,
        routes: {
          Splash.id: (ctx) => Splash(),
          UserType.id: (ctx) => UserType(),
          Register.id: (ctx) => Register(),
          Login.id: (ctx) => Login(),
          Home.id: (ctx) => Home(),
         // MainItem.id: (ctx) => MainItem(),
        },
      ),
    );
  }
}
