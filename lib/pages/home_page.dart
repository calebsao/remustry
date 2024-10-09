import 'package:flutter/material.dart';
import 'package:remustry/auth/login_or_register.dart';
import 'package:remustry/pages/page_tab.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Hello',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LoginOrRegister(),
                ));
              },
              child: const Text('SignIn/SignUp'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PageTab(),
                ));
              },
              child: const Text('The Tab for the different pages'),
            ),
          ],
        ),
      ),
    );
  }
}
