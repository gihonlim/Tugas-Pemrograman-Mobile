import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String name = 'Gihon Lim';
    const String nim = '20190801132';
    const String background =
        '';
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(background))),
              accountName: Text(
                name,
                style: TextStyle(fontSize: 16),
              ),
              accountEmail: Text(
                nim,
                style: TextStyle(fontSize: 12),
              )),
          ListTile(
            title: Text('Nama'),
            subtitle: Text(name),
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text('NIM'),
            subtitle: Text(nim),
            leading: Icon(Icons.numbers),
          )
        ],
      ),
    );
  }
}
