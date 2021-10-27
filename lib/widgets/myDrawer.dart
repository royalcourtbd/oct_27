import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text('Aita kisu Hoilo'),
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_ios_outlined),
            title: Text('aita ki dimu'),
          ),
          ListTile(
            leading: Icon(Icons.arrow_forward_ios_outlined),
            title: Text('aita ki dimu'),
          ),
        ],
      ),
    );
  }
}
