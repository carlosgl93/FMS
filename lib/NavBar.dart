import 'package:flutter/material.dart';
import 'package:fms/PendingRedemption.dart';

import 'LoadStock.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Test'),
            accountEmail: Text('test@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/User_icon_2.svg/240px-User_icon_2.svg.png',
                width: 90,
                height: 90,
                fit: BoxFit.cover
                ),
              )
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage(
                  'https://png.pngtree.com/thumb_back/fh260/back_our/20190619/ourmid/pngtree-company-profile-corporate-culture-exhibition-board-display-poster-material-image_131622.jpg'
                ),
                fit: BoxFit.cover
              )
            ),
            ),
          ListTile(
            leading: Icon(Icons.pending),
            title: Text('Canjes pendientes'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PendingRedemption())
              )
            }, // navigation to pending canjes
            trailing: ClipOval(
                          child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '59',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      
                    )
                  ),
                )
              ),
            )
          ),
          ListTile(
            leading: Icon(Icons.timelapse),
            title: Text('Canjes en proceso'),
            onTap: () => null, // navigation to consultar canje
          ),
          ListTile(
            leading: Icon(Icons.add_rounded),
            title: Text('Cargar stock'), // navigation to cargar stock
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoadStock())
              ),
          ),
          ListTile(
            leading: Icon(Icons.create_rounded),
            title: Text('Crear producto'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.cancel),
            title: Text('Anular canje'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Ajustes'),
            onTap: () => null,
          ),
        ],
      )
    );
  }
}