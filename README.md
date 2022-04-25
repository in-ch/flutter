#플러터에서 제일 중요하다는 위젯이란 무엇일까

- Widget 
    1) 독립적으로 실행되는 작은 프로그램
    2) 주로 바탕화면 등에서 날씨나 뉴스, 생활정보 등을 보여줌
    3) 그래픽이나 데이터 요소를 처리하는 함수를 가지고 있음

- What is Widget in flutter?
    1) UI를 만들고 구성하는 모든 기본 단위 요소
    2) 눈에 보이지 않는 요소들까지 위젯 (레이아웃 설정을 도와주는 것까지, center, column, padding 등 등 ...)
    3) Everything is widget -> 위젯이 쌓여서 만들어지는 게 플러터 

- Most important Types of Widgets
    1) Stateless Widget
    2) Stateful Widget
    3) Inherited Widget

- Stateless와 Stateful의 일반적인 의미 
    1) Stateful => Value 값을 지속적으로 추적 보존 (계속 움직이거나 변화가 있는 위젯) -> 데이터 통신할 수 있고 값을 품을 수 있음. interaction에 따라 모양이 바뀜
    2) Stateless => 이전 상호작용의 어떠한 값도 저장하지 않음. (상대가 없는 정적인 위젯, 움직임 등이 없음) -> 스크린상에 존재만 할 뿐, 어떠한 실시간 데이터도 저장하지 않. 

- Flutter Widget tree
    1) Widget들은 tree구조로 정리될 수 있음.
    2) 한 Widget내에 얼마든지 다른 Widget들이 포함될 수 있음. 
    3) Widget은 부모 위젯과 자식 위젯으로 구성
    4) Parent widget을 widget container라고 부르기도 함. 
    ex) MyApp - MaterialApp - MyHomePage - Scaffold - 1) AppBar - text 2) Center - Column - 1) Image 2) TextField .... 등 등 트리 구조 

#플러터 프로젝트 폴더와 기본 코드 이해하기 1 

- pubspec.yaml : 프로젝트의 메타 데이터를 정리하는 것 (사용 환경, 다트 버전, 버전 등 등)
- test 폴더 : 각종 dart 관련 파일을 작성
- lib 폴더 : 99%를 여기서 작업함. 
- import 'package:flutter/material.dart`;를 무조건 상단에 써야 flutter 앱을 만들 수 있음.'
-  runApp()은 무조건 Widget을 arg를 가져야 함. 

#플러터 프로젝트 폴더와 기본 코드 이해하기 2

- MaterialApp의 ThemeData()는 앱의 기본적인 테마를 지정할 수 있다. 
- MaterialApp의 home은 앱이 정상적으로 실행되었을 때 가장 먼저 화면에 보여주는 경로이다.

#플러터 프로젝트 폴더와 기본 코드 이해하기 2

- 항상 위젯을 만들 때 stateless를 만들 것인지 stateful로 만들 지 생각해야함
- scaffold -> 무언가를 혼자 해낼 수 있는 발판임. -> 빈 화면(도화지)

#플러터 캐릭터 페이지 디자인 1. 위젯정리

- mainAxisAlignment.center -> 센터로 (세로축으로만)
- Padding:(padding: EdgeInsets.fromLTRB(left, top, right, bottom)) -> 패딩 줄 수 있음.
- Center -> 센터로 (가로축만)

#플러터 캐릭터 페이지 디자인2 : 실전 코딩

- crossAxisAlignment: CrossAxisAlignment.start -> 텍스트를 왼쪽 정렬
- SizedBox() : Margin Box
- Text 뒤에 2번째 arg로 style를 지정할 수 있음. 

#플러터 캐릭터 페이지 디자인3 : 실전코딩 part 2 

- MaterialApp 안에 debugShowCheckedModeBanner: false 를 통해 debug 표시를 없앨 수 있다. 
- <Widget>에 const를 넣으니깐 Row() 위젯을 썻을 때 에러 메시지를 출력했는데 이는 provider관련 부분으로 해당 유튜브의 provider관련 영상의 11분 35초 부분을 보면 확인할 수 있다고 한다.
- SizedBox()위젯은 height로 높이, width로 옆으로도 띄울 수 있다.
- Divider로 밑줄을 칠 수 있다.
- image를 쓰기 위해서는 pubspec.yaml에 이미지를 지정해 줘야 쓸 수 있다. 

#플러터 다트(dart) 정리 : 클래스와 위젯의 정체(Class and Widget)

- class : 속성, 기능의 정의가 들어감 -> 이걸로 만들어 진게 인스턴스 
- 프로그래밍 상에서의 클래스란? 객체가 가져야 하는 속성과 기능을 정의한 내용을 담고 있는 설계도 역할
- 프로그래밍 상에서의 객체란? 클래스가 정의된 후 메모리상에 할당되었을 때 이를 객체라고 함
- 프로그래밍 상에서의 인스턴스란? 클래스를 기반으로 생성됨. 클래스의 속성과 기능을 똑같이 가지고 있고 프로그래밍 상에서 사용되는 대상 
