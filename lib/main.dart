import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodflow/features/app/splash_screen.dart';
import 'package:foodflow/features/usser_auth/presentation/pages/home_page.dart';
import 'package:foodflow/features/usser_auth/presentation/pages/login_page.dart';
import 'package:foodflow/features/usser_auth/presentation/pages/sign_up_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDqh-aYatl9Jb9-AenmqKZPrxiOqpEH-xs",
            appId: "1:317756135011:web:20e5c6e6b4234f33978a56",
            messagingSenderId: "317756135011",
            projectId: "foodflow-1e0e9"));
  }
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      routes: {
        '/': (context) => SplashScreen(
              // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
              child: LoginPage(),
            ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
