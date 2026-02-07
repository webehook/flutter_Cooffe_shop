import 'package:coffie_shop/core/constants/image_constiant.dart';
import 'package:coffie_shop/core/models/category_model.dart';
import 'package:coffie_shop/core/shared/My_text_field.dart';
import 'package:coffie_shop/core/shared/buttons.dart';
import 'package:coffie_shop/core/theme/app_theme.dart';
import 'package:coffie_shop/features/home/views/home_view.dart';
import 'package:coffie_shop/features/home/widgets/My_home_banner.dart';
import 'package:coffie_shop/features/home/widgets/My_search_widget.dart';
import 'package:coffie_shop/features/home/widgets/home_backGround.dart';
import 'package:coffie_shop/features/home/widgets/lise_category_model.dart';
import 'package:coffie_shop/features/home/widgets/list_product_data.dart';
import 'package:coffie_shop/features/home/widgets/location_widget.dart';
import 'package:flutter/material.dart';


class HomwView extends StatelessWidget {
  const HomwView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Stack(
  children:[

    HomeBackGround(),

    Container(

      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 80,),
          // location widget
          LocationWidget(),
          const SizedBox(height: 24,),
          MySearchWidget(),

        //  ===Banner==
          const SizedBox(height: 24,),
           MyHomeBanner(),
          const SizedBox(height: 24,),

          MyListCategory(),
           const SizedBox(height: 24,),


          ListProduct(),





        ],
      ),

    ),

  ] ,
),

    );
  }
}








