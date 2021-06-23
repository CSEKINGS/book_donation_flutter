import 'package:book_donation/views/profile_view.dart';
import 'package:book_donation/views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// Settings page
class MiscellaneousView extends StatefulWidget {
  /// default constructor
  const MiscellaneousView({Key? key}) : super(key: key);

  @override
  _MiscellaneousViewState createState() => _MiscellaneousViewState();
}

class _MiscellaneousViewState extends State<MiscellaneousView> {
  static const _url = 'https://discord.gg/kahfsxFf';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const ListTile(
              title: Text('William John shane'),
              leading: Hero(
                tag: 'profile',
                child: CircleAvatar(),
              ),
              subtitle: Text('Student'),
            ),
            const Divider(
              thickness: 0.6,
            ),
            Column(
              children: [
                ListTile(
                  title: const Text('Personal data'),
                  leading: const Icon(Icons.person_outline),
                  trailing: const Icon(Icons.arrow_forward_ios),
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
                  leading: const Icon(Icons.settings),
                  trailing: const Icon(Icons.arrow_forward_ios),
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
                  leading: const Icon(Icons.message),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                ListTile(
                    title: const Text('Community'),
                    leading: const Icon(Icons.people),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () async {
                      await canLaunch(_url)
                          ? await launch(_url)
                          : throw 'Could not launch $_url';
                    }),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
