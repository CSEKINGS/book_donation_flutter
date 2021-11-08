import 'package:book_donation/controllers/api/api.dart';
import 'package:book_donation/views/registration_view.dart';
import 'package:flutter/material.dart';
import 'home_navigation_view.dart';

/// login UI which asks user to input phone number
class LoginView extends StatefulWidget {
  /// default constructor
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String username = '';
  String password = '';

  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _loginFormKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(fontSize: 30.0),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  autofocus: false,
                  onSaved: (value) => {username = value!},
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  autofocus: false,
                  onSaved: (value) => {password = value!},
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegistrationView(),
                          ),
                        );
                      },
                      child: const Text('New user ? Register here'),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        _loginFormKey.currentState!.save();

                        await attemptLogIn(username, password).then(
                          (value) {
                            if (value == 'invalid') {
                            } else if (value == 'valid') {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const HomeNavigationView(),
                                ),
                              );
                            }
                          },
                        );
                      },
                      child: const Text('Login'),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
