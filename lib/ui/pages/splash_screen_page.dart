part of 'pages.dart';

class SplashScreenSplash extends StatefulWidget {
  @override
  _SplashScreenSplashState createState() => _SplashScreenSplashState();
}

class _SplashScreenSplashState extends State<SplashScreenSplash> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Get.to(SignInPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        body: Center(
          child: Image.asset(
            'assets/logo.png',
            width: 200,
          ),
        ));
  }
}
