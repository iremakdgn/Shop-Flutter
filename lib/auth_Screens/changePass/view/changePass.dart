import 'package:beeb_shop/helper_Ui/ui_componant.dart';
import 'package:beeb_shop/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChangePass extends StatelessWidget {
  const ChangePass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => Scaffold(
        backgroundColor: Color(0xffF6F6F9),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: 30.h,
                right: 0.w,
                child: IconButton(
                  iconSize: 30,
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_forward_rounded),
                  color: Colors.black,
                ),
              ),
              Padding(
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
                      'Şifre Değiştir',
                      style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Şifrenizi değiştirebilmeniz için\n size bir aktivasyon kodu göndereceğiz',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Ui.textFeild(hintText: 'E-posta veya telefon numarası'),
                    SizedBox(height: 20.h),
                    Ui.button(
                        text: 'Kodu Gönder',
                        onPressed: () {
                          Get.toNamed(Routes.AcceptCode);
                        }),
                    SizedBox(height: 80.h),
                    InkWell(
                      onTap: () => Get.toNamed(Routes.LogIn),
                      child: Text(
                        'Giriş Yap',
                        style: TextStyle(
                          color: Color(0xff0C74C3),
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
