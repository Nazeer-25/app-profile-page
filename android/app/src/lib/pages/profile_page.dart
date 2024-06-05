import 'package:flutter/material.dart';
import 'edit_profile_page.dart';
import '../widgets/profile_pic.dart';
import '../widgets/custom_button.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ProfilePic(),
            SizedBox(height: 20),
            Text(
              'Nazeer',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Edit Profile',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfilePage()),
                );
              },
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.settings, color: Colors.yellow),
                    title: Text('Settings'),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_balance_wallet, color: Colors.yellow),
                    title: Text('Billing Details'),
                  ),
                  ListTile(
                    leading: Icon(Icons.group, color: Colors.yellow),
                    title: Text('User Management'),
                  ),
                  ListTile(
                    leading: Icon(Icons.info, color: Colors.yellow),
                    title: Text('Information'),
                  ),
                ],
              ),
            ),
            CustomButton(
              text: 'Logout',
              color: Colors.red,
              onPressed: () {
                // Exit the app
                //SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
