part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return GeneralPage(
        title: 'Sign Up',
        subtitle: 'Register and eat',
        onBackButtonPressed: () {
          Get.back();
        },
        child: Column(
          children: [
            Container(
              width: 110,
              height: 110,
              margin: const EdgeInsets.only(top: 26),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/photo_border.png'),
                ),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/photo.png'),
                    fit: BoxFit.cover,
                  ),
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
                'Full Name',
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
                controller: nameController,
                decoration: InputDecoration(
                  hintText: 'Type your full name',
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
                'Email Address',
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
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Type your email address',
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
                'Password',
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
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Type your password',
                  border: InputBorder.none,
                  hintStyle: inputHintFontStyle,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 45,
              margin: const EdgeInsets.only(top: 24),
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: const MaterialStatePropertyAll<double>(0),
                  shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  backgroundColor: MaterialStatePropertyAll<Color>(yellowColor),
                ),
                child: Text(
                  'Continue',
                  style: textButtonFontStyle,
                ),
              ),
            ),
          ],
        ));
  }
}
