import 'package:beeb_shop/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var x = ['çikolata', 'bal', 'çamaşır suyu', 'kola', 'kuşbaşı', 'süt'];
  var itemList = [];
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => Scaffold(
        backgroundColor: Color(0xffDCF0E8),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 160.h,
              color: Color(0xffEEC900),
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, top: 45.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () => Get.back(),
                              icon: Icon(Icons.arrow_back),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              'Ara',
                              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                width: 40.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                    color: Color(0xffF4F6FC), borderRadius: BorderRadius.all(Radius.circular(12.r))),
                                child: IconButton(
                                  icon: Icon(Icons.shopping_cart_outlined),
                                  onPressed: () {
                                    Get.toNamed(Routes.ShoppingCart);
                                  },
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                width: 14.w,
                                height: 14.h,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.white,
                                  ),
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(right: 15.w),
                      child: Container(
                        height: 45.h,
                        width: double.infinity,
                        child: TextField(
                          onChanged: (value) {
                            filterSerach(value);
                          },
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            filled: true,
                            fillColor: Color(0xffF4F6FC),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffDCF0E8),
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.r),
                              ),
                            ),
                            contentPadding: EdgeInsets.all(5),
                            hintText: 'Ara',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                style: BorderStyle.solid,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.r),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.h),
            ///////

            /*  Column(
              children: List.generate(
                  itemList.length != 0 ? itemList.length : 0, (index) {
                return Text(itemList[index]);
              }),
            ) */
          ],
        ),
      ),
    );
  }

  void filterSerach(String value) {
    if (value == '') {
      setState(() {
        itemList.clear();
      });
    } else {
      setState(() {
        itemList.clear();
        itemList.addAll(x.where((element) => element.startsWith(value)));
      });
    }
  }
}
