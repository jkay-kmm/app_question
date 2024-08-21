
// import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  final bool isFirstTimeInstallApp;
  const WelcomePage({super.key,
    required this.isFirstTimeInstallApp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading:isFirstTimeInstallApp ? IconButton(
            onPressed: (){
              if(Navigator.canPop(context)){
                Navigator.pop(context);
              }
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 18,
              color: Colors.white,),
          ):null
      ),
      body: Column(
        children: [
          _buildTitleAndDesc(),
          const Spacer(),
          _buildButtonLogin(),
          _buildButtonRegister(),
        ],
      ),
    );
  }
  Widget _buildTitleAndDesc(){
    return Container(
      margin:  const EdgeInsets.only(top: 58),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Welcome",
              // "welcome_title".tr(),
              style: TextStyle(
                color: Color(0xFF333366),
                fontSize: 55,
                fontWeight: FontWeight.bold,
                fontFamily: "Lato",

              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 12,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Đăng nhập để bảo vệ bản quyền phần mềm",
              // "welcome_desc".tr(),
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontFamily: "Lato",
              ),
              textAlign: TextAlign.center,
            ),
          ),

        ],
      ),
    );
  }
  Widget _buildButtonLogin(){
    return Container(
      width: double.infinity,
      height: 48,
      margin: const EdgeInsets.symmetric(vertical: 28),
      padding:const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: (){
          //TODO : xu ly sau
        },
        style: OutlinedButton.styleFrom(
            backgroundColor: Color(0xFF336699),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/google.png",
              width: 32,
              height: 32,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 12,),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Text(
                "Login with Google",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Lato",
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonRegister(){
    return Container(
      width: double.infinity,
      height: 48,
      padding:const EdgeInsets.symmetric(horizontal: 24),
      child: ElevatedButton(
        onPressed: (){
          //TODO : xu ly sau
        },
        // style: OutlinedButton.styleFrom(
        //     backgroundColor: Colors.transparent,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(4),
        //     ),
        //     side: const BorderSide(
        //       width: 1,
        //       color: Color(0xFF121212) ,
        //     )
        // ),
        child: const Text(
          "Để sau ",
          style: TextStyle(
            fontSize: 16,
            fontFamily: "Lato",
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}