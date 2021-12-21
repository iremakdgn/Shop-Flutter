import 'package:beeb_shop/items/view/itemDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ListItems extends StatelessWidget {
  const ListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        padding: EdgeInsets.only(
          top: 5.h,
        ),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        //itemExtent: 110.h,
        itemBuilder: (c, i) {
          return GestureDetector(
            onTap: () {
              Get.to(() => ItemDitails());
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
              child: Container(
                padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                height: 100.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12.r)),
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                    Positioned(
                      left: 0,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        child: Image.asset(
                          'assets/images/doha1.png',
                          fit: BoxFit.scaleDown,
                          height: 75.h,
                          width: 75.w,
                        ),
                      ),
                    ),
                    Positioned(
                      right: MediaQuery.of(context).size.width / 4.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Osmancık pirinci 1kg',
                            textDirection: TextDirection.ltr,
                            //softWrap: true,
                          ),
                          SizedBox(height: 5.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                              SizedBox(width: 5.w),
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
                            ],
                          ),
                          SizedBox(height: 5.h),

                          //SizedBox(height: 10.h),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 4.h,
                      right: MediaQuery.of(context).size.width / 4.2,
                      child: buttomList(
                        onPressed: () {
                          print(i);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buttomList({void Function()? onPressed}) {
    return Container(
      width: 150.w,
      height: 25.h,
      child: ElevatedButton(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Sepete ekle',
              style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.shopping_cart_outlined,
              size: 15,
            ),
          ],
        ),
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xffEEC900)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.r)),
            ),
          ),
        ),
      ),
    );
  }
}
