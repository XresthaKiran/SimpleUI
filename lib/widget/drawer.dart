import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go/screen/LogPage.dart';
import 'package:go/screen/catalog1.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(0),
            child: Center(
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(color: Colors.blue),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/OIP.audMX4ZGbvT2_GJTx2c4GgHaHw?pid=ImgDet&rs=1')),
                  accountName: Text('Daniss'),
                  accountEmail: Text('Danisskiran@gmail.com')),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text(
              'Home',
              textScaleFactor: 1.3,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled),
            title: Text(
              'Profile',
              textScaleFactor: 1.3,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail),
            title: Text(
              'Email',
              textScaleFactor: 1.3,
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.lock_circle),
            title: Text(
              'Login',
              textScaleFactor: 1.3,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LogInPage()));
            },
          ),
          ListTile(
            leading: Icon(CupertinoIcons.bag),
            title: Text(
              'Products',
              textScaleFactor: 1.3,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Catalog()));
            },
          ),
        ],
      ),
    );
  }
}
