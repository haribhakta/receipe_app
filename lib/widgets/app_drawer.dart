import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://lh3.googleusercontent.com/ogw/ADGmqu_IY25kG4kyDEApp2Tdg-jXC6Z_3pMQom-8Ij69=s83-c-mo"),
          ),
          accountName: Text("Hari Bhakta Acharya"),
          accountEmail: Text("meharibhakta@gmail.com"),
        ),
        ListTile(
          leading: Icon(Icons.restaurant),
          title: Text("Meals"),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
          onTap: () {},
        ),
        Divider(),
      ],
    ));
  }
}
