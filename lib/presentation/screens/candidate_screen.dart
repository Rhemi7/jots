import 'package:flutter/material.dart';
import 'package:jots/model.dart';
import 'package:jots/presentation/widgets/item_widget.dart';
import '../../utils/margins.dart';

class CandidateScreen extends StatelessWidget {
  static const routeName = "candidate_screen";

  CandidateScreen(
      {Key? key,
      required this.item, this.phoneNumber})
      : super(key: key);
  String? phoneNumber;
  ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
            const YMargin(30),
            ItemWidget(value: item.name, title: "First name"),
            const YMargin(30),
             ItemWidget(value: phoneNumber!, title: "Phone number"),
            const YMargin(30),
            ItemWidget(value: item.comment, title: "Comment"),
            const YMargin(30),
            ItemWidget(value: item.note!, title: "Note"),
          ],
        ),
      ),
    );
  }
}

