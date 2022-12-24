import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Challenge Project"),
      ),
      body: SafeArea(
        child:Column(
          children: [
            CustomColumn(),
            CustomColumn(),
            CustomColumn()
          ],
        ),

      ),
    );
  }
}

class CustomColumn extends StatelessWidget {
  const CustomColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: CustomRow(
          oneColor: Colors.black,
          twoColor: Colors.white,
          threeColor: Colors.black,
          fourColor: Colors.white,
        )),
        Center(
            child: CustomRow(
          oneColor: Colors.white,
          twoColor: Colors.black,
          threeColor: Colors.white,
          fourColor: Colors.black,
        ))
      ],
    );
  }
}

class CustomRow extends StatelessWidget {
  const CustomRow({
    Key? key,
    required this.oneColor,
    required this.twoColor,
    required this.threeColor,
    required this.fourColor,
  }) : super(key: key);

  final Color oneColor;
  final Color twoColor;
  final Color threeColor;
  final Color fourColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomContainer(colorContainer: oneColor),
        CustomContainer(colorContainer: twoColor),
        CustomContainer(colorContainer: threeColor),
        CustomContainer(colorContainer: fourColor)
      ],
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.colorContainer,
  }) : super(key: key);

  final Color colorContainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration: BoxDecoration(),
      child: Center(
          child: Text("Hi",
              style: TextStyle(
                  fontSize: 36,
                  color: Colors.cyanAccent,
                  fontWeight: FontWeight.w800))),
      color: colorContainer,
      height: 100,
      width: 98,
    );
  }
}
