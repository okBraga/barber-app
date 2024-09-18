import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:store_app/views/login_page.dart';

class HomePage extends StatelessWidget {
  //final User user;

  const HomePage({
    super.key,
    //required this.user
  });

  @override
  Widget build(BuildContext context) {
    String? user = FirebaseAuth.instance.currentUser!.email;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Logado como: $user',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                child: const Text('Sair'))
          ],
        ),
      ),
    );
  }
}
