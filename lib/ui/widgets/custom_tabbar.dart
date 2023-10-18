part of 'widgets.dart';

class CustomTabBar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int) onTap;

  const CustomTabBar({
    super.key,
    required this.selectedIndex,
    required this.titles,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 50,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 48),
            height: 1,
            color: "F2F2F2".toColor(),
          ),
          Row(
            children: titles
                .map((e) => Padding(
                      padding: const EdgeInsets.only(left: defaultPadding),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              onTap(titles.indexOf(e));
                            },
                            child: Text(
                              e,
                              style: (titles.indexOf(e) == selectedIndex)
                                  ? blackFontStyle.copyWith(
                                      fontSize: 14, fontWeight: FontWeight.w500)
                                  : greyFontStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 3,
                            margin: const EdgeInsets.only(top: 13),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.5),
                              color: (titles.indexOf(e) == selectedIndex)
                                  ? blackColor
                                  : Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
