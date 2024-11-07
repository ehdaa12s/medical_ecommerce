import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Account',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('User Profile'),
            subtitle: Text('Edit your profile'),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text('Security'),
            subtitle: Text('Change your password'),
            leading: Icon(Icons.security),
          ),
          ListTile(
            title: Text('Buy Setting'),
            subtitle: Text('Change your buy setting'),
            leading: Icon(Icons.shopping_cart),
          ),
          ListTile(
            title: Text('Setting'),
            subtitle: Text('Change your setting'),
            leading: Icon(Icons.settings),
          ),
          ListTile(
            title: Text('Rate Us'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('Reviews'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('Log Out'),
            trailing: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
