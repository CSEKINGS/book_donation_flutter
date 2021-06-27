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
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Hero(
                        tag: 'profile',
                        child: CircleAvatar(
                          radius: 100.0,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        initialValue: 'John carter',
                        autofocus: false,
                        onSaved: (value) => {},
                        decoration: InputDecoration(
                            filled: true,
                            labelText: 'Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            )),
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        initialValue: '13-11-1999',
                        autofocus: false,
                        onSaved: (value) => {},
                        decoration: InputDecoration(
                            filled: true,
                            labelText: 'Date of birth',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            )),
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        initialValue: '9898989898',
                        autofocus: false,
                        onSaved: (value) => {},
                        decoration: InputDecoration(
                            filled: true,
                            labelText: 'Mobile number',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            )),
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        maxLines: 4,
                        initialValue: 'Main road, Dubai',
                        autofocus: false,
                        onSaved: (value) => {},
                        decoration: InputDecoration(
                            filled: true,
                            labelText: 'Address',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            )),
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        initialValue: 'Student',
                        autofocus: false,
                        onSaved: (value) => {},
                        decoration: InputDecoration(
                            filled: true,
                            labelText: 'About',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            )),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Submit'),
                      ),
                    ],
                  ),
                ))),
      ),
    );
  }
}
