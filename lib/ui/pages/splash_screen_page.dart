part of 'pages.dart';

String finalToken;

class SplashScreenSplash extends StatefulWidget {
  @override
  _SplashScreenSplashState createState() => _SplashScreenSplashState();
}

class _SplashScreenSplashState extends State<SplashScreenSplash> {
  final SecureStorage secureStorage = new SecureStorage();
  @override
  void initState() {
    super.initState();
    init();
  }

  Future init() async {
    finalToken = await SecureStorage.getToken();
    print("Token : $finalToken");
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      (finalToken == null) ? Get.to(SignInPage()) : Get.to(SuccessOrderPage());
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
