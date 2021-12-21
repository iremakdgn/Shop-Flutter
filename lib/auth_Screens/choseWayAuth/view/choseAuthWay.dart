import 'package:beeb_shop/helper_Ui/ui_componant.dart';
import 'package:beeb_shop/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';

class ChoseAuthWay extends StatefulWidget {
  ChoseAuthWay({
    Key? key,
  }) : super(key: key);

  @override
  _ChoseAuthWayState createState() => _ChoseAuthWayState();
}

class _ChoseAuthWayState extends State<ChoseAuthWay> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => Scaffold(
        backgroundColor: Color(0xffF6F6F9),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 35.w,
          ),
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 100.h,
                ),
                child: Image.asset(
                  'assets/images/shop2.png',
                  fit: BoxFit.fill,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 25.h),
              Text(
                'Merhaba ',
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.h),
              Ui.button(text: 'Giriş Yap', onPressed: () => Get.toNamed(Routes.LogIn)),
              SizedBox(height: 15.h),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    'Yeni Bir Hesap Oluştur',
                    style: TextStyle(color: Color(0xffEEC900), fontSize: 20.sp),
                  ),
                  onPressed: () => Get.toNamed(Routes.SignUp),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(top: 6.h, bottom: 6.h)),
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xffFFFFFF)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                      ),
                    ),
                  ),
                  /* style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.only(top: 6.h, bottom: 6.h),
                    primary: Color(0xffFFFFFF),
                    shape:  
                  ), */
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SignInButton(
                    Buttons.Facebook,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                    mini: true,
                    onPressed: () {},
                  ),
                  SignInButton(
                    Buttons.Twitter,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                    mini: true,
                    onPressed: () {},
                  ),
                  SignInButton(
                    Buttons.Email,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15),
                    mini: true,
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                'ile Devam Edebilirsiniz',
                style: TextStyle(
                  fontSize: 19.sp,
                ),
              ),
              SizedBox(height: 30.h),
              InkWell(
                onTap: () {
                  Get.offNamedUntil(Routes.HomeService, (route) => false);
                },
                child: Text('Şimdi Atla ', style: TextStyle(color: Color(0xffEEC900), fontSize: 22.sp)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
