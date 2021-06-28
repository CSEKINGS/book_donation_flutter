import 'package:book_donation/views/profile_view.dart';
import 'package:book_donation/views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:book_donation/utils/constants.dart';

/// Settings page
class MiscellaneousView extends StatefulWidget {
  /// default constructor
  const MiscellaneousView({Key? key}) : super(key: key);

  @override
  _MiscellaneousViewState createState() => _MiscellaneousViewState();
}

class _MiscellaneousViewState extends State<MiscellaneousView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const ListTile(
              title: Text(
                'William John shane',
                style: TextStyle(fontSize: 20.0),
              ),
              leading: Hero(
                tag: 'profile',
                child: CircleAvatar(),
              ),
              subtitle: Text(
                'Student',
                style: TextStyle(fontSize: 15.0),
              ),
            ),
            const Divider(
              thickness: 0.6,
            ),
            Column(
              children: [
                ListTile(
                  title: const Text('Personal data'),
                  leading: const Icon(LineIcons.user),
                  trailing: const Icon(LineIcons.alternateLongArrowRight),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileView(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Settings'),
                  leading: const Icon(LineIcons.wrench),
                  trailing: const Icon(LineIcons.alternateLongArrowRight),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingsView(),
                      ),
                    );
                  },
                ),
                const Divider(
                  thickness: 0.6,
                ),
                ListTile(
                  title: const Text('FAQs'),
                  leading: const Icon(LineIcons.questionCircleAlt),
                  trailing: const Icon(LineIcons.alternateLongArrowRight),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Community'),
                  leading: const Icon(LineIcons.discord),
                  trailing: const Icon(LineIcons.alternateLongArrowRight),
                  onTap: () async {
                    Error error = ArgumentError('Could not launch $url');
                    await canLaunch(url) ? await launch(url) : throw error;
                  },
                ),
                ListTile(
                  title: const Text('About'),
                  leading: const Icon(LineIcons.infoCircle),
                  trailing: const Icon(LineIcons.alternateLongArrowRight),
                  onTap: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Book Donation'),
                        content:
                            const Text('An Open-Source projects which aims to '
                                'encourage book donation.'
                                ' \n\nMade with ❤ in Flutter'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
