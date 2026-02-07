import 'package:coffie_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
class LocationWidget extends StatelessWidget {
  const LocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        Text("Location",style: MyTexeStyle.subTitleText(),),

        const SizedBox(height: 8,),
        Text("Bilzen, Tanjungbalai",style: MyTexeStyle.smallTitleText(color: Colors.white),)
      ],
    );
  }
}