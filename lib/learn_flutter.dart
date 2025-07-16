import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),

        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Actions");
            },
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/einstein2.jpg'),
            SizedBox(height: 10),
            Divider(
              indent: 100,
              endIndent: 100,
              thickness: 10,
              radius: BorderRadius.circular(20),
              color: Colors.amber,
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              color: Colors.blue,
              width: double.infinity,
              child: Center(
                child: Text(
                  'This is a text widget',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.blue : Colors.black,
              ),
              onPressed: () {
                debugPrint("Elevated Button Clicked");
              },
              child: Text(
                "Elevated Button",
                style: TextStyle(color: Colors.white),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("Outlined Button Clicked");
              },
              child: Text("Outlined Button"),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text Button Clicked");
              },
              child: Text("Text Button"),
            ),

            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("RowClicked");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.local_fire_department, color: Colors.blue),
                  Icon(Icons.local_activity_sharp, color: Colors.blue),
                  Icon(Icons.archive_outlined, color: Colors.blue),
                ],
              ),
            ),

            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              },
            ),

            Checkbox(
              value: isChecked,
              onChanged: (bool? checked) {
                setState(() {
                  isChecked = checked;
                });
              },
            ),

            Image.network(
              'https://media.istockphoto.com/id/2166573931/photo/reflection-of-people-on-glass-window.jpg?s=1024x1024&w=is&k=20&c=IwAaFw9LBFjdLSkU4oDqwiKCKmt4xyyqUpd-QDmKsdY=',
            ),
          ],
        ),
      ),
    );
  }
}
