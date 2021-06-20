import 'package:book_donation/views/widgets/book_selection_container.dart';
import 'package:book_donation/views/widgets/donation_or_sell_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Dashboard page which shows buy and sell widgets and book category widget
class DashboardView extends StatefulWidget {
  /// default constructor
  const DashboardView({Key key}) : super(key: key);

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFEFFFF4),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TopBar(),
            const DonationOrSell(),
            const BookSelectionText(),
            const BookSelection(),
          ],
        ),
      ),
    ));
  }
}

/// this is the top widget of the dashboard
/// which shows a welcome text and profile icon
class TopBar extends StatelessWidget {
  /// default constructor
  const TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Halo, Harish'),
            const Text('We wish you have a good day ')
          ],
        ),
        const CircleAvatar(),
      ],
    );
  }
}

/// this is the donation or sell widget you can find below the top bar
class DonationOrSell extends StatelessWidget {
  /// default constructor
  const DonationOrSell({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const DonationOrSellContainer(
          containerText: 'Donation',
          containerColor: Color(0xFFFFE540),
          containerTextColor: Color(0xFFCCA434),
        ),
        const DonationOrSellContainer(
          containerText: 'Selling Books',
          containerColor: Color(0xFF89C8FE),
          containerTextColor: Color(0xFF5F8BB1),
        ),
      ],
    );
  }
}

/// this is the text you see above the book category selection widget
class BookSelectionText extends StatelessWidget {
  /// default constructor
  const BookSelectionText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Book Selection'),
        const Text('See all'),
      ],
    );
  }
}

/// this is the bottom most widget in the dashboard
class BookSelection extends StatelessWidget {
  /// default constructor
  const BookSelection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const BookSelectionContainer(
              containerColor: Color(0xFF7ED9EE),
              containerText: 'Magazine',
              containerTextColor: Color(0xFF1B75A1),
            ),
            const BookSelectionContainer(
              containerText: 'College',
              containerColor: Color(0xFFFFC8B8),
              containerTextColor: Color(0xFF9C5040),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const BookSelectionContainer(
              containerText: 'Material',
              containerColor: Color(0xFF7EC893),
              containerTextColor: Color(0xFF388C4E),
            ),
            const BookSelectionContainer(
              containerText: 'Paper',
              containerColor: Color(0xFF757575),
              containerTextColor: Color(0xFF424242),
            ),
          ],
        ),
      ],
    );
  }
}
