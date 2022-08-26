
import 'package:flutter/material.dart';
import '../../utils/margins.dart';
class CandidateGroupInterview extends StatelessWidget {
  const CandidateGroupInterview({Key? key}) : super(key: key);
  static const routeName = "candidate_group_interview";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Candidate Group"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Candidates", style: TextStyle(
                fontSize: 18
            ),),
            YMargin(20),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person, color: Colors.white)),
                title: Text("Nikki"),
              ),),


            YMargin(20),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person, color: Colors.white)),
                title: Text("James"),
              ),),
            YMargin(20),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person, color: Colors.white)),
                title: Text("Elsa"),
              ),),
          ],
        ),
      ),
    );
  }
}
