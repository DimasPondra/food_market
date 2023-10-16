part of 'pages.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNumController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController houseNumController = TextEditingController();
    bool isLoading = false;

    return GeneralPage(
        title: 'Address',
        subtitle: "Make sure it's valid",
        onBackButtonPressed: () {
          Get.back();
        },
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(
                defaultMargin,
                26,
                defaultMargin,
                6,
              ),
              child: Text(
                'Phone No.',
                style: labelFontStyle,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: blackColor),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                controller: phoneNumController,
                decoration: InputDecoration(
                  hintText: 'Type your phone number',
                  border: InputBorder.none,
                  hintStyle: inputHintFontStyle,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(
                defaultMargin,
                16,
                defaultMargin,
                6,
              ),
              child: Text(
                'Address',
                style: labelFontStyle,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: blackColor),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                controller: addressController,
                decoration: InputDecoration(
                  hintText: 'Type your address',
                  border: InputBorder.none,
                  hintStyle: inputHintFontStyle,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(
                defaultMargin,
                16,
                defaultMargin,
                6,
              ),
              child: Text(
                'House No.',
                style: labelFontStyle,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: blackColor),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                controller: houseNumController,
                decoration: InputDecoration(
                  hintText: 'Type your house number',
                  border: InputBorder.none,
                  hintStyle: inputHintFontStyle,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(
                defaultMargin,
                16,
                defaultMargin,
                6,
              ),
              child: Text(
                'City',
                style: labelFontStyle,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: blackColor),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton(
                isExpanded: true,
                underline: const SizedBox(),
                items: const [
                  DropdownMenuItem(child: Text('Surabaya')),
                ],
                onChanged: (item) {},
              ),
            ),
            Container(
              width: double.infinity,
              height: 45,
              margin: const EdgeInsets.only(top: 24),
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: isLoading
                  // ignore: dead_code
                  ? SpinKitFadingCircle(
                      size: 45,
                      color: yellowColor,
                    )
                  : ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll<double>(0),
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(yellowColor),
                      ),
                      child: Text(
                        'Sign Up Now',
                        style: textButtonFontStyle,
                      ),
                    ),
            ),
          ],
        ));
  }
}
