import 'package:flutter/material.dart';
import 'package:jots/utils/margins.dart';

class DevTeamScreen extends StatelessWidget {
  const DevTeamScreen({Key? key}) : super(key: key);
  static const routeName = "dev_team_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dev Team"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Members", style: TextStyle(
              fontSize: 18
            ),),
            YMargin(20),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person, color: Colors.white)),
                title: Text("Jude"),
              ),),


            YMargin(20),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person, color: Colors.white)),
                title: Text("John"),
              ),),
            YMargin(20),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person, color: Colors.white)),
                title: Text("Remi"),
              ),),
            YMargin(20),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person, color: Colors.white)),
                title: Text("Antoine"),
              ),),
          ],
        ),
      ),
    );
  }
}
