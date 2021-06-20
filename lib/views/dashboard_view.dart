import 'package:book_donation/views/widgets/book_selection_container.dart';
import 'package:book_donation/views/widgets/donation_or_sell_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  DashboardView({Key key}) : super(key: key);

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
            DonationOrSell(),
            BookSelectionText(),
            BookSelection(),
          ],
        ),
      ),
    ));
  }
}

class TopBar extends StatelessWidget {
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

class DonationOrSell extends StatelessWidget {
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

class BookSelectionText extends StatelessWidget {
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

class BookSelection extends StatelessWidget {
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
