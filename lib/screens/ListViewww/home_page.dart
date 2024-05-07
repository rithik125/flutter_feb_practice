import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/screens/utils/colors.dart';



class Home_Page01 extends StatelessWidget {
  var users = [
    {
      'name': 'rithik',
      'phone': 7356096391,
      'image': "assets/icons/male.png",
      'time': 2.30,
      "unread": 2
    },
    {
      'name': 'arun',
      'phone': 33746474,
      'image': "assets/icons/man5.png",
      'time': 2.30,
      "unread": null
    },
    {
      'name': 'abijith',
      'phone': 765657523,
      'image': "assets/icons/man_male.png",
      'time': 2.30,
      "unread": null
    },
    {
      'name': 'kishan',
      'phone': 7356096391,
      'image': "assets/icons/male.png",
      'time': 2.30,
      "unread": 2
    },
    {
      'name': 'abu',
      'phone': 33746474,
      'image': "assets/icons/man5.png",
      'time': 2.30,
      "unread": 2
    },
    {
      'name': 'akashy',
      'phone': 765657523,
      'image': "assets/icons/man_male.png",
      'time': 2.30,
      "unread": 2
    },
    {
      'name': 'abishak',
      'phone': 7356096391,
      'image': "assets/icons/male.png",
      'time': 2.30,
      "unread": 2
    },
    {
      'name': 'nandhu',
      'phone': 33746474,
      'image': "assets/icons/man5.png",
      'time': 2.30,
      "unread": 2
    },
    {
      'name': 'althaf',
      'phone': 765657523,
      'image': "assets/icons/man_male.png",
      'time': 2.30,
      "unread": 2
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("My Contacts"),
      //   centerTitle: true,
      //   backgroundColor: Colors.green[400],
      // ),
      //backgroundColor: Colors.green,
      // body: ListView(
      //   children: [
      //     Text("DATA 1"),
      //     Text("DATA 2"),
      //     Text("DATa 3"),
      //     Text("DATA 4"),
      //
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
            children: List.generate(
                users.length,
                (index) => Card(
                      child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: MyColors.basicColors,
                            backgroundImage:
                                AssetImage("${users[index]['image']}"),
                          ),
                          trailing: _buildWidget(index),
                          subtitle: Text("${users[index]['phone']}"),
                          title: Text('${users[index]['name']}')),
                    ))),
      ),
    );
  }

  Widget _buildWidget(int index) {
    if (users[index]['unread'] == null) {
      return
          //Icon(Icons.phone),
          Text('${users[index]['time']}');
    } else {
      return Wrap(direction: Axis.vertical, children: [
        Text('${users[index]['time']}'),
        CircleAvatar(backgroundColor: Colors.green,
          child: Text("${users[index]['unread']}"),
          minRadius: 2,
          maxRadius: 10,
        ),
      ]);
    }
  }
}
