import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodry/home/snacks_page_body.dart';
import 'package:foodry/util/colors.dart';
import 'package:foodry/util/dimensions.dart';
import 'package:foodry/widgets/big_text.dart';
import 'package:foodry/widgets/small_text.dart';



class MainSnacksPage extends StatefulWidget {
  const MainSnacksPage({Key? key}) : super(key: key);

  @override
  State<MainSnacksPage> createState() => _MainSnacksPageState();
}

class _MainSnacksPageState extends State<MainSnacksPage> {
  @override
  Widget build(BuildContext context) {
    print("curreny height is "+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            //showing the header

            Container(
              margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Nigeria", color: AppColors.mainColor,),
                      Row(
                        children: [
                          SmallText(text: "Ogun", color: Colors.black54,),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )

                    ],
                  ),
                  Container(
                    width: Dimensions.height45,
                    height: Dimensions.height45,
                    child: Icon(Icons.search_outlined, color: Colors.white, size: Dimensions.iconSize24,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius15),
                        color: AppColors.mainColor
                    ),
                  ),
                ],
              ),
            ),

            
            Expanded(child: SingleChildScrollView(
              child: SnacksPageBody(),
            )),
          ],
        ),
      ),
    );
  }
}
