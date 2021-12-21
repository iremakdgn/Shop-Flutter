import 'package:beeb_shop/Home/widget/bestSale.dart';
import 'package:beeb_shop/Home/widget/categories.dart';
import 'package:beeb_shop/Home/widget/header.dart';
import 'package:beeb_shop/Home/widget/sales.dart';
import 'package:beeb_shop/Order/View/orderService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeService extends StatelessWidget {
  const HomeService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => Scaffold(
          bottomNavigationBar: BottomNavigationBarWidget(),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 46.h),
                  child: HeaderWidget(),
                ),
                SizedBox(height: 15.h),
                CategoriesWidget(),
                SalesWidget(),
                BestSaleWidget(),
              ],
            ),
          )),
    );
  }
}

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: changePage,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: 'AnaSayfa',
          icon: Icon(Icons.home_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Siparişlerim',
          icon: Icon(Icons.list_alt),
        ),
        BottomNavigationBarItem(
          label: 'Cüzdanım',
          icon: Icon(Icons.monetization_on),
        ),
        BottomNavigationBarItem(
          label: 'Favorilerim',
          icon: Icon(
            Icons.favorite,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Hesabım',
          icon: Icon(Icons.person_outline),
        ),
      ],
    );
  }

  int selectedIndex = 0;

  void changePage(int index) {
    setState(() {
      selectedIndex = index;
      if (selectedIndex == 0) {
        Navigator.push(context, MaterialPageRoute(builder: (_) => HomeService()));
      } else if (selectedIndex == 1) {
        Navigator.push(context, MaterialPageRoute(builder: (_) => OrderServicePage()));
      } else if (selectedIndex == 2) {
        Navigator.push(context, MaterialPageRoute(builder: (_) => OrderServicePage()));
      } else if (selectedIndex == 3) {
        Navigator.push(context, MaterialPageRoute(builder: (_) => OrderServicePage()));
      } else if (selectedIndex == 4) {
        Navigator.push(context, MaterialPageRoute(builder: (_) => OrderServicePage()));
      }
    });
  }

  void showPages(int selectedIndex) {}
}
