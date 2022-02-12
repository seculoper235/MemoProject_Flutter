import 'package:flutter/material.dart';
import 'package:memo_project_flutter/src/EmailSignInPage.dart';
import 'package:memo_project_flutter/src/EmailSignUpPage.dart';
import 'package:memo_project_flutter/src/SignInPage.dart';
import 'package:memo_project_flutter/src/SignUpPage.dart';

import 'package:responsive_builder/responsive_builder.dart';

import '../main.dart';

final signRoute = {
  '/': (BuildContext context) => const MyHomePage(title: 'Flutter Demo Home Page'),

  '/signIn': (BuildContext context) => ScreenTypeLayout(
    mobile: const SignInPage(),
    tablet: const SignInPage(),
  ),

  '/signUp': (BuildContext context) => ScreenTypeLayout(
    mobile: const SignUpPage(),
  ),

  '/emailSignIn': (BuildContext context) => ScreenTypeLayout(
    mobile: const EmailSignInPage(),
  ),

  '/emailSignUp': (BuildContext context) => ScreenTypeLayout(
    mobile: const EmailSignUpPage(),
  )
};