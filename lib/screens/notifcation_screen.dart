import 'package:flutter/material.dart';

class NotifcationScreen extends StatefulWidget {
  const NotifcationScreen({super.key});

  @override
  State<NotifcationScreen> createState() => _NotifcationScreenState();
}

class _NotifcationScreenState extends State<NotifcationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notification',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body:const Column(
        children: [
          ListTile(
            title:  Text('New Release Product!'),
            subtitle:  Text(
                'The new product is "\$56 for the address safsafya street 566'),
            leading: Image(image: AssetImage('assets/images/Notfy1.png')),
          ),
          ListTile(
            title: Text('New Release Product!'),
            subtitle:  Text(
                'The new product is "\$56 for the address safsafya street 566'),
            leading: Image(image: AssetImage('assets/images/notfiy2.png')),
          ),
          ListTile(
            title:  Text('New Release Product!'),
            subtitle:  Text(
                'The new product is "\$56 for the address safsafya street 566'),
           leading: Image(image: AssetImage('assets/images/notfiy3.png')),
          ),
          ListTile(
            title: Text('New Release Product!'),
            subtitle:  Text(
                'The new product is "\$56 for the address safsafya street 566'),
            leading: Image(image: AssetImage('assets/images/notfiy4.png')),
          ),
        ],
      ),
    );
  }
}
