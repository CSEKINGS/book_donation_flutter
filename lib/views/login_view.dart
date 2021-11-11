import 'package:book_donation/networking/api/auth.dart';
import 'package:book_donation/utils/media_query.dart';
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
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _loginFormKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sign In to start\ndonating',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(
                      autofocus: false,
                      onSaved: (value) => {username = value!},
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        errorText: 'Please enter email or number',
                        filled: true,
                        labelText: 'Enter email or phone number',
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        fillColor: const Color(0xFFe9eff6),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      autofocus: false,
                      onSaved: (value) => {password = value!},
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        errorText: 'Please enter a password',
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.remove_red_eye,
                              color: Colors.grey,
                            )),
                        filled: true,
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        fillColor: const Color(0xFFE9EFF6),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Recovery password',
                          style: TextStyle(color: Colors.grey, fontSize: 14.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        elevation: 20.0,
                        shadowColor: const Color(0xFF4460F1),
                        primary: const Color(0xFF4460F1),
                        fixedSize: Size(displayWidth(context), 55),
                      ),
                      onPressed: () async {
                        print('login button pressed');
                        _loginFormKey.currentState!.save();
                        print('form saved');

                        await loginAPI(username, password).then(
                          (value) {
                            if (value == 'invalid') {
                              print('invalid login');
                            } else if (value == 'valid') {
                              print('login');
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
                      child: const Text('Sign In'),
                    ),
                    const SizedBox(height: 40.0),
                    const Text("If you don't have an account"),
                    Row(
                      children: [
                        const Text('You can'),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegistrationView(),
                              ),
                            );
                          },
                          child: const Text(
                            'Register here!',
                            style: TextStyle(
                              color: Color(0xFF4460F1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
