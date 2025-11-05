import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          // 1. Add an IconButton to the AppBar
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // 2. Call Firebase to sign out
              FirebaseAuth.instance.signOut();
              // No need to navigate manually — AuthWrapper will handle redirection
            },
          )
        ],
      ),
      body: const Center(
        child: Text('You are logged in!'),
      ),
    );
  }
}
