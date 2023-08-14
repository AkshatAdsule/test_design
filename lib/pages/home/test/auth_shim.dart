import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class AuthShimPage extends StatefulWidget {
  const AuthShimPage({super.key});

  @override
  State<AuthShimPage> createState() => _AuthShimPageState();
}

class _AuthShimPageState extends State<AuthShimPage> {
  final FirebaseAuth fbAuth = FirebaseAuth.instance;

  bool _isSignedIn = false;
  String? _fbToken = "";

  String responseCode = "No request";
  String responseStatus = "No request";

  void _signIn() async {
    await fbAuth.signInWithEmailAndPassword(
        email: "akshat.adsule@gmail.com", password: "password");
  }

  void _getFbToken() async {
    String? token = await fbAuth.currentUser!.getIdToken();
    setState(() {
      _fbToken = token;
    });
  }

  void _makeProtectedRequest() async {
    setState(() {
      responseCode = "Sending...";
      responseStatus = "Sending...";
    });
    Response res = await get(
      Uri(
        scheme: 'https',
        host: "awhc-ani-backend.azurewebsites.net",
        path: "users",
      ),
      headers: {'Authorization': 'Bearer $_fbToken'},
    );
    setState(() {
      responseCode = "${res.statusCode}";
      responseStatus = res.statusCode == 200 ? "Authorized" : "Unauthorized";
    });
  }

  @override
  void initState() {
    fbAuth.userChanges().listen((user) async {
      if (user != null) {
        _getFbToken();
        setState(() {
          _isSignedIn = true;
        });
      } else {
        setState(() {
          _isSignedIn = false;
          _fbToken = "";
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth Shim'),
      ),
      body: Center(
        widthFactor: 1.25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Is signed in: $_isSignedIn"),
            Text(
              _fbToken!.isNotEmpty
                  ? "Firebase Token: ${_fbToken!.length > 15 ? "${_fbToken!.substring(0, 15)}..." : _fbToken}"
                  : "Firebase Token not set",
            ),
            Text('Response code: $responseCode'),
            Text('Response status: $responseStatus'),
            ElevatedButton(
              onPressed: _signIn,
              child: const Text("Sign in"),
            ),
            ElevatedButton(
              onPressed: fbAuth.signOut,
              child: const Text("Sign out"),
            ),
            ElevatedButton(
              onPressed: _makeProtectedRequest,
              child: const Text("Make protected request"),
            ),
          ],
        ),
      ),
    );
  }
}
