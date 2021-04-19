part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            ///// HEADER
            Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                color: Colors.white,
                height: 100,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Food Market",
                          style: blackFontStyle1,
                        ),
                        Text(
                          "Let's get some food",
                          style: greyFontStyle.copyWith(
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.pinimg.com/originals/e6/c6/d0/e6c6d04ce6f5ef18fc4c55ce92aa160d.jpg"),
                                fit: BoxFit.cover)))
                  ],
                )),
            ///// LIST OF FOOD
            Container(
              height: 258,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    children: mockFoods
                        .map((e) => Padding(
                              padding: EdgeInsets.only(
                                  left: (e == mockFoods.first)
                                      ? defaultMargin
                                      : 0,
                                  right: defaultMargin),
                              child: FoodCard(e),
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
            ///// LIST OF FOOD (TABS)
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  CustomTabbar(
                    titles: ['New Taste', 'Popular', 'Recommended'],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Builder(
                    builder: (_) {
                      String body = (selectedIndex == 0)
                          ? 'New Taste Body'
                          : (selectedIndex == 1)
                              ? 'Popular Body'
                              : 'Recommended Body';

                      return Center(
                        child: Text(
                          body,
                          style: blackFontStyle2,
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
