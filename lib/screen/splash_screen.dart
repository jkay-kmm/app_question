// import 'package:app_question/screen/welcome/welcome_page.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// import 'onboarding/onboarding_page_view.dart';
//
// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});
//
//   Future<void> _checkAppState(BuildContext context) async{
//     // Kiem tra xem co kOnboardingCompleted
//     final isComplete = await _isOnboardingCompleted();
//     if(isComplete){
//       // di chuyen den man hinh welcome
//       if(!context.mounted){
//         return;
//       }
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const WelcomePage(
//             isFirstTimeInstallApp:false,
//           ),
//         ),
//       );
//     }else{
//       if(!context.mounted){
//         return;
//       }
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const OnboardingPageView(),
//         ),
//       );
//     }
//   }
//   Future<bool> _isOnboardingCompleted() async {
//     try {
//       final SharedPreferences prefs = await SharedPreferences.getInstance();
//       final result = prefs.getBool("kOnboardingComplete");
//       return result ?? false;
//     }catch(e){
//       return false;
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//
//       },
//       child: Scaffold(
//         backgroundColor: Color(0xFF006633),
//         body: SafeArea(
//             child: _buildBodyPage()
//         ),
//       ),
//     );
//   }
//
//   Widget _buildBodyPage() {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           _buildIconSplash(),
//           _buildTextSplash(),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildIconSplash() {
//     return Image.asset(
//       'assets/images/img_rectangle_34624197.png',
//       width: 100,
//       height: 100,
//       fit: BoxFit.contain,
//     );
//   }
//
//   Widget _buildTextSplash() {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: const Text(
//               "Chào mừng bạn đến Elearning App!",
//               style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//         ],
//       ),
//     );
//   }




import 'package:app_question/screen/welcome/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'onboarding/onboarding_page_view.dart';

import 'onboarding/onboarding_page_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  Future<void> _checkAppState(BuildContext context) async{
    // Kiem tra xem co kOnboardingCompleted
    final isComplete = await _isOnboardingCompleted();
    if(isComplete){
      // di chuyen den man hinh welcome
      if(!context.mounted){
        return;
      }
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const WelcomePage(
            isFirstTimeInstallApp:false,
          ),
        ),
      );
    }else{
      if(!context.mounted){
        return;
      }
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingPageView(),
        ),
      );
    }
  }
  Future<bool> _isOnboardingCompleted() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final result = prefs.getBool("kOnboardingComplete");
      return result ?? false;
    }catch(e){
      return false;
    }
  }
  @override
  Widget build(BuildContext context){

    _checkAppState(context);
    return  Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
          child: _buildBodyPage()
      ),
    );
  }

  Widget _buildBodyPage(){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildIconSplash(),
          _buildTextSplash()
        ],
      ),
    );
  }

  Widget _buildIconSplash(){
    return Image.asset(
      'assets/images/img_rectangle_34624197.png',
      width: 95,
      height: 80,
      fit: BoxFit.contain,
    );
  }

  Widget _buildTextSplash(){
    return Container(
      margin:const EdgeInsets.only(top: 20),
      child: const Text(
        'UpTodo',
        style: TextStyle(
        fontSize: 40,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      ),
    );
  }
}
