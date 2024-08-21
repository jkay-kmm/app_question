import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:app_question/screen/register/register_screen.dart';
import 'package:flutter_svg/svg.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: (){
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
              const SizedBox(height: 53),
              _buildFormLogin(),
              _buildOrSplitDivider(),
              _buildSocialLogin(),
              _buildHaveNotAccount(context),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildPageTitle(){
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 40),
      child: Text(
        "Login",
        style: TextStyle(
          color: Colors.white.withOpacity(0.87),
          fontSize: 32,
          fontWeight: FontWeight.bold,
          fontFamily: "Lato",
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
  Widget _buildFormLogin(){
    return Form(
      child: Container(
        margin:const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUsernameField(),
            _buildPasswordField(),
            _buildLoginButton(),

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
              "Username",
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
                  hintText: "Enter your Username",
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
  Widget _buildPasswordField() {
    return Container(
      margin:const EdgeInsets.only(top: 25),
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

  Widget _buildLoginButton(){
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
        child:  const  Text(
          "Login",
          style:  TextStyle(
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
      margin: const EdgeInsets.only(top: 45 , bottom: 40),
      padding:const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 1,
              width: double.infinity,
              color: const Color(0xFF979797),
            ),
          ),
          const  Text(
            "or",
            style:  TextStyle(
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

  Widget _buildSocialLogin() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: _buildSocialGoogleLogin()),
        const SizedBox(width: 16), // Adds space between the buttons
        Flexible(child: _buildSocialAppleLogin()),
      ],
    );
  }

  Widget _buildSocialGoogleLogin() {
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

  Widget _buildSocialAppleLogin() {
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
  Widget _buildHaveNotAccount(BuildContext context){
    return Container(
      margin:const EdgeInsets.only(top: 46, bottom: 20),
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(text: "Don’t have an account? ",
          style:const TextStyle(
              fontSize: 12,
              fontFamily: "Lato",
              color: Color(0xFF979797)
          ),
          children: [
            TextSpan(text: "Register",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Lato",
                  color: Colors.white.withOpacity(0.87),
                ),
                recognizer: TapGestureRecognizer()..onTap = (){
                  _goToRegisterPage(context);
                }
            ),
          ],
        ),
      ),
    );
  }
  void _goToRegisterPage(BuildContext context){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const RegisterScreen()));
  }
}
