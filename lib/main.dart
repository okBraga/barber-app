import 'package:barber_app/constants/routes.dart';
import 'package:barber_app/views/home_page.dart';
import 'package:barber_app/views/login_page.dart';
import 'package:barber_app/views/sign_up_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.loginPage,
      routes: {
        Routes.home: (_) => const HomePage(),
        Routes.loginPage: (_) => const LoginPage(),
        Routes.signUpPage: (_) => const SignUpPage(),
      },
    );
  }
}
