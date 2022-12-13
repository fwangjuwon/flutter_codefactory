import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen()));
}

//build method에다가 넣으면 hot restart가넝 아니면, reload
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF99231),//0x: 16진수
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'asset/img/logo.png',
          ),
        CircularProgressIndicator(
          color: Colors.white,
        ),
        ],
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  } //statelesswidget을 상속하면서 homescreend위젯을 statelesswidget으로 만들 수 있다.

}
