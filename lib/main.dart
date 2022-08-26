import 'package:flutter/material.dart';
import 'package:jots/presentation/screens/add_new_candidate.dart';
import 'package:jots/presentation/screens/candidate_group_interview.dart';
import 'package:jots/presentation/screens/dev_team_screen.dart';
import 'package:jots/presentation/screens/feedback_screen.dart';
import 'package:jots/presentation/screens/home_screen.dart';
import 'package:jots/presentation/screens/jots_hq_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch:  Colors.blue
      ),
      home: const HomeScreen(),
      routes: <String, WidgetBuilder>{
        NewCandidate.routeName: (context) => const NewCandidate(),
        CandidateGroupInterview.routeName: (context) => const CandidateGroupInterview(),
        DevTeamScreen.routeName: (context) => const DevTeamScreen(),
        FeedbackScreen.routeName: (context) => const FeedbackScreen(),
        JotsHqScreen.routeName: (context) => const JotsHqScreen(),
      },
    );

  }
}


