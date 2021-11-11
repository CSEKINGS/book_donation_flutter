import 'package:book_donation/utils/media_query.dart';
import 'package:flutter/material.dart';

/// book sell view where we can add details about the book and the price
class SellBookView extends StatefulWidget {
  /// default constructor
  const SellBookView({Key? key}) : super(key: key);

  @override
  _SellBookViewState createState() => _SellBookViewState();
}

class _SellBookViewState extends State<SellBookView> {
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
                  'Sell Book',
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
                    labelStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    fillColor: const Color(0xFFe9eff6),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  autofocus: false,
                  onSaved: (value) => {},
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Book author',
                    labelStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    fillColor: const Color(0xFFe9eff6),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  autofocus: false,
                  onSaved: (value) => {},
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Description',
                    labelStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    fillColor: const Color(0xFFe9eff6),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  autofocus: false,
                  onSaved: (value) => {},
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Edition',
                    labelStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    fillColor: const Color(0xFFe9eff6),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  autofocus: false,
                  onSaved: (value) => {},
                  decoration: InputDecoration(
                    filled: true,
                    labelText: 'Price',
                    labelStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    fillColor: const Color(0xFFe9eff6),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
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
                  onPressed: () {},
                  child: const Text('Add'),
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
