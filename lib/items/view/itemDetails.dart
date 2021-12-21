import 'package:beeb_shop/helper_Ui/ui_componant.dart';
import 'package:beeb_shop/items/widget/slider_Image_Item.dart';
import 'package:beeb_shop/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ItemDitails extends StatelessWidget {
  ItemDitails({Key? key}) : super(key: key);
  final description =
      'Osmancık, diyetlere ve sağlıklı yiyeceklere uygun yüksek kaliteli altın pirinç sunar. Düşük karbonhidrat içeriğine sahiptir.';
  final way =
      'Pirinci şeffaf hale gelene kadar suyla iyice durulayın, ardından pirinci orta boy bir karıştırma kabında sıcak suyla on beş dakika bekletin. Safranı gül suyuyla birlikte bir kapta birkaç dakika bekletin. Orta-derin bir tencerede sıvı yağı orta ateşte ısıttıktan sonra kimyon, kişniş, rezene, karanfil, biber, tarçın ve defne yaprağını ekleyip baharatları kızarana ve koku yükselene kadar karıştırın. Pirinci kaynayan sudan çıkarın ve baharat karışımının üzerine dökün, aromalar emilene kadar üç dakika karıştırın, ardından suyu pirincin üzerine ekleyin ve kaynayana ve pirinç suyunun çoğunu çekene kadar yüksek ateşte bırakın. Su. Isıyı azaltın, tencerenin kapağını kapatın ve pirinci tamamen pişene kadar yirmi dakika ateşte bırakın.';

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => Scaffold(
        bottomNavigationBar: bottomCartButton(),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => Get.back(),
                          icon: Icon(Icons.arrow_back),
                        ),
                        Text(
                          'Ürün Detayları',
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
              ),
            ),
            SizedBox(height: 8.h),
            ImageSlider(),
            SizedBox(height: 8.h),
            Expanded(
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ayrıntılar',
                          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                        ),
                        //SizedBox(height: 8.h),
                        Text(
                          description,
                          textDirection: TextDirection.ltr,
                          softWrap: true,
                          style: TextStyle(
                            height: 1,
                            wordSpacing: 0,
                            fontSize: 15.sp,
                          ),
                        ),
                        SizedBox(height: 15.h),
                        Text(
                          'Nasıl Hazırlanır',
                          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(height: 8.h),
                        Text(
                          way,
                          textDirection: TextDirection.ltr,
                          softWrap: true,
                          style: TextStyle(
                            height: 1,
                            wordSpacing: 0,
                            fontSize: 15.sp,
                          ),
                        ),
                        Text(
                          way,
                          textDirection: TextDirection.ltr,
                          softWrap: true,
                          style: TextStyle(
                            height: 1,
                            wordSpacing: 0,
                            fontSize: 15.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomCartButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.favorite_border,
              size: 35,
              color: Colors.grey,
            ),
            Ui.addCartButton(
              width: 200.w,
              height: 40.h,
              fontSize: 15.sp,
              onPressed: () {
                Get.toNamed(Routes.ShoppingCart);
              },
            ),
          ],
        ),
      ),
    );
  }
}
