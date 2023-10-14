part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    bool isLoading = false;

    return GeneralPage(
        title: 'Sign In',
        subtitle: 'Find your best ever meal',
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
                        'Sign In',
                        style: textButtonFontStyle,
                      ),
                    ),
            ),
            Container(
              width: double.infinity,
              height: 45,
              margin: const EdgeInsets.only(top: 12),
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
                  backgroundColor: MaterialStatePropertyAll<Color>(greyColor),
                ),
                child: Text(
                  'Create New Account',
                  style: secondaryTextButtonFontStyle,
                ),
              ),
            ),
          ],
        ));
  }
}
