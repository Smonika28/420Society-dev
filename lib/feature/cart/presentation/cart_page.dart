import 'package:flutter/material.dart';
import 'package:four20society/feature/checkout/presentation/check_out_screen.dart';
import 'package:four20society/global_widget/app_drawar.dart';
import 'package:four20society/global_widget/custom_product_cart_widget.dart';
import 'package:four20society/global_widget/app_drawar.dart';
class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height -
    //     kToolbarHeight -
    //     MediaQuery.of(context).padding.top;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Cart",
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

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return const CustomProductCardWidget();
                }
            ),
          ),
          const SizedBox(
            height: 5,
          ),
         const Text(
            "Price Details",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
      
         const Row(
            children: <Widget>[
              Text("Discount"),
              Spacer(),
              Text(r'-$' + '50'),
            ],
          ),
         const SizedBox(height: 5),
       const   Row(
            children: <Widget>[
              Text("Price (1 item)"),
              Spacer(),
              Text(r'$' + '500'),
            ],
          ),
           const SizedBox(height: 5),
       const   Row(
            children: <Widget>[
              Text("Discount"),
              Spacer(),
              Text(r'-$' + '50'),
            ],
          ),
           const SizedBox(height: 5),
       const   Row(
            children: <Widget>[
              Text("Delivery Charges"),
              Spacer(),
              Text("Free Delivery"),
            ],
          ),
      
      
       const   Divider(
            color: Colors.black,
          ),
           const SizedBox(height: 5),
        const  Row(
            children: <Widget>[
              Text("Total Amount",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Spacer(),
              Text(r'$' + '500',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        
        const  Text("You will save 50 on this order",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.green)),
           const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
               padding:const EdgeInsets.only(left: 15, right: 10),
              child: Row(
                children: [
                  const Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: r'$' + '500', hintStyle: TextStyle(fontWeight: FontWeight.w500,  fontSize: 18, color: Colors.black)),
                          ),
                    ),
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                                primary:const Color(0xFF00C8B8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>const CheckoutPage()));
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,color: Colors.white,size: 16,
                        ),
                        label: const Text("Checkout", style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),),
                        //.........
                      ))
      
                ],
              ),
            ),
      
      
      
          ),
        ]),
      ),
    );
  }

  Widget productCard(double _screenHeight){
    return  Container(
      margin: const EdgeInsets.all(12),
      height: _screenHeight * 0.3,
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12)),
      child: Column(children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.35,
              height: _screenHeight * 0.12,
              decoration: BoxDecoration(
                color: Colors.yellow,
                
                  borderRadius: BorderRadius.circular(12),
                  
                  // image: const DecorationImage(
                  //   fit: BoxFit.fill,
                  //   image: AssetImage(
                  //       "assets/img/logo.png"),
                  // )
                  ),
            ),
            Container(
              margin: const EdgeInsets.all(6),
              width: MediaQuery.of(context).size.width * 0.5,
              height: _screenHeight * 0.12,
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Organic hemp flower Organic hemp flower ",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Row(
                      children: [
                        Container(

                          width: MediaQuery.of(context).size.width *
                              0.32,
                          child: Text("details"),
                        ),
                        Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(8),
                                border: Border.all(
                                    color: const Color(0xff00C8B8),
                                    width: 1)),
                            width: MediaQuery.of(context).size.width *
                                0.18,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    print("plus pressed ----");
                                  },
                                  child: const Icon(Icons.add, size: 18, color: Color(0xff00C8B8),),
                                ),
                                const Text("1", style: TextStyle(fontSize: 14, color: Color(0xFF00C8B8)),),
                                GestureDetector(
                                  onTap: (){
                                    print("minus pressed ----");
                                  },
                                  child: const Icon(Icons.remove, size: 18, color: Color(0xff00C8B8), ),
                                ),
                              ],
                            )
                        ),
                      ],

                    ),
                    Container(

                      width: MediaQuery.of(context).size.width *
                          0.70,
                      child: Text("abc"),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 4, left: 6, right:6),
          child: Expanded(
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00C8B8)
                    ),
                    child: const Text("Move to Wishlist"),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor:const  Color(0XFF00C8B8),
                      side: const BorderSide(
                        color: Color(0XFF00C8B8),
                        width: 2,
                      ),

                    ),
                    child: const Text("Add to Cart"),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ),



      ]),

      //
    );

  }
}