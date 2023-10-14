part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function? onBackButtonPressed;
  final Widget? child;
  final Color? backColor;

  const GeneralPage({
    super.key,
    this.title = 'Title',
    this.subtitle = 'Subtitle',
    this.onBackButtonPressed,
    this.child,
    this.backColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
              child: Container(
            color: backColor ?? Colors.white,
          )),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.white,
                      margin: const EdgeInsets.only(bottom: defaultMargin),
                      padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding,
                      ),
                      child: Row(
                        children: [
                          onBackButtonPressed != null
                              ? GestureDetector(
                                  onTap: () {
                                    onBackButtonPressed!();
                                  },
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    margin: const EdgeInsets.only(right: 26),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('assets/back_arrow.png'),
                                      ),
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                title,
                                style: GoogleFonts.poppins(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                subtitle,
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: "8D92A3".toColor(),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      color: "FAFAFC".toColor(),
                      height: 26,
                      width: double.infinity,
                    ),
                    child ?? const SizedBox(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
