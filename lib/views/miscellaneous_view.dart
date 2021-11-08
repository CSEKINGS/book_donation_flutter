import 'package:book_donation/utils/constants.dart';
import 'package:book_donation/views/f_a_qs_view.dart';
import 'package:book_donation/views/widgets/custom_list_tile_icon.dart';
import 'package:book_donation/views/profile_view.dart';
import 'package:book_donation/views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';

/// Settings page
class MiscellaneousView extends StatefulWidget {
  /// default constructor
  const MiscellaneousView({Key? key}) : super(key: key);

  @override
  _MiscellaneousViewState createState() => _MiscellaneousViewState();
}

class _MiscellaneousViewState extends State<MiscellaneousView> {
  @override
  void initState() {
    super.initState();
  }

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
                  subtitle: const Text('Name, Email, Mobile number, About'),
                  leading: const CustomListTileIcon(
                    tileIcon: LineIcons.user,
                    iconColor: Color(0xFF29A1DC),
                    iconBackgroundColor: Color(0xFFDDF6F7),
                  ),
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
                  subtitle: const Text('Theme'),
                  leading: const CustomListTileIcon(
                    tileIcon: LineIcons.wrench,
                    iconColor: Color(0xFFD85A71),
                    iconBackgroundColor: Color(0xFFF0D9DF),
                  ),
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
                  subtitle: const Text('Frequently Asked Question'),
                  leading: const CustomListTileIcon(
                    tileIcon: LineIcons.questionCircleAlt,
                    iconColor: Color(0xFF388C4E),
                    iconBackgroundColor: Color(0xFFDCF8E9),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FAQsView(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Community'),
                  subtitle: const Text('Help & Support'),
                  leading: const CustomListTileIcon(
                    tileIcon: LineIcons.discord,
                    iconColor: Color(0xFF607BF3),
                    iconBackgroundColor: Color(0xFFECEFFE),
                  ),
                  onTap: () async {
                    Error error = ArgumentError('Could not launch $url');
                    await canLaunch(url) ? await launch(url) : throw error;
                  },
                ),
                ListTile(
                  title: const Text('About'),
                  subtitle: const Text('Team, Links, License'),
                  leading: const CustomListTileIcon(
                    tileIcon: LineIcons.infoCircle,
                    iconColor: Color(0xFFC3B15B),
                    iconBackgroundColor: Color(0xFFF7F2D9),
                  ),
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
                ListTile(
                  title: const Text('Logout'),
                  subtitle: const Text('Logout from app'),
                  leading: const CustomListTileIcon(
                    tileIcon: LineIcons.user,
                    iconColor: Color(0xFF29A1DC),
                    iconBackgroundColor: Color(0xFFDDF6F7),
                  ),
                  onTap: () {
                    Navigator.pop(context);
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
