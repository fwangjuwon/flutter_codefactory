import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key); //const constructor를 자동으로 만들어준다.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( //상태바를 벗어나게 코딩을 할 수 있따!!!
        bottom: false,
        child: Container(
          color: Colors.black,
          child: Column(
            //mainAxisAlignment = 주축 정렬
            //start - 시작
            //end - 끝
            //center - 가운데
            //spacebetween - 끝~끝 사이 위젯과 위젯 간격 동일
            //spacearound - 위젯과 위젯의 간격 + 끝과 끝의 간격은 1/2
            //spaceEvenly - 위젯을 같은 간격으로 배치, 끝과 끝에도 여백으로 시작
            mainAxisAlignment: MainAxisAlignment.start,

            //CrossAxisAlignment - 반대축 정렬
            //start - 시작
            //end - 끝
            //center - 가운데
            //spacebetween - 끝~끝 사이 위젯과 위젯 간격 동일
            //spacearound - 위젯과 위젯의 간격 + 끝과 끝의 간격은 1/2
            //spaceEvenly - 위젯을 같은 간격으로 배치, 끝과 끝에도 여백으로 시작
            //stretch -최대한으로 늘린다.
            crossAxisAlignment: CrossAxisAlignment.start, //강제로 늘어나버렸따 (width정해줬지만!!)
            //mainaxissize - 주축 크기
            //max - 최대, min - 최소
            mainAxisSize: MainAxisSize.max,

            children: [
              //expanded / Flexible - 컬럼과 로우 안에서만 쓸 수 있따!!!!


              Flexible( //최대한으로 남은 사이즈를 다 차지하라
                flex: 1,
                child: Container (
                  //직접 사이즈를 정할 수 있다.
                  width: 50.0,
                  height: 50.0,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 1, //나머지 공간을 나눠 먹는 비율!!
                child: Container(
                  //직접 사이즈를 정할 수 있다.
                  width: 50.0,
                  height: 50.0,
                  color: Colors.orange,
                ),
              ),
              Expanded(
                child: Container(
                  //직접 사이즈를 정할 수 있다.
                  width: 50.0,
                  height: 50.0,
                  color: Colors.yellow,
                ),
              ),
              Expanded(
                child: Container( width: 50.0,
                  height: 50.0,
                  color: Colors.green,
                ),
                //직접 사이즈를 정할 수 있다.
              )
            ],
          ),
        ),
      ),

    );
  }
}