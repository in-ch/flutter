# 플러터에서 제일 중요하다는 위젯이란 무엇일까

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

# 플러터 프로젝트 폴더와 기본 코드 이해하기 1 

- pubspec.yaml : 프로젝트의 메타 데이터를 정리하는 것 (사용 환경, 다트 버전, 버전 등 등)
- test 폴더 : 각종 dart 관련 파일을 작성
- lib 폴더 : 99%를 여기서 작업함. 
- import 'package:flutter/material.dart`;를 무조건 상단에 써야 flutter 앱을 만들 수 있음.'
-  runApp()은 무조건 Widget을 arg를 가져야 함. 

# 플러터 프로젝트 폴더와 기본 코드 이해하기 2

- MaterialApp의 ThemeData()는 앱의 기본적인 테마를 지정할 수 있다. 
- MaterialApp의 home은 앱이 정상적으로 실행되었을 때 가장 먼저 화면에 보여주는 경로이다.

# 플러터 프로젝트 폴더와 기본 코드 이해하기 2

- 항상 위젯을 만들 때 stateless를 만들 것인지 stateful로 만들 지 생각해야함
- scaffold -> 무언가를 혼자 해낼 수 있는 발판임. -> 빈 화면(도화지)

# 플러터 캐릭터 페이지 디자인 1. 위젯정리

- mainAxisAlignment.center -> 센터로 (세로축으로만)
- Padding:(padding: EdgeInsets.fromLTRB(left, top, right, bottom)) -> 패딩 줄 수 있음.
- Center -> 센터로 (가로축만)

# 플러터 캐릭터 페이지 디자인2 : 실전 코딩

- crossAxisAlignment: CrossAxisAlignment.start -> 텍스트를 왼쪽 정렬
- SizedBox() : Margin Box
- Text 뒤에 2번째 arg로 style를 지정할 수 있음. 

# 플러터 캐릭터 페이지 디자인3 : 실전코딩 part 2 

- MaterialApp 안에 debugShowCheckedModeBanner: false 를 통해 debug 표시를 없앨 수 있다. 
- <Widget>에 const를 넣으니깐 Row() 위젯을 썻을 때 에러 메시지를 출력했는데 이는 provider관련 부분으로 해당 유튜브의 provider관련 영상의 11분 35초 부분을 보면 확인할 수 있다고 한다.
- SizedBox()위젯은 height로 높이, width로 옆으로도 띄울 수 있다.
- Divider로 밑줄을 칠 수 있다.
- image를 쓰기 위해서는 pubspec.yaml에 이미지를 지정해 줘야 쓸 수 있다. 

# 플러터 다트(dart) 정리 : 클래스와 위젯의 정체(Class and Widget)

- class : 속성, 기능의 정의가 들어감 -> 이걸로 만들어 진게 인스턴스 
- 프로그래밍 상에서의 클래스란? 객체가 가져야 하는 속성과 기능을 정의한 내용을 담고 있는 설계도 역할
- 프로그래밍 상에서의 객체란? 클래스가 정의된 후 메모리상에 할당되었을 때 이를 객체라고 함
- 프로그래밍 상에서의 인스턴스란? 클래스를 기반으로 생성됨. 클래스의 속성과 기능을 똑같이 가지고 있고 프로그래밍 상에서 사용되는 대상 

# 플러터 다트(dart) 정리 : 클래스와 위젯의 정체 

- 생성자와 관련된 함수의 구조와 기능
- 생성자의 구조와 역할 
- named argument -> 필요한 값만 입력 받을 수 있음.
- 클래스 안에 함수를 생성자라고 부름(인스턴스가 만들어 질 때 딱 한 번만 호출됨.)

# 앱바(app bar)메뉴 아이콘 추가하기 

- leading 속성을 쓰면 왼쪽에 무엇인가를 추가할 수 있다. (아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때)
- actions 속성은 복수의 아이콘 버튼 등을 오른쪽에 배치할 때 쓰임.

# 플러터 : Drawer 메뉴 만들기 1 & 2

- Drawer -> ListView -> UserAccountDrawerHeader -> 1) currentAccountPicture, accoutName, accoutEmail, onDetailsPressed, decoration, otherAccountPictures
                     -> ListTile -> 1) Icon, Text, onTap

- onPressed는 주로 버튼에 사용되고, onTap은 getureDetector, InkWell 등에 사용된다. (길게 누르거나, 두번 누르거나 등 등이 되기 때문에)
- leading 속성과 반대되는 trailing 속성이라고 있다. 


# 플러터 : BuildContext에 대해 이해하기 

- widget tree에서 현재 widget의 위치를 알 수 있는 정보이다. -> 모든 함수는 build method가 있고 계속적으로 child를 가질 수 있다. 
- Widget build(BuildContext context){ return Scaffold(....)}에서 Widget은 String, int와 같은 type이고 안에 들어간 arg는 BuildContext라는 type을 가진 context라는 인자값이다. 그리고 scaffold를 return 하는 거다. 
- 여기서 context는 어디에 위치하고 있는 가에 대한 정보가 담겨져 있다. 
- 모든 위젯은 각각 자신의 BuildContext를 가지고 있는데, BuildContext는 stateless위젯이나 state 빌드 메서드에 의해서 리턴된 위젯의 부모가 된다. -> Scaffold는 statelessWidget의 context값을 그대로 물려받는다. 

# 플러터 : 스낵바(snack bar와 buildcontext)

- OutlinedButton -> react native의 TouchableOpacity같은 느낌의 위젯인 듯 
- Scaffold.of(context) method -> "현재 주어진 context에서 위로 올라가면서 가장 가까운 Scaffold를 찾아서 반환하라"
  따라서 Something.of(context)는 위로 올라가면서 가장 가까운 something를 반환함.
- Builder은 지금까지 사용했던 context가 무엇이던 간에 다 무시하고 새로운 context로 새로운 위젯을 만들라는 뜻임.

# 플러터 : 빌더(Builder widget)위젯 없이 스낵바 만들기 

- 플루터 라이브러리를 설치할 때는 pubspec.yaml에서 입력해서 설치해야 한다. 

# 컨테이너 위젯 둘러보기 

- Flutter 홈페이지 가면 다양한 위젯들을 볼 수 있다.
- Containers with no children try to be as big as possible -> 컨테이너에서 가장 중요한 부분이다. 
  무조건 페이지 내에서 가장 큰 공간을 차지한다는 뜻이다. 
- child 크기에 맞게 줄어들기도 함. -> flex 같은 거 없나...?
- flutter에도 safeArea가 있다.
- margin 쓰는 방법은 margin: EdgeInsets.all(10) 혹은 EdgeInsets.symmetric(vertical: 80,      horizontal: 20) -> 양옆, 위옆 조절 
- padding도 마찬가지 

# 컬럼 위젯과 로우 위젯 

- row와 column의 속성은 똑같음. 맞춰서 쓰면 됨. (css의 display:flex랑 느낌이 비슷하다.)
- mainAxisAlignment: MainAxisAlignment.center,   최대 공간을 차지하면서 가운데 정렬
- mainAxisSize: MainAxisSize.min,  최소 공간을 차지하면서 가운데 정렬
- verticalDirection: VerticalDirection.up,  아래부터 하나씩 쌓을 수 있음. down은 위에서 부터
- mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // 세로로 공간을 띄우면서
- mainAxisAlignment:
-     MainAxisAlignment.spaceBetween, // 세로로 공간을 완전히 차지하면서 거리 두면서
- crossAxisAlignment: CrossAxisAlignment.end  // 오른쪽 끝점 정렬
- crossAxisAlignment: CrossAxisAlignment.stretch // 가로 방향으로 쭉 늘려버림.
- https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e -> 레이아웃 사이트 

# 네비게이터 이해하기 

- Route의 개념 : 스마트폰에서 보여지는 하나의 페이지
- Navigator의 저의와 push, pop 함수, Stack 자료 구조 : 카드 덱 구조 -> 데이터가 들어오는 데로 하나씩 쌓이는 것, 이것을 관리하기 위해 Push method가 제공되고 하나하나씩 위에 쌓는 거고, pop으로 지우는 것 
  즉, Navigator 위젯으로 route를 관리하고 push와 pop method로 route를 넣고 빼고 하는 것임. 
  Navigator 위젯은 무조건 Material 위젯 안에 child로 선언되어야 함 
- MaterialPageRoute위젯과 context
- 페이지 이동 기능 구현 완성 