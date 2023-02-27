import 'package:flutter/material.dart';
import 'package:taskly_mobile/core/theme_switcher.dart';
import 'package:taskly_mobile/screens/landing_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        centerTitle: true,
        elevation: 1,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {},
            leading: const CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage('https://jeffsegovia.dev/me.jpg'),
            ),
            title: const Text(
              'Jeff Segovia',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            subtitle: Text(
              'Manage your profile',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
            trailing: const Icon(Icons.chevron_right),
          ),
          const SizedBox(height: 24),
          ListView(
            shrinkWrap: true,
            children: ListTile.divideTiles(
              context: context,
              tiles: [
                ListTile(
                  leading: Icon(
                    Icons.info_outline,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: const Text('App Version'),
                  trailing: const Text('v1.0.0'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: const Text('Switch theme'),
                  trailing: const ThemeSwitcher(),
                  iconColor: Theme.of(context).primaryColor,
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: const Text('Log out'),
                  onTap: () => _logoutDialogBuilder(context),
                ),
              ],
            ).toList(),
          )
        ],
      ),
    );
  }
}

Future<void> _logoutDialogBuilder(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Logout'),
        content: const Text('Are you sure you want to log out now?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              foregroundColor: Theme.of(context).primaryColor,
            ),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const LandingScreen(),
                ),
                ((route) => false),
              );
            },
            child: const Text('Yes'),
          ),
        ],
      );
    },
  );
}
