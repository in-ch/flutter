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

# 네비게이터와 푸시네임드 메소드 

- context 값이 필요치 않다면 보통 _로 작성한다. 
- MaterialApp의 initialRoute와 pushNamed를 이용하면 주소를 route마다 정할 수 있어서 더 직관적인 navigator 이동이 가능하다. 

# Collection and Generic 

- String interpolation -> $a 님 반갑습니다 => 홍길동님 반갑습니다. 템플렛 리터널이랑 비슷한 거다. 
- Collection: 데이터들을 모아서 가지고 있는 자료 구조(list, set, map 등 등)
- Generic: Collection이 가지고 있는 데이터들의 데이터 타입을 지정 
- list의 종류는 2가지가 있다. fixed-length list와 growable list 이렇게 2개 

# stateful widget (1)

- state란 UI가 변경되도록 영향을 미치는 데이터이다. 
- Flutter App의 구성은 우리가 컨트롤하고 만지는 Widget tree, element tree, render tree가 있다. element tree는 widget tree를 1:1 대응하고 widget     
  tree의 속성 정보를 저장하는 곳이다. 
  따라서 hot reload를 진행할 때 바뀐 부분만 체킹해서 render tree에 전달해서 바뀐 부분만 rebuild 할 수 있는 것이다. 
- 따라서 statleless widget의 Text의 값이 변한다면 그것은 reload가 진행된 후 rebuild가 진행되는 것이므로 데이터가 변하는 것이 아니다. (오직 rebuild를 통해서만 
  새로운 state를 적용 할 수 있다. )
- render tree는 element tree와 1:1 대응한다. 
- stateless의 build 과정 => Container widget -> hot reload -> build method -> widget tree rebuild -> element tree link update -> 
  element tree info -> render tree -> Render object re-rendering 

# stateful widget (2) 

- 두 위젯의 공통점은 생성자를 통해서 외부에서 데이터가 입력이 되면 그 결과를 반영하기 위해서 build method가 호출되고 위젯들이 rebuild되고 필요한 부분의 ui가 다시 랜더링하게 된다는 것 
- 차이점은 stateful widget은 내부에 state라는 또다른 클래스가 있다는 것이고 두개가 결합되서 stateful widget을 만드는 것이다. 
- stateful widget의 build method는 state class가 가지고 있다. 
- stateful widget의 build method가 호출되는 2가지 경우 1) child 위젯의 생성자를 통해서 데이터가 전달될 때 2) Internal state가 바뀔 때 
- 왜 2가지 클래스를 갖냐면 기본적으로 stateful widget은 widget을 상속받으므로 처음에는 임뮤터블하므로 state라는 클래스를 하나 더 생성하는 것이다.

# 로그인과 주사위 게임 

- SingleChildScrollView : react native의 avoidKeyboardView와 비슷한 역할
- TextField : 텍스트 입력 폼 
- TextField의 InputDecorationTheme속성 : label 색상을 지정할 수 있음.  -> data 따로 textField 따로 
- TextField의 keyboardType속성 : 키보드 타입을 정의해줄 수 있음. 

# 로그인과 주사위 게임 2
 
 - TextField에 입력한 값을 사용하기 위해서는 TextEditingController라는 컨트롤러를 생성해서 사용함. -> textfield와 연결
 - 원래 TextEditingController를 생성하고 나서 메모리 누수를 막기위해 dispose method라는 것을 실행시켜야 하는데 여기서는 생략.

 # 로그인과 주사위 게임 3

 - TextField에 autoFocus를 주면 화면이 렌더링 될 시 자동으로 키보드가 올라온다.
 - GestureDetector 기능을 통해 사용자의 행동을 감지할 수 있다.
 - onTap: 은 클릭 뿐 아니라 드래그나 버튼 두번 누르기 등 다양하게 쓰이고 onPress:는 오직 버튼을 눌렀을 때만 쓰인다.
 - FocusNode : 포커스를 받는 특정 위젯을 식별, FocusScope: 어떤 위젯들까지 포커스를 받는지 범위를 나타냄
 - setState로 변수 바꿀 수 있음.
 - flutter toast 라이브러리 유용한 듯

 # final과 const의 차이점 

 - final이나 const를 modify(제어자)라고 한다. 
 - 둘의 공통점은 변수값이 초기화된 후 변수값을 바꿀 수 없다. 
 - final 변수값을 초기화하는 방법은 2가지이다. 첫번째는 변수 선언 시 초기화하는 것이고, 두번째는 객체 생성 시 외부데이터를 받아서 생성자를 통해서 초기화하는 방법이다. 
 - 느낌은 대충 final은 중간에 값을 초기화 시키고 다시는 못 바꾸게 하는 느낌, const는 그냥 처음부터 값이랑 같이 선언해서 쓰는 느낌 
 - 그니깐 앱이 실행된 다음에 사용자에 의해서 초기화하는 느낌. -> 이런 특성때문에 run-time constant라고 부름. (앱이 실행된 다음에 초기화됨)
 - const는 compile-time constant이고 컴파일 시에 상수가 됨. -> const 변수는 선언과 동시에 초기화됨. 


 # refactoring 

 - Opacity라는 위젯이 있음. 그리고 child에 Image를 줄 수 있음. 
 - Shape를 통해 border-radius를 줄 수도 있음. 
 - Props를 넘기는 법은 react랑 비슷한듯 .. 
 - _를 붙이면 같은 파일 내에서만 접근 가능하고 접근제어자라는 뜻이며, 자바나 c의 private랑 역할을 똑같음. 

 # Future, async, await 

 - Future : 일종의 약속, 영수증, 아직 개봉하지 않은 박스 등 ..  javascript의 Promise랑 같은 개념임. 
 - 미래에 String, int, image 등이 구체적인 결과물로 나타나서 실제적인 객체로 반환된다는 개념 
 - Future<String>같이 미리 반환받을 값을 지정해 줄 수 있음. 
 - Synchronous 개념: 오직 한가지 일만 수행 
 - asynchronous 개념: 일을 하는 데 있어서 추구하는 목적이 다를 수 있고 동시에 일어날 수 있는 방식으로 일하는 방식

 - Future 클래스는 비동기 작업을 할 때 사용
 - Future는 일정 소요시간 후에 실제 데이터나 에어를 반환
 - async 클래스는 await 메스서드를 가짐
 - await로 선언된 메서드는 응답이 처리될 때 까지 대기 

