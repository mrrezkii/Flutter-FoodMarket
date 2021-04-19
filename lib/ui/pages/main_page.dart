part of 'pages.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: "FAFAFC".toColor(),
            ),
          ),
          SafeArea(child: Center(child: Text("Body Area"))),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavBar(),
          )
        ],
      ),
    );
  }
}
