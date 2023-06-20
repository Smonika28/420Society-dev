import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AddedAddress extends StatefulWidget {
  const AddedAddress({super.key});

  @override
  State<AddedAddress> createState() => _AddedAddress();
}

class _AddedAddress extends State<AddedAddress> {
  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height -
        kToolbarHeight -
        MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Saved Address",
          style: TextStyle(color: Colors.black),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(children: [
        Row(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 0, top: 15, left: 15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                // color: Color.fromARGB(255, 211, 209, 209).withOpacity(0.4),
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Smith",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Text(
                        "Default",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff00C8B8)),
                      ),
                    ],
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Abcd company",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                   SizedBox(
                    height: 7,
                  ),
                  Text(
                    "51 Hereford Avenue, Culburra, South Australia",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                   SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Zipcode : 5165",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 10, top: 10, left: 5),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                width: MediaQuery.of(context).size.width * 0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration:const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff00C8B8),
                          ),
                          child:const Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration:const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffE84F5B),
                          ),
                          child: const Icon(
                            Icons.delete,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ),
                    ]),
                  ],
                )),
            Container()
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 0, top: 0, left: 15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                // color: Color.fromARGB(255, 211, 209, 209).withOpacity(0.4),
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              child:const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Smith",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Text(
                        "Default",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff00C8B8)),
                      ),
                    ],
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Abcd company",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                   SizedBox(
                    height: 7,
                  ),
                  Text(
                    "51 Hereford Avenue, Culburra, South Australia",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                   SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Zipcode : 5165",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 10, top: 10, left: 5),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                width: MediaQuery.of(context).size.width * 0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration:const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff00C8B8),
                          ),
                          child:const Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration:const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffE84F5B),
                          ),
                          child: const Icon(
                            Icons.delete,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ),
                    ]),
                  ],
                )),
            Container()
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 0, top: 0, left: 15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                // color: Color.fromARGB(255, 211, 209, 209).withOpacity(0.4),
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width * 0.8,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Smith",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Text(
                        "Default",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff00C8B8)),
                      ),
                    ],
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Abcd company",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                   SizedBox(
                    height: 7,
                  ),
                  Text(
                    "51 Hereford Avenue, Culburra, South Australia",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                   SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Zipcode : 5165",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 10, top: 10, left: 5),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                width: MediaQuery.of(context).size.width * 0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff00C8B8),
                          ),
                          child:const Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration:const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffE84F5B),
                          ),
                          child:const Icon(
                            Icons.delete,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ),
                    ]),
                  ],
                )),
            Container()
          ],
        ),
      ]),
    );
  }
}
