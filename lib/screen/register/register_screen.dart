import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 18,
            color: Colors.white,),
        ),
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildPageTitle(),
              const SizedBox(height: 23),
              _buildFormRegister(),
              _buildOrSplitDivider(),
              _buildSocialRegister(),
              _buildHaveAccount(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageTitle() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 40),
      child: Text(
        "Sign Up",
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          fontFamily: "Lato",
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildFormRegister() {
    return Form(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUsernameField(),
            _buildEmailField(),
            _buildPhoneField(),
            // const SizedBox(height: 25,),
            _buildPasswordField(),
            _buildRegisterButton(),

          ],
        ),
      ),
    );
  }

  Widget _buildUsernameField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Full name",
              style: TextStyle(
                color: Colors.white.withOpacity(0.87),
                fontSize: 16,
                fontFamily: "Lato",
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Full name",
                  hintStyle: const TextStyle(
                    color: Color(0xFF535353),
                    fontSize: 16,
                    fontFamily: "Lato",
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  fillColor: const Color(0xFF1D1D1D),
                  filled: true,
                ),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: "Lato",
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _buildEmailField() {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email address",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.87),
                  fontSize: 16,
                  fontFamily: "Lato",
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email address",
                    hintStyle: const TextStyle(
                      color: Color(0xFF535353),
                      fontSize: 16,
                      fontFamily: "Lato",
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    fillColor: const Color(0xFF1D1D1D),
                    filled: true,
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Lato",
                  ),
                  obscureText: true,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPhoneField() {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Phone number",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.87),
                  fontSize: 16,
                  fontFamily: "Lato",
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Phone number",
                    hintStyle: const TextStyle(
                      color: Color(0xFF535353),
                      fontSize: 16,
                      fontFamily: "Lato",
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    fillColor: const Color(0xFF1D1D1D),
                    filled: true,
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Lato",
                  ),
                  obscureText: true,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordField() {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Password",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.87),
                  fontSize: 16,
                  fontFamily: "Lato",
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "* * * * * * * * * * *",
                    hintStyle: const TextStyle(
                      color: Color(0xFF535353),
                      fontSize: 16,
                      fontFamily: "Lato",
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    fillColor: const Color(0xFF1D1D1D),
                    filled: true,
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: "Lato",
                  ),
                  obscureText: true,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRegisterButton() {
    return Container(
      width: double.infinity,
      height: 48,
      margin: const EdgeInsets.only(top: 70),
      child: ElevatedButton(
        onPressed: null,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF8875FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            disabledBackgroundColor: const Color(0xFF8687E7).withOpacity(0.5)
        ),
        child: const Text(
          "Register",
          style: TextStyle(
              fontSize: 16,
              fontFamily: "Lato",
              color: Colors.white
          ),
        ),
      ),
    );
  }

  Widget _buildOrSplitDivider() {
    return Container(
      margin: const EdgeInsets.only(top: 45, bottom: 40),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 1,
              width: double.infinity,
              color: const Color(0xFF979797),
            ),
          ),
          const Text(
            "Or continue with",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Lato",
              color: Color(0xFF979797),
            ),
          ),
          Expanded(
            child: Container(
              height: 1,
              width: double.infinity,
              color: const Color(0xFF979797),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialRegister() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: _buildSocialGoogleRegister()),
        const SizedBox(width: 16), // Adds space between the buttons
        Flexible(child: _buildSocialFacebookRegister()),
      ],
    );
  }

  Widget _buildSocialGoogleRegister() {
    return Container(
      height: 48, // Adjust the height to match the Apple login button
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ElevatedButton(
        onPressed: () {
          // TODO: Handle Google login
        },
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          side: const BorderSide(
            width: 1,
            color: Color(0xFF8875FF),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/google.png",
              width: 12,
              height: 12,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 10),
            const Text(
              "Google",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Lato",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialFacebookRegister() {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ElevatedButton(
        onPressed: () {
          // TODO: Handle Apple login
        },
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          side: const BorderSide(
            width: 1,
            color: Color(0xFF8875FF),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SvgPicture.asset(
          "assets/images/img_facebook.svg",
          width: 12,
          height: 12,
          fit: BoxFit.contain,
        ),
          const SizedBox(width: 10),
            const Text(
              "Facebook",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Lato",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHaveAccount(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 46, bottom: 20),
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          text: "Already have an account? ",
          style: const TextStyle(
            fontSize: 12,
            fontFamily: "Lato",
            color: Color(0xFF979797),
          ),
          children: [
            TextSpan(
              text: "Login",
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Lato",
                color: Colors.white.withOpacity(0.87),
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pop(context);
                },
            ),
          ],
        ),
      ),
    );
  }
}