import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jots/presentation/screens/add_new_candidate.dart';
import 'package:jots/presentation/screens/candidate_group_interview.dart';
import 'package:jots/presentation/screens/candidate_screen.dart';
import 'package:jots/presentation/screens/dev_team_screen.dart';
import 'package:jots/presentation/screens/feedback_screen.dart';
import 'package:jots/presentation/screens/jots_hq_screen.dart';

import '../../model.dart';
import '../widgets/candidate_item_widget.dart';
import '../widgets/text_button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}





class _HomeScreenState extends State<HomeScreen> {
  List<ItemModel> candidateItems = [
    ItemModel(
      hasLike: true,
      hasNote: true,
      hasDayNote: false,
      name: "Nikki",
      fitComment: "Good fit",
      note: "Send the dev test",
      comment:
      "Good candidate, constructive, smart and listens to others.",
    ),
    ItemModel(
      hasLike: false,
      hasNote: true,
      hasDayNote: false,
      name: "James",
      fitComment: "Not a fit",
      note: "Send a negative answer",
      comment:
      "He is not interested in doing some Flutter",
    ),
    ItemModel(
      hasLike: false,
      hasNote: false,
      name: "Elsa",
      fitComment: "Maybe",
      hasDayNote: true,
      dayNote: "Reconsider in",
      note: "",
      comment:
      "Didn't express herself too much, shy?",
    ),
  ];


  @override
  Widget build(BuildContext context) {
    Future<Null> _selectDate(BuildContext context) async {
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime(2022, 05, 11),
        firstDate: DateTime(2020, 01),
        lastDate: DateTime(2050),
      );

    }
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 10,
                        child: Column(
                          children: [
                            const Text(''),
                            RichText(
                                text: TextSpan(text: "", children: [
                                  WidgetSpan(
                                      child: TextButtonWidget(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, FeedbackScreen.routeName);
                                        },
                                        name: 'Feedback',
                                      )),
                                  const TextSpan(
                                      text: " about ",
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          color: Colors.black,
                                          fontSize: 14)),
                                  WidgetSpan(
                                      child: TextButtonWidget(
                                        onTap: () {
                                          Navigator.pushNamed(context,
                                              CandidateGroupInterview.routeName);
                                        },
                                        name: 'Candidate Group Interview',
                                      )),
                                  const TextSpan(
                                      text: " for the ",
                                      style: TextStyle(
                                          letterSpacing: 0.5, color: Colors.black)),
                                  WidgetSpan(
                                      child: TextButtonWidget(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, DevTeamScreen.routeName);
                                        },
                                        name: 'Dev Team',
                                      )),
                                  const TextSpan(
                                      text: " with candidates ",
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          color: Colors.black,
                                          fontSize: 14)),
                                  WidgetSpan(
                                      child: TextButtonWidget(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      CandidateScreen(
                                                        item: candidateItems[0],
                                                        phoneNumber: '+336 XX XX XX XX',
                                                      )));
                                        },
                                        name: 'Nikki, ',
                                      )),
                                  WidgetSpan(
                                      child: TextButtonWidget(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      CandidateScreen(
                                                        item: candidateItems[1],
                                                        phoneNumber: '+336 XX XX XX XX',)));
                                        },
                                        name: 'James',
                                      )),
                                  const TextSpan(
                                      text: " and ",
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          color: Colors.black,
                                          fontSize: 14)),
                                  WidgetSpan(
                                      child: TextButtonWidget(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      CandidateScreen(
                                                        item: candidateItems[2],
                                                        phoneNumber: '+336 XX XX XX XX',)));
                                        },
                                        name: 'Elsa',
                                      )),
                                  const TextSpan(
                                      text: " , on ",
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          color: Colors.black,
                                          fontSize: 14)),
                                  WidgetSpan(
                                      child: TextButtonWidget(
                                        onTap: () {
                                          _selectDate(context);
                                        },
                                        name: '11/05/2022',
                                      )),
                                  const TextSpan(
                                      text: " at ",
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          color: Colors.black,
                                          fontSize: 14)),
                                  WidgetSpan(
                                      child: TextButtonWidget(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, JotsHqScreen.routeName);
                                        },
                                        name: 'Jots HQ.',
                                      )),
                                ])),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "All candidates were pretty nice, we started with an introduction of Jots, then we all presented ourselves, and the candidates got to ask questions. The session went pretty well.",
                              style: TextStyle(fontSize: 15.5),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Dev\nCandidate',
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      flex: 9,
                                      child: Column(
                                        children: [
                                          for(var item in candidateItems)
                                            CandidateItemWidget(
                                              hasLike: item.hasLike,
                                              hasNote: item.hasNote,
                                              name: item.name,
                                              fitComment: item.fitComment,
                                              note: item.note,
                                              comment:
                                              item.comment,
                                              hasDayNote: item.hasDayNote,

                                              onTapNewNote: () {
                                                showDialog(
                                                    context: context,
                                                    builder: (BuildContext context) {
                                                      return AlertDialog(
                                                        title: const Text('Add Note'),
                                                        content: const TextField(
                                                          // controller: ,

                                                        ),
                                                        actions: <Widget>[
                                                          TextButton(
                                                            child: const Text('CANCEL'),
                                                            onPressed: () {
                                                              Navigator.of(context).pop();
                                                            },
                                                          ),
                                                          TextButton(
                                                              child: const Text('Add'),
                                                              onPressed: () {

                                                                Navigator.of(context).pop();
                                                              }),
                                                        ],
                                                      );
                                                    });
                                              },
                                              onTapNew: () {
                                                showDialog(
                                                    context: context,
                                                    builder: (BuildContext context) {
                                                      return AlertDialog(
                                                        title: const Text('Add Likes'),
                                                        content: const TextField(
                                                          // controller: ,

                                                        ),
                                                        actions: <Widget>[
                                                          TextButton(
                                                            child: const Text('CANCEL'),
                                                            onPressed: () {
                                                              Navigator.of(context).pop();
                                                            },
                                                          ),
                                                          TextButton(
                                                              child: const Text('Add'),
                                                              onPressed: () {

                                                                Navigator.of(context).pop();
                                                              }),
                                                        ],
                                                      );
                                                    });
                                              },
                                              onTapName: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            CandidateScreen(
                                                              item: item,
                                                              phoneNumber: '+336 XX XX XX XX',
                                                            )));
                                              },
                                            ),
                                          // ListView.separated(
                                          //
                                          //     itemBuilder: (context, index) {
                                          //   return ItemWidget(
                                          //     hasLike: candidateItems[index].hasLike,
                                          //     hasNote: candidateItems[index].hasNote,
                                          //     name: candidateItems[index].name,
                                          //     fitComment: candidateItems[index].fitComment,
                                          //     note: candidateItems[index].note,
                                          //     comment:
                                          //     candidateItems[index].comment,
                                          //     onTapName: () {
                                          //       Navigator.push(
                                          //           context,
                                          //           MaterialPageRoute(
                                          //               builder: (context) =>
                                          //                   CandidateScreen(
                                          //                     item: candidateItems[index],
                                          //                     phoneNumber: '+336 XX XX XX XX',
                                          //                   )));
                                          //     },
                                          //   );
                                          // }, separatorBuilder: (index, context) {
                                          //   return YMargin(20);
                                          // }, itemCount: candidateItems.length,
                                          // shrinkWrap: true,
                                          //   physics: NeverScrollableScrollPhysics(),
                                          // ),

                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(context,
                                                  NewCandidate.routeName);
                                            },
                                            child: Row(
                                              children: const [
                                                Padding(
                                                  padding:
                                                  EdgeInsets.only(top: 5),
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                    Colors.grey,
                                                    radius: 2,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text('new dev candidate')
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: IconButton(
                              onPressed: () {}, icon: const Icon(Icons.close)))
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: const [
                      FaIcon(
                        FontAwesomeIcons.solidComment,
                        size: 14,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Feedback'),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 1,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Type",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.person_sharp,
                        size: 15,
                      ),
                      // FaIcon(
                      //   FontAwesomeIcons.loc,
                      //   size: 14,
                      // ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Jots (private)'),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 1,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


