import 'package:coffie_shop/core/constants/image_constiant.dart';
import 'package:coffie_shop/core/models/proudct_model.dart';
import 'package:coffie_shop/core/shared/buttons.dart';
import 'package:coffie_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatefulWidget {
 final ProductModel products;
  const ProductDescription({super.key,required this.products});

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  // متغير لحفظ الحجم المختار (مثلاً نضع الافتراضي "M")
  String selectedSize = "M";
  bool isFavorite=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        // padding: const EdgeInsets.all(18),
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          padding: EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ... (باقي كود الصورة والنصوص كما هو)
            Padding(padding: EdgeInsets.only(top: 40,bottom: 10),

               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   IconButton(
                       icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,),
                       onPressed: ()=>
                       Navigator.pop(context),),

                       Text("Detail", style: MyTexeStyle.normalTitleText(size: 19)),

                IconButton(
                  iconSize: 35,

                onPressed: (){

                setState(() {
                  isFavorite=! isFavorite;
                });
              }, icon:   Icon( isFavorite? Icons.favorite : Icons.favorite_border, color:isFavorite? Colors.red:Colors.black,) ,
              ),


                 ],
               ),
             ),


              // ---------image , name , icons   --------------


              ClipRRect(
                borderRadius: BorderRadius.circular(17),
                child: Image.asset(widget.products.image,height: 240,width: double.infinity,fit: BoxFit.cover,),
              ),
              const SizedBox(height: 24,),
              Text(widget.products.name,style: MyTexeStyle.normalTitleText(size: 24),),
             const SizedBox(height: 10,),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.products.type,style: MyTexeStyle.subTitleText(),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.delivery_dining,color: MyAppColor.primaryColor,),
                      const  SizedBox(width: 30,),
                      Icon(Icons.coffee,color: MyAppColor.primaryColor,),
                      const  SizedBox(width: 30,),
                      Icon(Icons.local_cafe,color: MyAppColor.primaryColor,),
                      const   SizedBox(width: 20,),

                    ],
                  ),
                ],
              ),

            // --start--Evaluation Department----
            SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.star,color: Colors.orangeAccent,),

                  Text("${widget.products.rate}",style: MyTexeStyle.subTitleText()),
                  const   SizedBox(width: 4,),
                  const Text("(5,725)"),
                ],
              ),   // --end--Evaluation Department----

                // ---------Description --------------
              const  SizedBox(height: 24,),
              Text("Description",style: MyTexeStyle.normalTitleText(),),
              SizedBox(height: 12,),
              Text(widget.products.description,style: MyTexeStyle.subTitleText()),
              const SizedBox(height: 24,),



              // ---------Size --------------

              const Text("Size", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),

              Row(
                children: [
                  // تمرير قيمة الـisSelected ومقارنتها بالمتغير
                  ButtonSizeCoffeeWidget(
                    size: "S",
                    isSelected: selectedSize == "S",
                    onTap: () => setState(() => selectedSize = "S"),
                  ),
                  const SizedBox(width: 10),
                  ButtonSizeCoffeeWidget(
                    size: "M",
                    isSelected: selectedSize == "M",
                    onTap: () => setState(() => selectedSize = "M"),
                  ),
                  const SizedBox(width: 10),
                  ButtonSizeCoffeeWidget(
                    size: "L",
                    isSelected: selectedSize == "L",
                    onTap: () => setState(() => selectedSize = "L"),
                  ),
                ],
              ),

              const SizedBox(height: 30),


              // ---------price and Button --------------

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(

          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text("Price",style: MyTexeStyle.subTitleText(),),
              SizedBox(height: 4,),
          Text(
                " \$ ${widget.products.price}",
                style: MyTexeStyle.normalTitleText(color: MyAppColor.primaryColor),
              ),

            ],
          )

              ),
              const   SizedBox(width: 20,),
              Expanded(
          flex: 3,

          child: SizedBox(width: double.infinity,height: 68,child: MyGenrallButton(name:"Buying Now" , onPressed: (){}))

              ),

            ],

          ),

            ],
          ),
        ),
      ),
    );
  }
}






