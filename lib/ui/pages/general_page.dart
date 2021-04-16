part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onBackButtonPressed;
  final Widget child;
  final Color backColor;

  GeneralPage(
      {this.title = "Title",
      this.subtitle = "Subtitle",
      this.onBackButtonPressed,
      this.backColor,
      this.child});

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
            color: backColor ?? "FAFAFC".toColor(),
          )),
          SafeArea(
            child: ListView(children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: defaultMargin),
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    width: double.infinity,
                    height: 100,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        onBackButtonPressed != null
                            ? Container(
                                width: 24,
                                height: 24,
                                margin: EdgeInsets.only(right: 26),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/back_arrow.png'),
                                  ),
                                ),
                              )
                            : SizedBox(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(title,
                                style: GoogleFonts.poppins(
                                    fontSize: 22, fontWeight: FontWeight.w500)),
                            Text(subtitle,
                                style: GoogleFonts.poppins(
                                    color: "8D92AB".toColor(),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w300)),
                          ],
                        )
                      ],
                    ),
                  ),
                  child ?? SizedBox(),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
