import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jots/presentation/widgets/text_button_widget.dart';

import 'green_text_widget.dart';

class CandidateItemWidget extends StatelessWidget {
  CandidateItemWidget({
    Key? key,
    required this.name,
    required this.comment,
    this.note = "",
    required this.fitComment,
    this.hasLike = false,
    this.hasNote = false,
    this.hasDayNote = false,
    this.onTapName,
    this.onTapNew,
    this.onTapFlutter,
    this.onTapNewNote,
  }) : super(key: key);

  String name;
  String comment;
  String? note;
  String fitComment;
  bool? hasLike;
  bool? hasNote;
  bool? hasDayNote;
  final void Function()? onTapName;
  final void Function()? onTapNew;
  final void Function()? onTapFlutter;
  final void Function()? onTapNewNote;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 5, left: 2),
            child: CircleAvatar(
              backgroundColor: Colors.greenAccent,
              radius: 2,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GreenTextWidget(text: name, padding: 0, onTap: onTapName),
                    const SizedBox(
                      width: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 1,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      '+336 XX XX XX XX',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 1,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      fitComment,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  comment,
                ),
                const SizedBox(
                  height: 15,
                ),
                Visibility(
                  visible: hasLike!,
                  child: Column(
                    children: [
                      Container(
                        decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey.shade200)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.solidHeart,
                                color: Color(0xffC70749),
                                size: 13,
                              ),
                              TextButtonWidget(
                                onTap: onTapName,
                                name: ' Nikki',
                                fontSize: 15,
                              ),
                              const Text(
                                ' likes ',
                                style: TextStyle(letterSpacing: 0.5),
                              ),
                              TextButtonWidget(
                                name: "Flutter",
                                onTap: onTapFlutter,
                                fontSize: 15,
                              ),
                              Spacer(),
                              GreenTextWidget(
                                text: ' (new) ',
                                onTap: onTapNew,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: hasNote!,
                  child: Column(
                    children: [
                      Container(
                        decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey.shade200)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.format_list_bulleted,
                                color: Colors.grey,
                                size: 14,
                              ),
                              Text(
                                note!,
                                style: const TextStyle(fontSize: 15),
                              ),
                              Spacer(),
                              GreenTextWidget(
                                text: ' (new) ',
                                onTap: onTapNewNote,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: hasDayNote!,
                  child: Column(
                    children: [
                      Container(
                        decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey.shade200)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.format_list_bulleted,
                                color: Colors.grey,
                                size: 14,
                              ),
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text('Change Days'),
                                          content: const TextField(
                                            // controller: ,
                                            keyboardType: TextInputType.number,

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
                                child: Row(
                                  children: const [
                                    Text("Reconsider in ", style: TextStyle(fontSize: 15)),
                                    Text(
                                      "2 days",
                                      style: TextStyle(fontSize: 15,color: Color(0xff5E9CC2)),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              GreenTextWidget(
                                text: ' (new) ',
                                onTap: onTapNewNote,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}