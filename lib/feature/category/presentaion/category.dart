import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:four20society/global_widget/app_drawar.dart';

import '../../notification/presentation/notification_screen.dart';

class ProductCategoryScreen extends StatefulWidget {
  const ProductCategoryScreen({super.key});

  @override
  State<ProductCategoryScreen> createState() => _ProductCategoryScreen();
}

class _ProductCategoryScreen extends State<ProductCategoryScreen> {
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Map> myProducts =
  List.generate(7, (index) => {"id": index, "name": "Product $index"})
      .toList();

  @override
  Widget build(BuildContext context) {
    final  _screenHeight = MediaQuery
        .of(context)
        .size
        .height -
        kToolbarHeight -
        MediaQuery
            .of(context)
            .padding
            .top;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Categories",
          style: TextStyle(color: Colors.black),
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
      body: Column(
        children: [
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
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    childAspectRatio: 4 / 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: myProducts.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Column(
                    children: [
                     const  CircleAvatar(
                        radius: 52,
                        backgroundColor: Color(0xff00C8B8),

                      ),
                      const SizedBox(height: 10),
                      Text(
                        myProducts[index]["name"],
                        style: const TextStyle(
                            color: Color.fromARGB(255, 39, 8, 8), fontSize: 16),
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}