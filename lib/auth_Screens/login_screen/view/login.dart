import 'package:beeb_shop/helper_Ui/ui_componant.dart';
import 'package:beeb_shop/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showPass = true;

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
                        top: 85.h,
                      ),
                      child: Image.asset(
                        'assets/images/shop2.png',
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Text(
                      ' Giriş Yap',
                      style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.h),
                    Ui.textFeild(hintText: 'E-posta veya telefon numarası'),
                    SizedBox(height: 15.h),
                    Ui.bassTextFeild(
                        showPass: showPass,
                        onPressIcon: () {
                          setState(() {
                            showPass = !showPass;
                          });
                        }),
                    SizedBox(height: 20.h),
                    Ui.button(text: 'Giriş Yap', onPressed: () {}),
                    SizedBox(height: 15.h),
                    InkWell(
                      onTap: () => Get.toNamed(Routes.ChangePass),
                      child: Text(
                        ' Parolanızı mı Unuttunuz?',
                        style: TextStyle(
                          color: Color(0xffEEC900),
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SignInButton(
                          Buttons.Facebook,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                          mini: true,
                          onPressed: () {},
                        ),
                        SignInButton(
                          Buttons.Twitter,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                          mini: true,
                          onPressed: () {},
                        ),
                        SignInButton(
                          Buttons.AppleDark,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                          mini: true,
                          onPressed: () {},
                        )
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      ' ile Devam Edebilirsiniz.',
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Bir Hesabınız Yok mu?',
                          style: TextStyle(fontSize: 17.sp),
                        ),
                        SizedBox(width: 7.w),
                        InkWell(
                          onTap: () => Get.toNamed(Routes.HomeService),
                          child: Text('Kayıt Ol ', style: TextStyle(color: Color(0xffEEC900), fontSize: 17.sp)),
                        ),
                      ],
                    )
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
