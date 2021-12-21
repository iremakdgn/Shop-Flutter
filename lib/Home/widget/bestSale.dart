import 'package:beeb_shop/helper_Ui/ui_componant.dart';
import 'package:beeb_shop/items/view/itemDetails.dart';
import 'package:beeb_shop/items/view/subCategory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BestSaleWidget extends StatelessWidget {
  const BestSaleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 250,
      color: Color(0xffF4F6FC),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'En Çok Satanlar',
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => SubCategory(title: 'En İyi Teklifler'));
                  },
                  child: Text(
                    'Hepsini Gör',
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ),
              ],
            ),
          ),
          //SizedBox(height: 7.h),
          Container(
            // color: Colors.red,
            width: MediaQuery.of(context).size.width,
            height: 400.h,
            child: GridView.builder(
              padding: EdgeInsets.only(
                top: 5.h,
                bottom: 10.h,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              // primary: true,
              // shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 150.w,
                crossAxisSpacing: 7.h,
                mainAxisSpacing: 7.w,
              ),
              itemBuilder: (c, i) => GestureDetector(
                onTap: () {
                  Get.to(() => ItemDitails());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned(
                        left: 0.w,
                        top: 0.h,
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Positioned(
                        top: 0.h,
                        left: 45.w,
                        child: Padding(
                          padding: EdgeInsets.only(top: 17.h),
                          child: Image.asset(
                            'assets/images/doha1.png',
                            fit: BoxFit.fill,
                            height: 75.h,
                            width: 75.w,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 100.h,
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            'Osmancık pirinci 1 kg',
                            textDirection: TextDirection.ltr,
                            softWrap: true,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 130.h,
                        right: 0,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: Text(
                                    ' 50%',
                                    style: TextStyle(color: Colors.white, fontSize: 10.sp),
                                  ),
                                ),
                              ),
                              SizedBox(width: 18.w),
                              Row(
                                children: [
                                  Text(
                                    '10 TL',
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  SizedBox(width: 8.w),
                                  Text(
                                    ' 5 TL',
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 5.h),
                        child: Ui.addCartButton(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
