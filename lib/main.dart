import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:text_it/screens/welcome_screen.dart';
import 'package:text_it/screens/login_screen.dart';
import 'package:text_it/screens/registration_screen.dart';
import 'package:text_it/screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: "AIzaSyBNLaW1S60IW--4nWmhpNOSOjg6YoeGji8",
            appId:
                "1:790194371958:android:c7789bbb4097328804ce57", // mobilesdk_app_id
            messagingSenderId: "790194371958", // project_number
            projectId: "ext-it-c4999", // project_id
          ),
        )
      : await Firebase.initializeApp();

  runApp(TextIt());
}

class TextIt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
