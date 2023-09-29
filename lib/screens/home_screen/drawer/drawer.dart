import 'package:flutter/material.dart';
import 'package:marketfeed_clone/utilis/styles/textstyle.dart';

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
              decoration: BoxDecoration(
                  image: DecorationImage(
                opacity: 0.2,
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/png/pngegg.png",
                ),
              )),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    AssetImage("assets/avatar/vin-diesel-768x790.jpg"),
              ),
              accountName: Text(
                "Yadhun Sajith V V",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                selectionColor: Colors.white,
              ),
              accountEmail: Text(
                "+9175486523",
                style: TextStyle(color: Colors.grey),
              )),
          Divider(
            thickness: 3,
          ),
          ListTile(
            leading: Icon(
              Icons.bookmark_border_outlined,
              size: 30,
            ),
            title: Text(
              'My Bookmarks',
              style: StyleConstant.drawertextstyle,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.open_in_browser_sharp,
              size: 30,
            ),
            title: Text(
              'Open Demat Account',
              style: StyleConstant.drawertextstyle,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            leading: Icon(
              Icons.home_work_outlined,
              size: 30,
            ),
            title: Text(
              'About marketfeed',
              style: StyleConstant.drawertextstyle,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.privacy_tip_outlined,
              size: 30,
            ),
            title: Text(
              'Privacy and Policy',
              style: StyleConstant.drawertextstyle,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.info_outline,
              size: 30,
            ),
            title: Text(
              'Terms of use',
              style: StyleConstant.drawertextstyle,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.mail_outline_outlined,
              size: 30,
            ),
            title: Text(
              'Support',
              style: StyleConstant.drawertextstyle,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              size: 25,
            ),
            title: Text(
              'Share With friends',
              style: StyleConstant.drawertextstyle,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person_remove_outlined,
              size: 25,
            ),
            title: Text(
              'Delete Account',
              style: StyleConstant.drawertextstyle,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              size: 25,
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                  color: Colors.red, fontSize: 17, fontWeight: FontWeight.w400),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Made with 🖤 by marketfeed",
                  textAlign: TextAlign.right,
                  style: StyleConstant.stylegreyclr,
                ),
                Text(
                  "Version 4.3.18",
                  textAlign: TextAlign.right,
                  style: StyleConstant.stylegreyclr,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
