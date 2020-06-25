import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Flexible(
              flex: 6,
              child: Container(
                // height: deviceHeight * 0.50,
                child: Center(
                  child: Text('Yo'),
                ),
                decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DropdownButton(
                  underline: Container(),
                  icon: Icon(Icons.more_vert),
                  items: [
                    DropdownMenuItem(
                      child: Row(
                        children: [
                          Icon(Icons.settings),
                          SizedBox(width: 8),
                          Text('Settings'),
                        ],
                      ),
                      value: 'settings',
                    ),
                    DropdownMenuItem(
                      child: Row(
                        children: [
                          Icon(Icons.tag_faces),
                          SizedBox(width: 8),
                          Text('About us'),
                        ],
                      ),
                      value: 'about',
                    ),
                  ],
                  onChanged: (itemIdentifier) {},
                ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            Flexible(
              flex: 2,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Icon(
                  Icons.play_arrow,
                  size: 40,
                  color: Colors.blue,
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Center(
              child: Text(
                'This is where a tip will go...',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
