import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    print("build 실행!");

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                if (color == Colors.blue) {
                  color = Colors.red;
                } else {
                  color = Colors.blue;
                }
                setState(() {});
                print("색상 변경! color : $color");
              },
              child: Text("색상 변경!"),
            ),
            const SizedBox(height: 32),
            Container(width: 50, height: 50, color: color),
          ],
        ),
      ),
    );
    ;
  }
}

class HomeScreen2 extends StatelessWidget {
  HomeScreen2({Key? key}) : super(key: key);
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                if (color == Colors.blue) {
                  color = Colors.red;
                } else {
                  color = Colors.blue;
                }
                print("색상 변경! color : $color");
              },
              child: Text("색상 변경!"),
            ),
            const SizedBox(height: 32),
            Container(width: 50, height: 50, color: color),
          ],
        ),
      ),
    );
  }
}
