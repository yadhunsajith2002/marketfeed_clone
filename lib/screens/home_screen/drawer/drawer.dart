import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReKC7hgv3p2XHExQUHWgv8oTYv2eUdAOWvbhMHKxdR_Ac4wMZUyg1yath1aFuedg1Giwg&usqp=CAU"),
              ),
              accountName: Text(
                "Yadhun",
                style: TextStyle(color: Colors.black),
                selectionColor: Colors.white,
              ),
              accountEmail: Text(
                "yadhun@gmail.com",
                style: TextStyle(color: Colors.black),
              )),
          // const DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          //   child: Text('Drawer Header'),
          // ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Business'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('School'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Privacy And Policy'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Logout'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
