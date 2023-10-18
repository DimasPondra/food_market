part of 'pages.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;

    return ListView(
      children: [
        Column(
          children: [
            //// HEADER
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              height: 108,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Food Market',
                        style: blackFontStyle.copyWith(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Let's get some foods",
                        style: greyFontStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/ic_profile.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
            //// LIST OF FOOD
            Container(
              color: Colors.transparent,
              height: 258,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: mockFoods
                        .map((e) => Padding(
                              padding: EdgeInsets.only(
                                left:
                                    (e == mockFoods.first) ? defaultPadding : 0,
                                right: defaultPadding,
                              ),
                              child: FoodCard(food: e),
                            ))
                        .toList(),
                  )
                ],
              ),
            ),
            //// LIST OF FOOD (TABS)
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    selectedIndex: selectedIndex,
                    titles: const ['New Taste', 'Popular', 'Recommended'],
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Builder(builder: (_) {
                    List<Food> foods = (selectedIndex == 0)
                        ? mockFoods
                        : (selectedIndex == 1)
                            ? []
                            : [];

                    return Column(
                      children: foods
                          .map((e) => Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    defaultPadding, 0, defaultPadding, 16),
                                child: FoodListItem(
                                    food: e, itemWidth: listItemWidth),
                              ))
                          .toList(),
                    );
                  }),
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        )
      ],
    );
  }
}
