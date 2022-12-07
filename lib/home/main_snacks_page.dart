import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodry/home/snacks_page_body.dart';
import 'package:foodry/util/colors.dart';
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
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
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
                    width: 45,
                    height: 45,
                    child: Icon(Icons.search_outlined, color: Colors.white,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor
                    ),
                  ),
                ],
              ),
            ),
            SnacksPageBody(),
          ],
        ),
      ),
    );
  }
}
