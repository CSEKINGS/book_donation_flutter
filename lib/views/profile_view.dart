import 'package:flutter/material.dart';

/// Profile page
class ProfileView extends StatefulWidget {
  /// default constructor
  const ProfileView({Key? key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Hero(
                      tag: 'profile',
                      child: CircleAvatar(
                        radius: 80.0,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      autofocus: false,
                      onSaved: (value) => {},
                      decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      autofocus: false,
                      onSaved: (value) => {},
                      decoration: InputDecoration(
                          labelText: 'Date of birth',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      autofocus: false,
                      onSaved: (value) => {},
                      decoration: InputDecoration(
                          labelText: 'Mobile number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      autofocus: false,
                      onSaved: (value) => {},
                      decoration: InputDecoration(
                          labelText: 'Address',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )),
                    ),
                  ],
                ),
              ))),
    );
  }
}
