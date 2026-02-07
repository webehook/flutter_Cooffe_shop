

import 'package:coffie_shop/core/constants/image_constiant.dart';
import 'package:coffie_shop/core/shared/buttons.dart';
import 'package:coffie_shop/core/theme/app_theme.dart';
import 'package:coffie_shop/features/home/views/home_view.dart';
import 'package:coffie_shop/features/home/views/welcome_view_page.dart';
import 'package:flutter/material.dart';

class WelocmeViewPage extends StatelessWidget {
  const WelocmeViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Column(

              children: [
                Expanded(
                    flex: 2,
                    child:Container(
                  child: Image.asset(MyAppImage.welcome,fit: BoxFit.cover),
                  width: double.infinity,
                )),
                Expanded(
                    flex: 1,
                    child:Container(
                      color: Colors.black,
                    )),
              ],



            ),

          ),

          Container(
            child: Column(
              children: [

                // Expanded(flex: 6,child: Container()), استخدام هاذي بدالة
                Spacer(flex: 6),

                Expanded(flex: 4,child: Container(
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.center,
                    end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black,
                        Colors.black,

                      ],

                    ),

                  ),
                  
                  child: Column(
                    children: [
                      
                      Text(
                        "Fall in Love with \n Coffee in Blissful Delight!",
                        textAlign:TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      const SizedBox(height: 24,),
                      Text(
                        "Welcome to our cozy coffee corner, where every cup is a delighful for you.",
                        textAlign:TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: MyAppColor.subTitleText,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 24,),

                  Container(
                    width: double.infinity,
                    child: MyGenrallButton(
                      name: "Get Started",
                      onPressed: (){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomwView(), ),
                                (context) => false,
                        );

                      },

                         ),
                  ),
                    ],
                  ),
                ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
    // return Scaffold(
    //
    //   body: Stack(
    //
    //     children: [
    //
    //        Column(
    //           children: [
    //             Expanded(
    //                flex: 2,
    //               child: Container(
    //                 child: Image.asset(MyAppImage.welcome,fit: BoxFit.cover),
    //              width: double.infinity,
    //               ),
    //             ),
    //
    //
    //         Expanded(
    //           flex: 1,
    //             child:Container(
    //               color: Colors.black,
    //               width: double.infinity,//اجبار الكنتينر اخذ اكبر مساحه من الحافه للحافة
    //             )
    //         ),
    //
    //
    //
    //           ],
    //         ),
    //
    //       Container(
    //         child: Column(
    //           children: [
    //             Expanded(
    //               flex:6,
    //               child:Container( ),),
    //
    //             Expanded(
    //               flex: 4,
    //               child:Container(
    //                 padding: EdgeInsets.all(24),
    //                 decoration: BoxDecoration(
    //                   gradient: LinearGradient(
    //                       begin: Alignment.center,
    //                       end: Alignment.bottomCenter,
    //                       colors: [
    //                         Colors.transparent,
    //                         Colors.black,
    //                         Colors.black,
    //                       ],
    //                   ),
    //                 ),
    //                 child: Column(
    //                   children: [
    //                     Text(
    //                       "Fall in Love with \n Coffee in Blissful Delight!",
    //                       textAlign: TextAlign.center,
    //                       style: TextStyle(
    //                         fontSize: 32,
    //                         color: Colors.white,
    //                         fontWeight: FontWeight.bold,
    //
    //                       ),
    //
    //                     ),
    //
    //                     const SizedBox(height: 24,),
    //
    //                     Text(
    //                       "Welcome to our cozy coffee corner, where every cup is a delighful for you.",
    //                       textAlign: TextAlign.center,
    //                       style: TextStyle(
    //                         fontSize: 14,
    //                         color: MyAppColor.subTitleText,
    //
    //
    //                       ),
    //
    //                     ),
    //                     const SizedBox(height: 24,),
    //                     MyGenrallButton(
    //                       name: "Get Started",
    //                     onPressed: (){},
    //                     ),
    //                   ],
    //                 ),
    //               ),),
    //           ],
    //         ),
    //       ),
    //
    //     ],
    //
    //   ),
    //
    // );
  }
}


