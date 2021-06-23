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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Center(
                          child: Hero(
                        tag: 'profile',
                        child: CircleAvatar(
                          radius: 80.0,
                        ),
                      )),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        autofocus: false,
                        onSaved: (value) => {},
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                      )
                    ],
                  ),
                ))),
      ),
    );
  }
}
