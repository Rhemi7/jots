import 'package:flutter/material.dart';
import 'package:jots/presentation/widgets/item_widget.dart';
import '../../utils/margins.dart';

class JotsHqScreen extends StatefulWidget {
  const JotsHqScreen({Key? key}) : super(key: key);
  static const routeName = "jots_hq_screen";


  @override
  State<JotsHqScreen> createState() => _JotsHqScreenState();
}

class _JotsHqScreenState extends State<JotsHqScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jots Hq"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: const [
            YMargin(30),
            ItemWidget(value: "Jots.ai is a newly created start up, where the head office is located in Paris, making a personal & collaborative productivity app augmented with IA. It’s an application at the intersection between note-taking, journaling, time and task management. It is like the wikipedia of your life and projects with an assistant that helps you organize the information and recall what matters at the right moment.", title: "About"),
          ],
        ),
      ),
    );
  }
}

