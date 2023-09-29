import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:marketfeed_clone/screens/home_screen/resources/drawer/screens/bookmark.dart';
import 'package:marketfeed_clone/screens/home_screen/resources/drawer/screens/demat_acc.dart';
import 'package:marketfeed_clone/utilis/color_constant/color.dart';
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
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                    color: ColorConstant.textColor,
                    borderRadius: BorderRadiusDirectional.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: ColorConstant.primaryColor,
                        borderRadius: BorderRadiusDirectional.circular(10)),
                    child: Stack(
                      children: [
                        Center(
                            child: Text(
                          "YD",
                          style: StyleConstant.blacktextclr,
                        )),
                        Positioned(
                            bottom: 5,
                            right: 3,
                            child: CircleAvatar(
                              radius: 11,
                              child: Center(
                                  child: Icon(
                                Icons.camera_alt_outlined,
                                size: 15,
                              )),
                            ))
                      ],
                    ),
                  ),
                ),
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
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BookMarkScreen(),
              ));
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
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DematAccountScreen(),
              ));
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
            onTap: () async {
              final Uri url = Uri.parse('https://www.marketfeed.com');
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              }
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
