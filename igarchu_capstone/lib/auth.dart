import 'package:flutter/material.dart';
import 'package:igarchu_capstone/Screens/login_screen.dart';
import 'package:igarchu_capstone/classes/petLover.dart';
import 'package:igarchu_capstone/services/firebase_firestore_services.dart';
import 'package:provider/provider.dart';

import 'Screens/homescreen.dart';
import 'services/firebase_auth_services.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<FireAuthService>(context);
    final firestore = FirestoreService();
    // Handle User Firebase Authentication
    return StreamBuilder<PetLover?>(
      stream: authService.user,
      builder: (_, AsyncSnapshot<PetLover?> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final PetLover? user = snapshot.data;
          return user == null
              ? LoginScreen()
              : StreamProvider<PetLover?>.value(
                  // Maintain User state to HomeScreen
                  value: firestore.getUser(user.uid!),
                  initialData: user,
                  child: const HomeScreen(),
                  catchError: (_, error) {
                    return null;
                  },
                );
        } else {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
