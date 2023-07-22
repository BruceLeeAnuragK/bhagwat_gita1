import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 7), () {
      Navigator.of(context).pushNamed("/");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://i.pinimg.com/564x/d4/58/10/d4581099199b060b11b0993c892a933e.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              "Bhagwat Gita",
              style: TextStyle(
                fontSize: 20,
                color: Colors.brown,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.book, size: 300, color: Colors.brown),
            CircularProgressIndicator(
              color: Colors.brown,
            ),
          ],
        ),
      ),
    );
  }
}
