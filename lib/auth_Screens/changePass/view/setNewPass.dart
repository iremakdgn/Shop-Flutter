import 'package:beeb_shop/helper_Ui/ui_componant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetNewPass extends StatelessWidget {
  const SetNewPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => Scaffold(
        backgroundColor: Color(0xffF6F6F9),
        body: SingleChildScrollView(
          physics: ScrollPhysics(
            parent: NeverScrollableScrollPhysics(),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 35.w,
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 150.h,
                  ),
                  child: Image.asset(
                    'assets/images/shop2.png',
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 25.h),
                Text(
                  'Yeni Şifre',
                  style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Yeni şifreyi girin',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.sp,
                  ),
                ),
                SizedBox(height: 20.h),
                Ui.bassTextFeild(showPass: true, text: 'Yeni Şifre'),
                SizedBox(height: 10.h),
                Ui.bassTextFeild(showPass: false, text: 'Yeni şifreyi onayla'),
                SizedBox(height: 25.h),
                Ui.button(text: 'Kaydet', onPressed: () {}),
                SizedBox(height: 80.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
