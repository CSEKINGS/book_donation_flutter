import 'package:book_donation/views/registration_view.dart';
import 'package:flutter/material.dart';
import 'package:blobs/blobs.dart';
import 'home_navigation_view.dart';

/// login UI which asks user to input phone number
class LoginView extends StatefulWidget {
  /// default constructor
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Blob.random(
              size: 300,
              styles: BlobStyles(
                color: Colors.deepPurpleAccent[200],
                fillType: BlobFillType.fill,
              ),
            ),
            Form(
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
                      onSaved: (value) => {},
                      decoration: InputDecoration(
                          filled: true,
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      autofocus: false,
                      onSaved: (value) => {},
                      decoration: InputDecoration(
                          filled: true,
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const HomeNavigationView(),
                              ),
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
          ],
        )),
      ),
    );
  }
}
