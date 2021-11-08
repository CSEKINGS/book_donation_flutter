import 'package:book_donation/controllers/api/api.dart';
import 'package:book_donation/views/home_navigation_view.dart';
import 'package:book_donation/views/login_view.dart';
import 'package:flutter/material.dart';

/// user registration view
class RegistrationView extends StatefulWidget {
  /// default constructor
  const RegistrationView({Key? key}) : super(key: key);

  @override
  _RegistrationViewState createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  String name = '';
  String email = '';
  String password = '';
  String mobileNo = '';
  String address = '';
  String photo = '';
  String location = '';

  final _registrationFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _registrationFormKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Registration',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      autofocus: false,
                      onSaved: (value) => {name = value!},
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      autofocus: false,
                      onSaved: (value) => {email = value!},
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Email',
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
                    TextFormField(
                      autofocus: false,
                      onSaved: (value) => {mobileNo = value!},
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Mobile number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      autofocus: false,
                      onSaved: (value) => {address = value!},
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Address',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      autofocus: false,
                      onSaved: (value) => {photo = value!},
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Location',
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
                                builder: (context) => const LoginView(),
                              ),
                            );
                          },
                          child: const Text('Already an user ? Login here'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _registrationFormKey.currentState!.save();
                            attemptSignUp(name, email, password, mobileNo,
                                    address, location)
                                .then((value) {
                              if (value == 'valid') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const HomeNavigationView(),
                                  ),
                                );
                              }
                            });
                          },
                          child: const Text('Register'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
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
