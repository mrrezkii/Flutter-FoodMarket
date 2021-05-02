part of 'pages.dart';

String finalEmail;
String finalPassword;
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
    finalEmail = await SecureStorage.getEmail();
    finalPassword = await SecureStorage.getPassword();
    finalToken = await SecureStorage.getToken();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () async {
      (finalToken == null)
          ? Get.to(SignInPage())
          : await context.read<UserCubit>().signIn(finalEmail, finalPassword);
      UserState state = context.read<UserCubit>().state;

      if (state is UserLoaded) {
        context.read<FoodCubit>().getFood();
        context.read<TransactionCubit>().getTransactions();
        Get.to(MainPage());
      } else {
        Get.to(SignInPage());
      }
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
