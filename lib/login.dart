import 'package:flutter/material.dart';
import 'homescreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController =
      TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  String errorMessage = '';

  void _submitForm() {
    String email = emailController.text;
    String password = passwordController.text;

    // TODO: Replace this with your own authentication logic
    if (email == '1' && password == '1') {
      // Navigate to home screen or do any other action on successful login
      Navigator.push(
        context,
         MaterialPageRoute(builder: (context) => HomeScreen()),);
    } else {
      emailController.clear();
      passwordController.clear();
      setState(() {
        errorMessage =
            'Email atau Password salah, ulangi lagi';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: Text('Menu Login'),
  ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Masukkan Email anda',
                    ),
                    onFieldSubmitted: (value) => _submitForm(),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Masukkan Password anda',
                    ),
                    onFieldSubmitted: (value) => _submitForm(),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: _submitForm,
                    child: Text('Submit'),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    errorMessage,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
 
