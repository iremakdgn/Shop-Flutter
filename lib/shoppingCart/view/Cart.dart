import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => Scaffold(
        bottomNavigationBar: bottomAccept(),
        backgroundColor: Color(0xffF4F6FC),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100.h,
              color: Color(0xffEEC900),
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, top: 40.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () => Get.back(),
                      icon: Icon(Icons.arrow_back),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "Sepetim",
                      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: CartList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomAccept() {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 80.h,
      child: Column(
        children: [
          Container(
            color: Color(0xffEEC900),
            width: double.infinity,
            height: 30.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: DefaultTextStyle(
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold, color: Colors.black),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.ltr,
                  children: [
                    Text('2 Ürün', textDirection: TextDirection.ltr),
                    Row(
                      textDirection: TextDirection.ltr,
                      children: [
                        Text(
                          'Toplam :',
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(width: 12.w),
                        Text('10 TL', textDirection: TextDirection.ltr),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            width: double.infinity,
            height: 50.h,
            child: Center(
                child: Text(
              'Alışverişe Devam Et',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: Colors.white),
            )),
          )
        ],
      ),
    );
  }
}

class CartList extends StatelessWidget {
  const CartList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.only(
          top: 5.h,
        ),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: 2,
        itemExtent: 110.h,
        itemBuilder: (c, i) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 5.h),
            child: Container(
              // height: 100.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Positioned(
                    bottom: 3.h,
                    right: 0,
                    child: IconButton(
                      icon: Icon(
                        Icons.delete_outline,
                        color: Colors.red,
                        size: 30.sp,
                      ),
                      onPressed: () {},
                    ),
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
                    top: 5.h,
                    right: MediaQuery.of(context).size.width / 4.2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pirinç 1 Kg',
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
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(Radius.circular(12.r)),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Text(
                                  '50%',
                                  style: TextStyle(color: Colors.white, fontSize: 10.sp),
                                ),
                              ),
                            ),
                            SizedBox(width: 35.w),
                          ],
                        ),
                        SizedBox(height: 5.h),

                        //SizedBox(height: 10.h),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 5.h,
                      right: MediaQuery.of(context).size.width / 4.2,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffEEC900),
                              borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            ),
                            height: 25.h,
                            width: 27.h,
                            child: Icon(
                              Icons.minimize,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Color(0xffEEC900),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            ),
                            width: 50.w,
                            height: 25.h,
                            child: Center(
                                child: Text(
                              '2',
                              style: TextStyle(fontSize: 15.sp),
                            )),
                          ),
                          SizedBox(width: 10.w),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffEEC900),
                              borderRadius: BorderRadius.all(Radius.circular(6.r)),
                            ),
                            height: 25.h,
                            width: 27.w,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Text("Miktar"),
                        ],
                      )),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
