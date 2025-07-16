import 'package:one_hour_video_project/learn_flutter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return LearnFlutterPage();
              },
            ),
          );
        },
        child: Text('Learn Flutter'),
      ),
    );
  }
}
