import 'package:flutter/material.dart';

/// book donation view where we add details about book
class DonateBookView extends StatefulWidget {
  /// default constructor
  const DonateBookView({Key? key}) : super(key: key);
  @override
  _DonateBookViewState createState() => _DonateBookViewState();
}

class _DonateBookViewState extends State<DonateBookView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Donate Book',
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
                      labelText: 'Book name',
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
                      labelText: 'Book author',
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
                      labelText: 'Description',
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
                      labelText: 'Edition',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Add'),
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
    );
  }
}
