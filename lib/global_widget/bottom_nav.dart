import 'package:flutter/material.dart';
import 'package:four20society/constants/colors/app_colors.dart';
import 'package:four20society/feature/cart/presentation/cart_page.dart';
import 'package:four20society/feature/category/presentaion/category.dart';
import 'package:four20society/feature/dashboard/presentation/dashboards.dart';
import 'package:four20society/feature/profile/presentaion/profile.dart';
import 'package:four20society/feature/wish_list/presentation/wishlist_page.dart';

class HomePageWithBottomBar extends StatefulWidget {
  const HomePageWithBottomBar({Key? key}) : super(key: key);

  @override
  _HomePageWithBottomBarState createState() => _HomePageWithBottomBarState();
}

class _HomePageWithBottomBarState extends State<HomePageWithBottomBar> {
  int pageIndex = 0;

  final pages = [
    const DashboardScreen(),
    const ProductCategoryScreen(),
    const CardScreen(),
    const ProductWishListScreen(),
    const UserProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildMyNavBar(context),
      body: pages[pageIndex],
    );
  }

  Widget buildMyNavBar(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      decoration: const BoxDecoration(color: AppColors.app_bottombar_color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          navBarItem(
              navIcon:  Icon(Icons.home_outlined,color:pageIndex == 0 ? Colors.white : Colors.black.withOpacity(0.2)),
              context: context,
              // navIcon: Image.asset(
              //   "assets/icons/home_icon.png",
              //   color: pageIndex == 0
              //       ? Colors.white
              //       : Colors.black.withOpacity(0.2),
              //   height: 20,
              //   width: 20,
              // ),
              navTitle: "Dashboard",
              onTap: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              index: 0),
          navBarItem(
              context: context,
              navIcon: Image.asset(
                "assets/icons/category_icon.png",
                color: pageIndex == 1
                    ? Colors.white
                    : Colors.black.withOpacity(0.2),
                height: 20,
                width: 20,
              ),
              navTitle: "Categories",
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              index: 1),
          navBarItem(
              context: context,
              navIcon: Image.asset(
                "assets/icons/addcart_icon.png",
                color: pageIndex == 2
                    ? Colors.white
                    : Colors.black.withOpacity(0.2),
                height: 20,
                width: 20,
              ),
              navTitle: "AddToCart",
              onTap: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              index: 2),
          navBarItem(
              context: context,
              navIcon: Image.asset(
                "assets/icons/wishlist_icon.png",
                color: pageIndex == 3
                    ? Colors.white
                    : Colors.black.withOpacity(0.2),
                height: 20,
                width: 20,
              ),
              navTitle: "Wishlist",
              onTap: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              index: 3),
          navBarItem(
              context: context,
              navIcon: Image.asset(
                "assets/icons/profile_icon.png",
                color: pageIndex == 4
                    ? Colors.white
                    : Colors.black.withOpacity(0.2),
                height: 20,
                width: 20,
              ),
              navTitle: "Profile",
              onTap: () {
                setState(() {
                  pageIndex = 4;
                });
              },
              index: 4),
        ],
      ),
    );
  }

  Widget navBarItem(
      {required BuildContext context,
      required Widget navIcon,
      required String navTitle,
      Function()? onTap,
      required int index}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
        decoration: BoxDecoration(
            color: pageIndex == index
                ? Colors.green.withOpacity(0.2)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(50)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            navIcon,
            pageIndex == index
                ? Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      navTitle,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: pageIndex == index
                              ? FontWeight.w600
                              : FontWeight.w400,
                          color: Colors.white),
                    ),
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
