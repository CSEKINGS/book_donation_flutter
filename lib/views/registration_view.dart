import 'package:book_donation/networking/api/auth.dart';
import 'package:book_donation/utils/media_query.dart';
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
                      height: 40.0,
                    ),
                    TextFormField(
                      autofocus: false,
                      onSaved: (value) => {name = value!},
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Name',
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
                      onSaved: (value) => {email = value!},
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Email',
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
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Password',
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
                      onSaved: (value) => {mobileNo = value!},
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Mobile number',
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
                      onSaved: (value) => {address = value!},
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Address',
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
                      readOnly: true,
                      autofocus: false,
                      onSaved: (value) => {photo = value!},
                      decoration: InputDecoration(
                        filled: true,
                        labelText: 'Location',
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
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        elevation: 20.0,
                        shadowColor: const Color(0xFF4460F1),
                        primary: const Color(0xFF4460F1),
                        fixedSize: Size(displayWidth(context), 55),
                      ),
                      onPressed: () {
                        _registrationFormKey.currentState!.save();
                        registerAPI(name, email, password, mobileNo, address,
                                location)
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
                    const SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        const Text('Already an user?'),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginView(),
                              ),
                            );
                          },
                          child: const Text(
                            'Login here',
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
