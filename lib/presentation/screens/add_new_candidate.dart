import 'package:flutter/material.dart';

class NewCandidate extends StatefulWidget {
  const NewCandidate({Key? key}) : super(key: key);
  static const routeName = "new_candidate_screen";

  @override
  State<NewCandidate> createState() => _NewCandidateState();
}

class _NewCandidateState extends State<NewCandidate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Candidate"),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
