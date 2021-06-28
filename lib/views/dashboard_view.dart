import 'package:book_donation/views/profile_view.dart';
import 'package:book_donation/views/sell_book_view.dart';
import 'package:book_donation/views/widgets/find_book_container.dart';
import 'package:book_donation/views/widgets/donation_or_sell_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'donate_book_view.dart';

/// Dashboard page which shows buy and sell widgets and book category widget
class DashboardView extends StatefulWidget {
  /// default constructor
  const DashboardView({Key? key}) : super(key: key);

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              TopBar(),
              DonationOrSell(),
              FindBookText(),
              FindBook(),
            ],
          ),
        ),
      ),
    );
  }
}

/// this is the top widget of the dashboard
/// which shows a welcome text and profile icon
class TopBar extends StatelessWidget {
  /// default constructor
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Halo, Human',
              style: TextStyle(fontSize: 25.0),
            ),
            Text(
              'We wish you have a good day ',
              style: TextStyle(color: Colors.grey, fontSize: 15.0),
            )
          ],
        ),
        Hero(
            tag: 'profile',
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileView(),
                    ),
                  );
                },
                child: const CircleAvatar(
                  radius: 25.0,
                ))),
      ],
    );
  }
}

/// this is the donation or sell widget you can find below the top bar
class DonationOrSell extends StatelessWidget {
  /// default constructor
  const DonationOrSell({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DonateBookView(),
              ),
            );
          },
          child: const DonationOrSellContainer(
            containerText: 'Donation',
            containerColor: Color(0xFFFFE540),
            containerTextColor: Color(0xFFCCA434),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SellBookView(),
              ),
            );
          },
          child: const DonationOrSellContainer(
            containerText: 'Selling Books',
            containerColor: Color(0xFFECEFFE),
            containerTextColor: Color(0xFF617BF3),
          ),
        ),
      ],
    );
  }
}

/// this is the text you see above the book category selection widget
class FindBookText extends StatelessWidget {
  /// default constructor
  const FindBookText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Categories',
          style: TextStyle(fontSize: 18.0),
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text(
            'Search book',
          ),
        )
      ],
    );
  }
}

/// this is the bottom most widget in the dashboard
class FindBook extends StatelessWidget {
  /// default constructor
  const FindBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            FindBookContainer(
              containerColor: Color(0xFF7ED9EE),
              containerText: 'College',
              containerTextColor: Color(0xFF1B75A1),
            ),
            FindBookContainer(
              containerText: 'School',
              containerColor: Color(0xFFFFC8B8),
              containerTextColor: Color(0xFF9C5040),
            ),
          ],
        ),
        const SizedBox(
          height: 25.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            FindBookContainer(
              containerText: 'Research',
              containerColor: Color(0xFF7EC893),
              containerTextColor: Color(0xFF388C4E),
            ),
            FindBookContainer(
              containerText: 'Comics',
              containerColor: Color(0xFF757575),
              containerTextColor: Color(0xFF424242),
            ),
          ],
        ),
      ],
    );
  }
}
