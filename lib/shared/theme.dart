part of 'shared.dart';

Color yellowColor = "FFC700".toColor();
Color greyColor = "8D92A3".toColor();
Color blackColor = "020202".toColor();

TextStyle greyFontStyle = GoogleFonts.poppins().copyWith(color: greyColor);
TextStyle blackFontStyle = GoogleFonts.poppins().copyWith(color: blackColor);

TextStyle labelFontStyle = GoogleFonts.poppins().copyWith(
  color: blackColor,
  fontSize: 16,
  fontWeight: FontWeight.w400,
);
TextStyle inputHintFontStyle = GoogleFonts.poppins().copyWith(
  color: greyColor,
  fontSize: 14,
  fontWeight: FontWeight.w400,
);
TextStyle textButtonFontStyle = GoogleFonts.poppins().copyWith(
  color: blackColor,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);
TextStyle secondaryTextButtonFontStyle = GoogleFonts.poppins().copyWith(
  color: Colors.white,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

const double defaultMargin = 24;
const double defaultPadding = 24;
