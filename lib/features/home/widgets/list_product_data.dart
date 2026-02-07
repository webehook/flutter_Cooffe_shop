import 'package:coffie_shop/core/constants/image_constiant.dart';
import 'package:coffie_shop/core/models/proudct_model.dart';
import 'package:coffie_shop/core/shared/buttons.dart';


import 'package:coffie_shop/core/theme/app_theme.dart';
import 'package:coffie_shop/features/home/views/product_description.dart';
import 'package:flutter/material.dart';


class ListProduct extends StatelessWidget {
   ListProduct({super.key,});

   List<ProductModel> products = [
   ProductModel(id: 1, name: "Coffe Mocha", image: MyAppImage.product01, description: "A cappuccino  is a coffee drink made with espresso and steamed milk.espresso and steamed milk.espresso and steamed milk.", type:"Deep Foam" , price: 4.53, rate: 4.5),
     ProductModel(id: 2, name: "Coffe Mocha", image: MyAppImage.product02, description: "A cappuccino  is a coffee drink made with espresso and steamed milk.", type:"Deep Foam" , price: 4.53, rate: 4.5),
     ProductModel(id: 3, name: "Coffe Mocha", image: MyAppImage.product03, description: "A cappuccino  is a coffee drink made with espresso and steamed milk.", type:"Deep Foam" , price: 4.53, rate: 4.5),
     ProductModel(id: 4, name: "Coffe Mocha", image: MyAppImage.product04, description: "A cappuccino  is a coffee drink made with espresso and steamed milk.", type:"Deep Foam" , price: 4.53, rate: 4.5),
     ProductModel(id: 5, name: "Coffe Mocha", image: MyAppImage.product05, description: "A cappuccino  is a coffee drink made with espresso and steamed milk.", type:"Deep Foam" , price: 4.53, rate: 4.5),
   ];
  @override
  Widget build(BuildContext context) {
    return

      Expanded(
      child: GridView.builder(
padding: EdgeInsets.zero,
        itemCount:products.length ,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 12,
        childAspectRatio: 1 / 1.7,
          crossAxisSpacing: 15,
        crossAxisCount: 2),

          itemBuilder: (context, index) {


        return Product_widget(product: products[index]);
      }
      ),
    );
  }
}



class Product_widget extends StatefulWidget {
  const Product_widget({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  State<Product_widget> createState() => _Product_widgetState();
}

class _Product_widgetState extends State<Product_widget> {
  bool isFavorite=false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1, // إضافة ظل خفيف للكارت
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start, // لضمان محاذاة النصوص لليسار
        children: [
          // قمنا بتغليف الصورة والنصوص بـ InkWell واحد لينتقلوا لنفس الصفحة
          InkWell(
            onTap: () {
              // هنا تضع كود الانتقال لصفحة الوصف
              // print("الانتقال لصفحة وصف: ${widget.product.name}");

              Navigator.push(context, MaterialPageRoute(builder: (BuildContext) {
               return ProductDescription(products: widget.product,);

              } ),

              );
            },
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. الصورة
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  child: Stack(

                    children: [
                      Image.asset(
                        widget.product.image,

                      ),


                       Container(
                         padding: EdgeInsets.only(right: 10,top: 4),
                         // alignment: Alignment.topRight,


                         child: Row(

                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.star,color: Colors.orangeAccent,),

                              Text("${widget.product.rate}",style: MyTexeStyle.subTitleText(color: Colors.white)),

                            ],
                          ),
                       ),



                    ],

                  ),
                ),

                // 2. النصوص (الاسم والنوع)
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.product.name,
                        style: MyTexeStyle.normalTitleText(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis, // لضمان عدم خروج النص عن الإطار
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.product.type,
                        style: MyTexeStyle.subTitleText(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const Spacer(), // لدفع السعر والزر إلى الأسفل دائماً

          // 3. السعر وزر الإضافة (يبقى مستقل عن نقرة الانتقال للوصف)
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 4, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$ ${widget.product.price}",
                  style: MyTexeStyle.normalTitleText(),
                ),

                IconButton(
                  onPressed: () {
                    // كود الإضافة للسلة
                  },
                  icon: Image.asset(
                    MyAppIcons.plus,
                    height: 32,
                    width: 32,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );


  }
}






