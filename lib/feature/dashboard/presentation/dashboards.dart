import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:four20society/feature/notification/presentation/notification_screen.dart';
import 'package:four20society/global_widget/app_drawar.dart';

import '../../../global_widget/custom_home_product_card.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreen();
}

class _DashboardScreen extends State<DashboardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Map> myProducts =
      List.generate(11, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height -
        kToolbarHeight -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '420Society.world',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00c8b8))),
              TextSpan(
                text: '\n COMPANY TAGLINE HERE',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      drawer: customDrawer(context: context),
      body: ListView(
        children: <Widget>[
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: const Color(0xffCCF4F1),
                      filled: true,
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                      hintText: 'What would you like ?',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.italic,
                        fontSize: 12.0,
                        color: const Color(0xff00C8B8).withOpacity(0.8),
                      ),
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide: BorderSide.none,
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.15,
                child: IconButton(
                  icon: const Icon(
                    Icons.notifications_active_outlined,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const NotificationScreen()));
                  },
                ),
              ),
            ],
          ),
          // const SizedBox(height:2 ),
          SizedBox(
            height: 115.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) => Column(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                         margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://excellis.co.in/420-society-world/public/storage/products/1678453548_50172_edbee168-fa13-41a1-85b6-47c81e322be7.jfif"))),

                      ),
                      Text(
                        myProducts[index]["name"],
                        style: const TextStyle(
                            color: Color.fromARGB(255, 39, 8, 8),
                            fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Container(
            height: 225,
            margin: const EdgeInsets.all(12),
            child: CarouselSlider.builder(
              unlimitedMode: true,
              slideIndicator: CircularSlideIndicator(
                  padding: const EdgeInsets.only(bottom: 22),
                  currentIndicatorColor: Colors.white,
                  indicatorBackgroundColor: Colors.grey),
              itemCount: 4,
              slideBuilder: (index) {
                return Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(
                        "https://excellis.co.in/420-society-world/frontend_assets/images/canabi.png"),
                    fit: BoxFit.cover,
                  )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          children: [
                            TextSpan(
                              text: 'Nationwide Cannabis \n',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 26),
                            ),
                            TextSpan(
                              text: 'Delivery, where available.\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 26),
                            ),
                            TextSpan(
                              text: 'HIGHLY CALCULATED CANNABIS\n DELIVERY',
                              style: TextStyle(
                                color: Color(0xFF00C8B8),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(4)
                          ),
                          backgroundColor: const Color(0XFF00C8B8),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Shop Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          Container(
            height: _screenHeight * 0.45,
            // color: Colors.red,
            margin: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Featured Products",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        surfaceTintColor: const Color(0Xff00C8B8),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "See all >",
                        style: TextStyle(
                          color: Color(0Xff00C8B8),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 280,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const CustomHomeProductCardWidget();
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: _screenHeight * 0.45,
            // color: Colors.red,
            margin: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Today's Deals",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        surfaceTintColor: const Color(0Xff00C8B8),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "See all >",
                        style: TextStyle(
                          color: Color(0Xff00C8B8),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 280,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const CustomHomeProductCardWidget();

                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: _screenHeight * 0.2,
            margin: const EdgeInsets.all(12),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  "https://excellis.co.in/420-society-world/frontend_assets/images/can1.jpg",
                  height: 120,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                              fontSize: 16, color: Colors.white, height: 0.8),
                          children: [
                            TextSpan(
                              text: 'Cannabis\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 38),
                            ),
                            TextSpan(
                              text: 'Vapes',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 36),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(4)
                          ),
                          backgroundColor: const Color(0XFF00C8B8),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Shop Now",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: _screenHeight * 0.45,
            // color: Colors.red,
            margin: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Concentrates",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        surfaceTintColor: const Color(0Xff00C8B8),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "See all >",
                        style: TextStyle(
                          color: Color(0Xff00C8B8),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                    height: 280,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 220,
                            margin: const EdgeInsets.only(right: 20),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color(0XFFF9F9F9),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black87.withOpacity(0.05),
                                    offset: const Offset(0, 0),
                                    blurRadius: 10,
                                    spreadRadius: 5),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 100,
                                        child: Image.network(
                                          "https://excellis.co.in/420-society-world/public/storage/products/1678453548_50172_edbee168-fa13-41a1-85b6-47c81e322be7.jfif",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const Icon(
                                        Icons.favorite_border,
                                        color: Colors.grey,
                                      ),
                                    ]),
                                Container(
                                  padding: const EdgeInsets.only(top: 8),
                                  width: 150,
                                  child: RatingBarIndicator(
                                    rating: 4,
                                    itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    itemCount: 5,
                                    itemSize: 20.0,
                                    direction: Axis.horizontal,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  "Lorem ispum dopnipe fhg",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Row(
                                  children:  [
                                    Text(
                                      "\$ 152",
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      "\$ 160",
                                      style: TextStyle(
                                        fontSize: 20,
                                        decoration: TextDecoration.lineThrough,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  "27% THC",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Humboldt Farms",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: const CircleAvatar(
                                        minRadius: 20,
                                        backgroundColor:
                                             Color(0xFF00C8B8),
                                        child: Icon(
                                          Icons.shopping_cart_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        })),
              ],
            ),
          ),
          Container(
            height: _screenHeight * 0.2,
            margin: const EdgeInsets.all(12),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(
                  "https://excellis.co.in/420-society-world/frontend_assets/images/canabi.png",
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                              fontSize: 16, color: Colors.white, height: 0.8),
                          children: [
                            TextSpan(
                              text: 'Cannabis\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 26),
                            ),
                            TextSpan(
                              text: 'Edibles',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  height: 1.2,
                                  fontSize: 22),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(4)
                          ),
                          backgroundColor: const Color(0XFF00C8B8),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Shop Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //  boxes card design
          Container(
            height: _screenHeight * 0.45,
            // color: Colors.red,
            margin: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Edibles",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        surfaceTintColor: const Color(0Xff00C8B8),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "See all >",
                        style: TextStyle(
                          color: Color(0Xff00C8B8),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 280,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        // height: 200,
                        width: 220,
                        margin: const EdgeInsets.only(right: 20),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color(0XFFF9F9F9),
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black87.withOpacity(0.05),
                                offset: const Offset(0, 0),
                                blurRadius: 10,
                                spreadRadius: 5),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                        height: 100,
                                        child: Image.network(
                                          "https://excellis.co.in/420-society-world/public/storage/products/1678453548_50172_edbee168-fa13-41a1-85b6-47c81e322be7.jfif",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                  const Icon(
                                    Icons.favorite_border,
                                    color: Colors.grey,
                                  ),
                                ]),
                            Container(
                              padding: const EdgeInsets.only(top: 8),
                              width: 150,
                              child: RatingBarIndicator(
                                rating: 4,
                                itemBuilder: (context, index) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemCount: 5,
                                itemSize: 20.0,
                                direction: Axis.horizontal,
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              "Lorem ispum dopnipe fhg",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children:  [
                                Text(
                                  "\$ 152",
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  "\$ 160",
                                  style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "27% THC",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Humboldt Farms",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: const CircleAvatar(
                                    minRadius: 20,
                                    backgroundColor: const Color(0xFF00C8B8),
                                    child: Icon(
                                      Icons.shopping_cart_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),

          // Container(
          //   height: _screenHeight * 0.55,
          //   padding: const EdgeInsets.only(bottom: 15),
          //   color: Color(0xFF00C8B8),
          //   child: Column(
          //     children: [
          //       Row(
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Padding(
          //             padding: EdgeInsets.only(left: 10, top: 10),
          //             child: Text(
          //               "Vapes",
          //               style: TextStyle(
          //                 fontSize: 22,
          //                 fontWeight: FontWeight.bold,
          //                 color: Colors.white,
          //               ),
          //             ),
          //           ),
          //           TextButton(
          //             style: TextButton.styleFrom(
          //               surfaceTintColor: const Color(0Xff00C8B8),
          //             ),
          //             onPressed: () {},
          //             child: const Text(
          //               "See all >",
          //               style: TextStyle(color: Colors.white),
          //             ),
          //           ),
          //         ],
          //       ),
          //       Expanded(
          //         child: ListView(
          //           padding: const EdgeInsets.all(8),
          //           scrollDirection: Axis.horizontal,
          //           children: [
          //             Container(
          //               // height: 200,
          //               width: 220,
          //               margin: const EdgeInsets.only(right: 20),
          //               padding: const EdgeInsets.all(8),
          //               decoration: BoxDecoration(
          //                 color: const Color(0XFFF9F9F9),
          //                 borderRadius: BorderRadius.circular(16),
          //                 boxShadow: [
          //                   BoxShadow(
          //                       color: Colors.black87.withOpacity(0.05),
          //                       offset: const Offset(0, 0),
          //                       blurRadius: 10,
          //                       spreadRadius: 5),
          //                 ],
          //               ),
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Row(
          //                       mainAxisAlignment:
          //                           MainAxisAlignment.spaceBetween,
          //                       crossAxisAlignment: CrossAxisAlignment.start,
          //                       children: [
          //                         Image.asset(
          //                           "assets/img/productImg.png",
          //                           width: 150,
          //                           height: 100,
          //                           fit: BoxFit.fill,
          //                         ),
          //                         Icon(
          //                           Icons.favorite_border,
          //                           color: Colors.grey,
          //                         ),
          //                       ]),
          //                   Container(
          //                     padding: const EdgeInsets.only(top: 8),
          //                     width: 150,
          //                     child: RatingBarIndicator(
          //                       rating: 4,
          //                       itemBuilder: (context, index) => const Icon(
          //                         Icons.star,
          //                         color: Colors.amber,
          //                       ),
          //                       itemCount: 5,
          //                       itemSize: 20.0,
          //                       direction: Axis.horizontal,
          //                     ),
          //                   ),
          //                   const SizedBox(
          //                     height: 6,
          //                   ),
          //                   const Text(
          //                     "Lorem ispum dopnipe fhg",
          //                     maxLines: 1,
          //                     overflow: TextOverflow.ellipsis,
          //                     style: TextStyle(
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.w600,
          //                     ),
          //                   ),
          //                   Row(
          //                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                     children: const [
          //                       Text(
          //                         "\$ 152",
          //                         style: TextStyle(
          //                           fontSize: 28,
          //                           fontWeight: FontWeight.w600,
          //                         ),
          //                       ),
          //                       SizedBox(
          //                         width: 12,
          //                       ),
          //                       Text(
          //                         "\$ 160",
          //                         style: TextStyle(
          //                           fontSize: 20,
          //                           decoration: TextDecoration.lineThrough,
          //                           fontWeight: FontWeight.w300,
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                   const Text(
          //                     "27% THC",
          //                     maxLines: 1,
          //                     overflow: TextOverflow.ellipsis,
          //                     style: TextStyle(
          //                       fontSize: 14,
          //                       fontWeight: FontWeight.w400,
          //                     ),
          //                   ),
          //                   Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                     children: [
          //                       const Text(
          //                         "Humboldt Farms",
          //                         maxLines: 1,
          //                         overflow: TextOverflow.ellipsis,
          //                         style: TextStyle(
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w400,
          //                         ),
          //                       ),
          //                       const SizedBox(
          //                         width: 12,
          //                       ),
          //                       GestureDetector(
          //                         onTap: () {},
          //                         child: const CircleAvatar(
          //                           minRadius: 20,
          //                           backgroundColor: const Color(0xFF00C8B8),
          //                           child: Icon(
          //                             Icons.shopping_cart_outlined,
          //                             color: Colors.white,
          //                           ),
          //                         ),
          //                       )
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             Container(
          //               // height: 200,
          //               width: 220,
          //               margin: const EdgeInsets.only(right: 20),
          //               padding: const EdgeInsets.all(8),
          //               decoration: BoxDecoration(
          //                 color: const Color(0XFFF9F9F9),
          //                 borderRadius: BorderRadius.circular(16),
          //                 boxShadow: [
          //                   BoxShadow(
          //                       color: Colors.black87.withOpacity(0.05),
          //                       offset: const Offset(0, 0),
          //                       blurRadius: 10,
          //                       spreadRadius: 5),
          //                 ],
          //               ),
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Row(
          //                       mainAxisAlignment:
          //                           MainAxisAlignment.spaceBetween,
          //                       crossAxisAlignment: CrossAxisAlignment.start,
          //                       children: [
          //                         Image.asset(
          //                           "assets/img/productImg.png",
          //                           width: 150,
          //                           height: 100,
          //                           fit: BoxFit.fill,
          //                         ),
          //                         Icon(
          //                           Icons.favorite_border,
          //                           color: Colors.grey,
          //                         ),
          //                       ]),
          //                   Container(
          //                     padding: const EdgeInsets.only(top: 8),
          //                     width: 150,
          //                     child: RatingBarIndicator(
          //                       rating: 4,
          //                       itemBuilder: (context, index) => const Icon(
          //                         Icons.star,
          //                         color: Colors.amber,
          //                       ),
          //                       itemCount: 5,
          //                       itemSize: 20.0,
          //                       direction: Axis.horizontal,
          //                     ),
          //                   ),
          //                   const SizedBox(
          //                     height: 6,
          //                   ),
          //                   const Text(
          //                     "Lorem ispum dopnipe fhg",
          //                     maxLines: 1,
          //                     overflow: TextOverflow.ellipsis,
          //                     style: TextStyle(
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.w600,
          //                     ),
          //                   ),
          //                   Row(
          //                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                     children: const [
          //                       Text(
          //                         "\$ 152",
          //                         style: TextStyle(
          //                           fontSize: 28,
          //                           fontWeight: FontWeight.w600,
          //                         ),
          //                       ),
          //                       SizedBox(
          //                         width: 12,
          //                       ),
          //                       Text(
          //                         "\$ 160",
          //                         style: TextStyle(
          //                           fontSize: 20,
          //                           decoration: TextDecoration.lineThrough,
          //                           fontWeight: FontWeight.w300,
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                   const Text(
          //                     "27% THC",
          //                     maxLines: 1,
          //                     overflow: TextOverflow.ellipsis,
          //                     style: TextStyle(
          //                       fontSize: 14,
          //                       fontWeight: FontWeight.w400,
          //                     ),
          //                   ),
          //                   Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                     children: [
          //                       const Text(
          //                         "Humboldt Farms",
          //                         maxLines: 1,
          //                         overflow: TextOverflow.ellipsis,
          //                         style: TextStyle(
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w400,
          //                         ),
          //                       ),
          //                       const SizedBox(
          //                         width: 12,
          //                       ),
          //                       GestureDetector(
          //                         onTap: () {},
          //                         child: const CircleAvatar(
          //                           minRadius: 20,
          //                           backgroundColor: const Color(0xFF00C8B8),
          //                           child: Icon(
          //                             Icons.shopping_cart_outlined,
          //                             color: Colors.white,
          //                           ),
          //                         ),
          //                       )
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          // Container(
          //   height: _screenHeight * 0.45,
          //   // color: Colors.red,
          //   margin: const EdgeInsets.all(12),
          //   child: Column(
          //     children: [
          //       Row(
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           const Text(
          //             "Pre-rolls",
          //             style:
          //                 TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          //           ),
          //           TextButton(
          //             style: TextButton.styleFrom(
          //               surfaceTintColor: const Color(0Xff00C8B8),
          //             ),
          //             onPressed: () {},
          //             child: const Text(
          //               "See all >",
          //               style: TextStyle(
          //                 color: Color(0Xff00C8B8),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //       Expanded(
          //         child: ListView(
          //           padding: const EdgeInsets.all(8),
          //           scrollDirection: Axis.horizontal,
          //           children: [
          //             Container(
          //               width: 220,
          //               margin: const EdgeInsets.only(right: 20),
          //               padding: const EdgeInsets.all(8),
          //               decoration: BoxDecoration(
          //                 color: const Color(0XFFF9F9F9),
          //                 borderRadius: BorderRadius.circular(16),
          //                 boxShadow: [
          //                   BoxShadow(
          //                       color: Colors.black87.withOpacity(0.05),
          //                       offset: const Offset(0, 0),
          //                       blurRadius: 10,
          //                       spreadRadius: 5),
          //                 ],
          //               ),
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Row(
          //                       mainAxisAlignment:
          //                           MainAxisAlignment.spaceBetween,
          //                       crossAxisAlignment: CrossAxisAlignment.start,
          //                       children: [
          //                         Image.asset(
          //                           "assets/img/productImg.png",
          //                           width: 150,
          //                           height: 100,
          //                           fit: BoxFit.fill,
          //                         ),
          //                         Icon(
          //                           Icons.favorite_border,
          //                           color: Colors.grey,
          //                         ),
          //                       ]),
          //                   Container(
          //                     padding: const EdgeInsets.only(top: 8),
          //                     width: 150,
          //                     child: RatingBarIndicator(
          //                       rating: 4,
          //                       itemBuilder: (context, index) => const Icon(
          //                         Icons.star,
          //                         color: Colors.amber,
          //                       ),
          //                       itemCount: 5,
          //                       itemSize: 20.0,
          //                       direction: Axis.horizontal,
          //                     ),
          //                   ),
          //                   const SizedBox(
          //                     height: 6,
          //                   ),
          //                   const Text(
          //                     "Lorem ispum dopnipe fhg",
          //                     maxLines: 1,
          //                     overflow: TextOverflow.ellipsis,
          //                     style: TextStyle(
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.w600,
          //                     ),
          //                   ),
          //                   Row(
          //                     children: const [
          //                       Text(
          //                         "\$ 152",
          //                         style: TextStyle(
          //                           fontSize: 28,
          //                           fontWeight: FontWeight.w600,
          //                         ),
          //                       ),
          //                       SizedBox(
          //                         width: 12,
          //                       ),
          //                       Text(
          //                         "\$ 160",
          //                         style: TextStyle(
          //                           fontSize: 20,
          //                           decoration: TextDecoration.lineThrough,
          //                           fontWeight: FontWeight.w300,
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                   const Text(
          //                     "27% THC",
          //                     maxLines: 1,
          //                     overflow: TextOverflow.ellipsis,
          //                     style: TextStyle(
          //                       fontSize: 14,
          //                       fontWeight: FontWeight.w400,
          //                     ),
          //                   ),
          //                   Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                     children: [
          //                       const Text(
          //                         "Humboldt Farms",
          //                         maxLines: 1,
          //                         overflow: TextOverflow.ellipsis,
          //                         style: TextStyle(
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w400,
          //                         ),
          //                       ),
          //                       const SizedBox(
          //                         width: 12,
          //                       ),
          //                       GestureDetector(
          //                         onTap: () {},
          //                         child: const CircleAvatar(
          //                           minRadius: 20,
          //                           backgroundColor: const Color(0xFF00C8B8),
          //                           child: Icon(
          //                             Icons.shopping_cart_outlined,
          //                             color: Colors.white,
          //                           ),
          //                         ),
          //                       )
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             Container(
          //               width: 220,
          //               margin: const EdgeInsets.only(right: 20),
          //               padding: const EdgeInsets.all(8),
          //               decoration: BoxDecoration(
          //                 color: const Color(0XFFF9F9F9),
          //                 borderRadius: BorderRadius.circular(16),
          //                 boxShadow: [
          //                   BoxShadow(
          //                       color: Colors.black87.withOpacity(0.05),
          //                       offset: const Offset(0, 0),
          //                       blurRadius: 10,
          //                       spreadRadius: 5),
          //                 ],
          //               ),
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Row(
          //                       mainAxisAlignment:
          //                           MainAxisAlignment.spaceBetween,
          //                       crossAxisAlignment: CrossAxisAlignment.start,
          //                       children: [
          //                         Image.asset(
          //                           "assets/img/productImg.png",
          //                           width: 150,
          //                           height: 100,
          //                           fit: BoxFit.fill,
          //                         ),
          //                         Icon(
          //                           Icons.favorite_border,
          //                           color: Colors.grey,
          //                         ),
          //                       ]),
          //                   Container(
          //                     padding: const EdgeInsets.only(top: 8),
          //                     width: 150,
          //                     child: RatingBarIndicator(
          //                       rating: 4,
          //                       itemBuilder: (context, index) => const Icon(
          //                         Icons.star,
          //                         color: Colors.amber,
          //                       ),
          //                       itemCount: 5,
          //                       itemSize: 20.0,
          //                       direction: Axis.horizontal,
          //                     ),
          //                   ),
          //                   const SizedBox(
          //                     height: 6,
          //                   ),
          //                   const Text(
          //                     "Lorem ispum dopnipe fhg",
          //                     maxLines: 1,
          //                     overflow: TextOverflow.ellipsis,
          //                     style: TextStyle(
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.w600,
          //                     ),
          //                   ),
          //                   Row(
          //                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                     children: const [
          //                       Text(
          //                         "\$ 152",
          //                         style: TextStyle(
          //                           fontSize: 28,
          //                           fontWeight: FontWeight.w600,
          //                         ),
          //                       ),
          //                       SizedBox(
          //                         width: 12,
          //                       ),
          //                       Text(
          //                         "\$ 160",
          //                         style: TextStyle(
          //                           fontSize: 20,
          //                           decoration: TextDecoration.lineThrough,
          //                           fontWeight: FontWeight.w300,
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                   const Text(
          //                     "27% THC",
          //                     maxLines: 1,
          //                     overflow: TextOverflow.ellipsis,
          //                     style: TextStyle(
          //                       fontSize: 14,
          //                       fontWeight: FontWeight.w400,
          //                     ),
          //                   ),
          //                   Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                     children: [
          //                       const Text(
          //                         "Humboldt Farms",
          //                         maxLines: 1,
          //                         overflow: TextOverflow.ellipsis,
          //                         style: TextStyle(
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w400,
          //                         ),
          //                       ),
          //                       const SizedBox(
          //                         width: 12,
          //                       ),
          //                       GestureDetector(
          //                         onTap: () {},
          //                         child: const CircleAvatar(
          //                           minRadius: 20,
          //                           backgroundColor: const Color(0xFF00C8B8),
          //                           child: Icon(
          //                             Icons.shopping_cart_outlined,
          //                             color: Colors.white,
          //                           ),
          //                         ),
          //                       )
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             Container(
          //               // height: 200,
          //               width: 220,
          //               margin: const EdgeInsets.only(right: 20),
          //               padding: const EdgeInsets.all(8),
          //               decoration: BoxDecoration(
          //                 color: const Color(0XFFF9F9F9),
          //                 borderRadius: BorderRadius.circular(16),
          //                 boxShadow: [
          //                   BoxShadow(
          //                       color: Colors.black87.withOpacity(0.05),
          //                       offset: const Offset(0, 0),
          //                       blurRadius: 10,
          //                       spreadRadius: 5),
          //                 ],
          //               ),
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Image.asset(
          //                     "assets/img/jeff-w-1ieS-iMjnAU-unsplash-removebg-preview.png",
          //                     fit: BoxFit.fill,
          //                   ),
          //                   Container(
          //                     padding: const EdgeInsets.only(top: 8),
          //                     width: 150,
          //                     child: RatingBarIndicator(
          //                       rating: 4,
          //                       itemBuilder: (context, index) => const Icon(
          //                         Icons.star,
          //                         color: Colors.amber,
          //                       ),
          //                       itemCount: 5,
          //                       itemSize: 20.0,
          //                       direction: Axis.horizontal,
          //                     ),
          //                   ),
          //                   const SizedBox(
          //                     height: 6,
          //                   ),
          //                   const Text(
          //                     "Lorem ispum dopnipe fhg",
          //                     maxLines: 1,
          //                     overflow: TextOverflow.ellipsis,
          //                     style: TextStyle(
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.w600,
          //                     ),
          //                   ),
          //                   Row(
          //                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                     children: const [
          //                       Text(
          //                         "\$ 152",
          //                         style: TextStyle(
          //                           fontSize: 28,
          //                           fontWeight: FontWeight.w600,
          //                         ),
          //                       ),
          //                       SizedBox(
          //                         width: 12,
          //                       ),
          //                       Text(
          //                         "\$ 160",
          //                         style: TextStyle(
          //                           fontSize: 20,
          //                           decoration: TextDecoration.lineThrough,
          //                           fontWeight: FontWeight.w300,
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                   const Text(
          //                     "27% THC",
          //                     maxLines: 1,
          //                     overflow: TextOverflow.ellipsis,
          //                     style: TextStyle(
          //                       fontSize: 14,
          //                       fontWeight: FontWeight.w400,
          //                     ),
          //                   ),
          //                   Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                     children: [
          //                       const Text(
          //                         "Humboldt Farms",
          //                         maxLines: 1,
          //                         overflow: TextOverflow.ellipsis,
          //                         style: TextStyle(
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w400,
          //                         ),
          //                       ),
          //                       const SizedBox(
          //                         width: 12,
          //                       ),
          //                       GestureDetector(
          //                         onTap: () {},
          //                         child: const CircleAvatar(
          //                           minRadius: 20,
          //                           backgroundColor: const Color(0xFF00C8B8),
          //                           child: Icon(
          //                             Icons.shopping_cart_outlined,
          //                             color: Colors.white,
          //                           ),
          //                         ),
          //                       )
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             Container(
          //               // height: 200,
          //               width: 220,
          //               margin: const EdgeInsets.only(right: 20),
          //               padding: const EdgeInsets.all(8),
          //               decoration: BoxDecoration(
          //                 color: const Color(0XFFF9F9F9),
          //                 borderRadius: BorderRadius.circular(16),
          //                 boxShadow: [
          //                   BoxShadow(
          //                       color: Colors.black87.withOpacity(0.05),
          //                       offset: const Offset(0, 0),
          //                       blurRadius: 10,
          //                       spreadRadius: 5),
          //                 ],
          //               ),
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Image.asset(
          //                     "assets/img/budding-GbXiiO6OrJs-unsplash-removebg-preview.png",
          //                     fit: BoxFit.fill,
          //                     // width: 180,
          //                   ),
          //                   Container(
          //                     padding: const EdgeInsets.only(top: 8),
          //                     width: 150,
          //                     child: RatingBarIndicator(
          //                       rating: 4,
          //                       itemBuilder: (context, index) => const Icon(
          //                         Icons.star,
          //                         color: Colors.amber,
          //                       ),
          //                       itemCount: 5,
          //                       itemSize: 20.0,
          //                       direction: Axis.horizontal,
          //                     ),
          //                   ),
          //                   const SizedBox(
          //                     height: 6,
          //                   ),
          //                   const Text(
          //                     "Lorem ispum dopnipe fhg",
          //                     maxLines: 1,
          //                     overflow: TextOverflow.ellipsis,
          //                     style: TextStyle(
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.w600,
          //                     ),
          //                   ),
          //                   Row(
          //                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                     children: const [
          //                       Text(
          //                         "\$ 152",
          //                         style: TextStyle(
          //                           fontSize: 28,
          //                           fontWeight: FontWeight.w600,
          //                         ),
          //                       ),
          //                       SizedBox(
          //                         width: 12,
          //                       ),
          //                       Text(
          //                         "\$ 160",
          //                         style: TextStyle(
          //                           fontSize: 20,
          //                           decoration: TextDecoration.lineThrough,
          //                           fontWeight: FontWeight.w300,
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                   const Text(
          //                     "27% THC",
          //                     maxLines: 1,
          //                     overflow: TextOverflow.ellipsis,
          //                     style: TextStyle(
          //                       fontSize: 14,
          //                       fontWeight: FontWeight.w400,
          //                     ),
          //                   ),
          //                   Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                     children: [
          //                       const Text(
          //                         "Humboldt Farms",
          //                         maxLines: 1,
          //                         overflow: TextOverflow.ellipsis,
          //                         style: TextStyle(
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w400,
          //                         ),
          //                       ),
          //                       const SizedBox(
          //                         width: 12,
          //                       ),
          //                       GestureDetector(
          //                         onTap: () {},
          //                         child: const CircleAvatar(
          //                           minRadius: 20,
          //                           backgroundColor: const Color(0xFF00C8B8),
          //                           child: Icon(
          //                             Icons.shopping_cart_outlined,
          //                             color: Colors.white,
          //                           ),
          //                         ),
          //                       )
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Container(
          //   height: _screenHeight * 0.2,
          //   margin: const EdgeInsets.all(12),
          //   child: Stack(
          //     fit: StackFit.expand,
          //     children: [
          //       Image.asset(
          //         "assets/img/Mask group.png",
          //         fit: BoxFit.fitHeight,
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.only(left: 18),
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             RichText(
          //               text: const TextSpan(
          //                 style: TextStyle(
          //                     fontSize: 16, color: Colors.white, height: 0.8),
          //                 children: [
          //                   TextSpan(
          //                     text: 'Cannabis\n',
          //                     style: TextStyle(
          //                         fontWeight: FontWeight.w400,
          //                         color: Colors.white,
          //                         fontSize: 26),
          //                   ),
          //                   TextSpan(
          //                     text: 'Drinks',
          //                     style: TextStyle(
          //                         fontWeight: FontWeight.bold,
          //                         color: Colors.white,
          //                         height: 1.2,
          //                         fontSize: 22),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             ElevatedButton(
          //               style: ElevatedButton.styleFrom(
          //                 backgroundColor: const Color(0XFF00C8B8),
          //               ),
          //               onPressed: () {},
          //               child: const Text(
          //                 "Shop Now",
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          // Container(
          //   height: _screenHeight * 0.45,
          //   // color: Colors.red,
          //   margin: const EdgeInsets.all(12),
          //   child: Column(
          //     children: [
          //       Row(
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           const Text(
          //             "Drinks",
          //             style:
          //                 TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          //           ),
          //           TextButton(
          //             style: TextButton.styleFrom(
          //               surfaceTintColor: const Color(0Xff00C8B8),
          //             ),
          //             onPressed: () {},
          //             child: const Text(
          //               "See all >",
          //               style: TextStyle(
          //                 color: Color(0Xff00C8B8),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //       Expanded(
          //         child: ListView(
          //           padding: const EdgeInsets.all(8),
          //           scrollDirection: Axis.horizontal,
          //           children: [
          //             Container(
          //               width: 220,
          //               margin: const EdgeInsets.only(right: 20),
          //               padding: const EdgeInsets.all(8),
          //               decoration: BoxDecoration(
          //                 color: const Color(0XFFF9F9F9),
          //                 borderRadius: BorderRadius.circular(16),
          //                 boxShadow: [
          //                   BoxShadow(
          //                       color: Colors.black87.withOpacity(0.05),
          //                       offset: const Offset(0, 0),
          //                       blurRadius: 10,
          //                       spreadRadius: 5),
          //                 ],
          //               ),
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Row(
          //                       mainAxisAlignment:
          //                           MainAxisAlignment.spaceBetween,
          //                       crossAxisAlignment: CrossAxisAlignment.start,
          //                       children: [
          //                         Image.asset(
          //                           "assets/img/productImg.png",
          //                           width: 150,
          //                           height: 100,
          //                           fit: BoxFit.fill,
          //                         ),
          //                         Icon(
          //                           Icons.favorite_border,
          //                           color: Colors.grey,
          //                         ),
          //                       ]),
          //                   Container(
          //                     padding: const EdgeInsets.only(top: 8),
          //                     width: 150,
          //                     child: RatingBarIndicator(
          //                       rating: 4,
          //                       itemBuilder: (context, index) => const Icon(
          //                         Icons.star,
          //                         color: Colors.amber,
          //                       ),
          //                       itemCount: 5,
          //                       itemSize: 20.0,
          //                       direction: Axis.horizontal,
          //                     ),
          //                   ),
          //                   const SizedBox(
          //                     height: 6,
          //                   ),
          //                   const Text(
          //                     "Lorem ispum dopnipe fhg",
          //                     maxLines: 1,
          //                     overflow: TextOverflow.ellipsis,
          //                     style: TextStyle(
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.w600,
          //                     ),
          //                   ),
          //                   Row(
          //                     children: const [
          //                       Text(
          //                         "\$ 152",
          //                         style: TextStyle(
          //                           fontSize: 28,
          //                           fontWeight: FontWeight.w600,
          //                         ),
          //                       ),
          //                       SizedBox(
          //                         width: 12,
          //                       ),
          //                       Text(
          //                         "\$ 160",
          //                         style: TextStyle(
          //                           fontSize: 20,
          //                           decoration: TextDecoration.lineThrough,
          //                           fontWeight: FontWeight.w300,
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                   const Text(
          //                     "27% THC",
          //                     maxLines: 1,
          //                     overflow: TextOverflow.ellipsis,
          //                     style: TextStyle(
          //                       fontSize: 14,
          //                       fontWeight: FontWeight.w400,
          //                     ),
          //                   ),
          //                   Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                     children: [
          //                       const Text(
          //                         "Humboldt Farms",
          //                         maxLines: 1,
          //                         overflow: TextOverflow.ellipsis,
          //                         style: TextStyle(
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w400,
          //                         ),
          //                       ),
          //                       const SizedBox(
          //                         width: 12,
          //                       ),
          //                       GestureDetector(
          //                         onTap: () {},
          //                         child: const CircleAvatar(
          //                           minRadius: 20,
          //                           backgroundColor: const Color(0xFF00C8B8),
          //                           child: Icon(
          //                             Icons.shopping_cart_outlined,
          //                             color: Colors.white,
          //                           ),
          //                         ),
          //                       )
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             Container(
          //               width: 220,
          //               margin: const EdgeInsets.only(right: 20),
          //               padding: const EdgeInsets.all(8),
          //               decoration: BoxDecoration(
          //                 color: const Color(0XFFF9F9F9),
          //                 borderRadius: BorderRadius.circular(16),
          //                 boxShadow: [
          //                   BoxShadow(
          //                       color: Colors.black87.withOpacity(0.05),
          //                       offset: const Offset(0, 0),
          //                       blurRadius: 10,
          //                       spreadRadius: 5),
          //                 ],
          //               ),
          //               child: Column(
          //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Row(
          //                       mainAxisAlignment:
          //                           MainAxisAlignment.spaceBetween,
          //                       crossAxisAlignment: CrossAxisAlignment.start,
          //                       children: [
          //                         Image.asset(
          //                           "assets/img/productImg.png",
          //                           width: 150,
          //                           height: 100,
          //                           fit: BoxFit.fill,
          //                         ),
          //                         Icon(
          //                           Icons.favorite_border,
          //                           color: Colors.grey,
          //                         ),
          //                       ]),
          //                   Container(
          //                     padding: const EdgeInsets.only(top: 8),
          //                     width: 150,
          //                     child: RatingBarIndicator(
          //                       rating: 4,
          //                       itemBuilder: (context, index) => const Icon(
          //                         Icons.star,
          //                         color: Colors.amber,
          //                       ),
          //                       itemCount: 5,
          //                       itemSize: 20.0,
          //                       direction: Axis.horizontal,
          //                     ),
          //                   ),
          //                   const SizedBox(
          //                     height: 6,
          //                   ),
          //                   const Text(
          //                     "Lorem ispum dopnipe fhg",
          //                     maxLines: 1,
          //                     overflow: TextOverflow.ellipsis,
          //                     style: TextStyle(
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.w600,
          //                     ),
          //                   ),
          //                   Row(
          //                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                     children: const [
          //                       Text(
          //                         "\$ 152",
          //                         style: TextStyle(
          //                           fontSize: 28,
          //                           fontWeight: FontWeight.w600,
          //                         ),
          //                       ),
          //                       SizedBox(
          //                         width: 12,
          //                       ),
          //                       Text(
          //                         "\$ 160",
          //                         style: TextStyle(
          //                           fontSize: 20,
          //                           decoration: TextDecoration.lineThrough,
          //                           fontWeight: FontWeight.w300,
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                   const Text(
          //                     "27% THC",
          //                     maxLines: 1,
          //                     overflow: TextOverflow.ellipsis,
          //                     style: TextStyle(
          //                       fontSize: 14,
          //                       fontWeight: FontWeight.w400,
          //                     ),
          //                   ),
          //                   Row(
          //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                     children: [
          //                       const Text(
          //                         "Humboldt Farms",
          //                         maxLines: 1,
          //                         overflow: TextOverflow.ellipsis,
          //                         style: TextStyle(
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w400,
          //                         ),
          //                       ),
          //                       const SizedBox(
          //                         width: 12,
          //                       ),
          //                       GestureDetector(
          //                         onTap: () {},
          //                         child: const CircleAvatar(
          //                           minRadius: 20,
          //                           backgroundColor: const Color(0xFF00C8B8),
          //                           child: Icon(
          //                             Icons.shopping_cart_outlined,
          //                             color: Colors.white,
          //                           ),
          //                         ),
          //                       )
          //                     ],
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
