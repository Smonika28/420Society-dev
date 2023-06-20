// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
//
// class EditPersonalDetails extends StatefulWidget {
//   const EditPersonalDetails({super.key});
//
//   @override
//   State<EditPersonalDetails> createState() => _EditPersonalDetails();
// }
// class _EditPersonalDetails extends State<EditPersonalDetails> {
//   List<ButtonData> buttons = [
//     ButtonData(label: ' Home', icon: Icons.home_filled),
//     ButtonData(label: ' Work', icon: Icons.work),
//     ButtonData(label: ' Friends & Families', icon: Icons.person),
//     ButtonData(label: ' Others', icon: Icons.edit_location),
//   ];
//   int selectedIndex = 0;
// class _EditPersonalDetails extends State<EditPersonalDetails> {
//   @override
//   Widget build(BuildContext context) {
//     final _screenHeight = MediaQuery.of(context).size.height -
//         kToolbarHeight -
//         MediaQuery.of(context).padding.top;
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         title: const Text(
//           "Edit Personal Details",
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               margin: const EdgeInsets.only(bottom: 10, top: 10),
//               padding: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 211, 209, 209).withOpacity(0.4),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               width: MediaQuery.of(context).size.width * 0.9,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   TextFormField(
//                     decoration: const InputDecoration(
//                         contentPadding:  EdgeInsets.only(
//                           top: 13.0,
//                           bottom: 13.0,
//                           left: 20.0,
//                           right: 20.0,
//                         ),
//                         border:  OutlineInputBorder(
//                           borderSide: BorderSide(
//                             color: Color(0xffAAAAAA),
//                             width: 1.0,
//                           ),
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(
//                               50.0,
//                             ),
//                           ),
//                         ),
//                         hintText: 'Adam',
//                         hintStyle: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.w400,
//                           fontSize: 14,
//                         )),
//                   ),
//                  const SizedBox(
//                     height: 20,
//                   ),
//                   TextFormField(
//                     decoration: const InputDecoration(
//                         contentPadding:  EdgeInsets.only(
//                           top: 13.0,
//                           bottom: 13.0,
//                           left: 20.0,
//                           right: 20.0,
//                         ),
//                         border:  OutlineInputBorder(
//                           borderSide: BorderSide(
//                             color: Color(0xffAAAAAA),
//                             width: 1.0,
//                           ),
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(
//                               50.0,
//                             ),
//                           ),
//                         ),
//                         hintText: 'Last Name',
//                         hintStyle: TextStyle(
//                           color: Colors.grey,
//                           fontWeight: FontWeight.w400,
//                           fontSize: 14,
//                         )),
//                   ),
//
//                 const  SizedBox(
//                     height: 20,
//                   ),
//                   TextFormField(
//                     decoration:const InputDecoration(
//                         contentPadding:  EdgeInsets.only(
//                           top: 13.0,
//                           bottom: 13.0,
//                           left: 20.0,
//                           right: 20.0,
//                         ),
//                         border:  OutlineInputBorder(
//                           borderSide: BorderSide(
//                             color: Color(0xffAAAAAA),
//                             width: 1.0,
//                           ),
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(
//                               50.0,
//                             ),
//                           ),
//                         ),
//                         hintText: 'Mobile Number',
//                         hintStyle: TextStyle(
//                           color: Colors.grey,
//                           fontWeight: FontWeight.w400,
//                           fontSize: 14,
//                         )),
//                   ),
//                 const  SizedBox(
//                     height: 20,
//                   ),
//                   TextFormField(
//                     decoration:const InputDecoration(
//                         contentPadding:  EdgeInsets.only(
//                           top: 13.0,
//                           bottom: 13.0,
//                           left: 20.0,
//                           right: 20.0,
//                         ),
//                         border:  OutlineInputBorder(
//                           borderSide: BorderSide(
//                             color: Color(0xffAAAAAA),
//                             width: 1.0,
//                           ),
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(
//                               50.0,
//                             ),
//                           ),
//                         ),
//                         hintText: 'smith02@gmail.com',
//                         hintStyle: TextStyle(
//                           color: Colors.grey,
//                           fontWeight: FontWeight.w400,
//                           fontSize: 14,
//                         )),
//                   ),
//                  const  SizedBox(
//                     height: 20,
//                   ),
//                   TextFormField(
//                     decoration:const InputDecoration(
//                         contentPadding:  EdgeInsets.only(
//                           top: 13.0,
//                           bottom: 13.0,
//                           left: 20.0,
//                           right: 20.0,
//                         ),
//                         border:  OutlineInputBorder(
//                           borderSide: BorderSide(
//                             color: Color(0xffAAAAAA),
//                             width: 1.0,
//                           ),
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(
//                               50.0,
//                             ),
//                           ),
//                         ),
//                         hintText: 'House/Flat/Block No.',
//                         hintStyle: TextStyle(
//                           color: Colors.grey,
//                           fontWeight: FontWeight.w400,
//                           fontSize: 14,
//                         )),
//                   ),
//
//                 const  SizedBox(
//                     height: 20,
//                   ),
//                   TextFormField(
//                     decoration: const InputDecoration(
//                         contentPadding:  EdgeInsets.only(
//                           top: 13.0,
//                           bottom: 13.0,
//                           left: 20.0,
//                           right: 20.0,
//                         ),
//                         border:  OutlineInputBorder(
//                           borderSide: BorderSide(
//                             color: Color(0xffAAAAAA),
//                             width: 1.0,
//                           ),
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(
//                               50.0,
//                             ),
//                           ),
//                         ),
//                         hintText: 'Apartment/Road/Area',
//                         hintStyle: TextStyle(
//                           color: Colors.grey,
//                           fontWeight: FontWeight.w400,
//                           fontSize: 14,
//                         )),
//                   ),
//
//                 const  SizedBox(
//                     height: 20,
//                   ),
//                   TextFormField(
//                     decoration:const InputDecoration(
//                         contentPadding:  EdgeInsets.only(
//                           top: 13.0,
//                           bottom: 13.0,
//                           left: 20.0,
//                           right: 20.0,
//                         ),
//                         border:  OutlineInputBorder(
//                           borderSide: BorderSide(
//                             color: Color(0xffAAAAAA),
//                             width: 1.0,
//                           ),
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(
//                               50.0,
//                             ),
//                           ),
//                         ),
//                         hintText: 'Zipcode',
//                         hintStyle: TextStyle(
//                           color: Colors.grey,
//                           fontWeight: FontWeight.w400,
//                           fontSize: 14,
//                         )),
//                   ),
//
//
//
//
//
//
//                   // const Divider(
//                   //   color: Colors.grey,
//                   //   thickness: 0.5,
//                   // ),
//                 ],
//               ),
//             ),
//
//
//
//             Container(
//               margin: const EdgeInsets.only(bottom: 10, top: 10),
//               padding: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 color: const Color.fromARGB(255, 211, 209, 209).withOpacity(0.4),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               width: MediaQuery.of(context).size.width * 0.9,
//               child: const Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                Text('Save As', style: TextStyle(
//                  color: Colors.black,
//                  fontWeight: FontWeight.w500,
//                  fontSize: 16,
//                ),
//
//                ),
//                 Row(
//
//                 )
//                 // Row(
//                 //   children: [
//                 //     TextFormField(
//                 //       decoration: InputDecoration(
//                 //           contentPadding: const EdgeInsets.only(
//                 //             top: 13.0,
//                 //             bottom: 13.0,
//                 //             left: 20.0,
//                 //             right: 20.0,
//                 //           ),
//                 //           border: const OutlineInputBorder(
//                 //             borderSide: BorderSide(
//                 //               color: Color(0xffAAAAAA),
//                 //               width: 1.0,
//                 //             ),
//                 //             borderRadius: BorderRadius.all(
//                 //               Radius.circular(
//                 //                 50.0,
//                 //               ),
//                 //             ),
//                 //           ),
//                 //           hintText: 'Zipcode',
//                 //           hintStyle: TextStyle(
//                 //             color: Colors.grey,
//                 //             fontWeight: FontWeight.w400,
//                 //             fontSize: 14,
//                 //           )),
//                 //     ),
//                 //
//                 //   ],
//                 // )
//
//                 ],
//               ),
//             ),
//
//             Container(
//               margin: const EdgeInsets.only(bottom: 5, top: 3),
//               padding: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 211, 209, 209).withOpacity(0.1),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               width: MediaQuery.of(context).size.width * 0.9,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'Save As',
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.w500,
//                       fontSize: 20,
//                     ),
//                   ),
//                   Wrap(
//                     direction: Axis.horizontal,
//                     spacing: 20,
//                     runSpacing: 10,
//                     children: List.generate(buttons.length, (index) {
//                       return SizedBox(
//                         child: index == selectedIndex
//                             ? ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             primary: Color(0xff00C8B8),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(18.0),
//                             ),
//                           ),
//                           onPressed: (){
//                             setState(() {
//                               selectedIndex = index;
//                             });
//                           },
//                           child: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Icon( buttons[index].icon),
//                                 Text(buttons[index].label),
//                               ]),
//                         )
//                             : OutlinedButton(
//                           style: ElevatedButton.styleFrom(
//                             primary: Colors.white,
//                             onPrimary: Colors.black,
//
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(18.0),
//
//                             ),
//                           ),
//                           onPressed: (){
//                             setState(() {
//                               selectedIndex = index;
//                             });
//                           },
//                           child: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Icon( buttons[index].icon, size: 16, ), SizedBox(width: 5,),
//                                 Text(buttons[index].label, style: TextStyle(fontSize: 16),
//
//                                 ),
//                               ]),
//
//
//                         ),
//                       );
//                     }),
//                   ),
//                   const SizedBox(
//                     height: 35,
//                   ),
//                   Material(
//                     child: ElevatedButton(
//                       onPressed: () {
//                       },
//                       style: ElevatedButton.styleFrom(
//                         elevation: 0.0,
//                         foregroundColor: const Color(0xffFFFFFF),
//                         backgroundColor: const Color( 0xff00C8B8),
//                         minimumSize: const Size(360, 64.0),
//                         // minimumSize: Size(
//                         //     MediaQuery.of(context).size.width * 0.9, 50),
//                         padding:
//                         const EdgeInsets.symmetric(horizontal: 16),
//                         textStyle: Theme.of(context)
//                             .textTheme
//                             .button
//                             ?.copyWith(
//                           fontSize: 20.0,
//                         ),
//                       ),
//                       child: const Text(
//                         'SAVE  >',
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//
//             ),
//
//
//
//             Container()
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../global_widget/custom_button.dart';

class EditPersonalDetails extends StatefulWidget {
  const EditPersonalDetails({super.key});

  @override
  State<EditPersonalDetails> createState() => _EditPersonalDetails();
}

class _EditPersonalDetails extends State<EditPersonalDetails> {
  List<ButtonData> buttons = [
    ButtonData(label: ' Home', icon: Icons.home_filled),
    ButtonData(label: ' Work', icon: Icons.work),
    ButtonData(label: ' Friends & Families', icon: Icons.person),
    ButtonData(label: ' Others', icon: Icons.edit_location),
  ];
  int selectedIndex = 0;
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
        "Edit Personal Details",
        style: TextStyle(color: Colors.black),
      ),
      // actions: [],
      // leading: GestureDetector(
      //   onTap: () {
      //
      //   },
      //   child: const Icon(
      //     Icons.arrow_back,
      //     color: Colors.black,
      //   ),
      // ),
    ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 5, top: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 211, 209, 209).withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'Adam',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'Last Name',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'Mobile Number',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'smith02@gmail.com',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'House/Flat/Block No.',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'Apartment/Road/Area',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 13.0,
                          bottom: 13.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffAAAAAA),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              50.0,
                            ),
                          ),
                        ),
                        hintText: 'Zipcode',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        )),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 5, top: 0),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 211, 209, 209).withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Save As',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 10,
                    runSpacing: 5,
                    children: List.generate(buttons.length, (index) {
                      return SizedBox(
                        child: index == selectedIndex
                            ? ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color(0xff00C8B8),
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(buttons[index].icon),
                                      Text(buttons[index].label),
                                    ]),
                              )
                            : OutlinedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        buttons[index].icon,
                                        size: 14,
                                      ),
                                      Text(
                                        buttons[index].label,
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ]),
                              ),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomElevatedButton(
                    onTap: () {},
                    title: 'Save > ',
                    color: const Color(0xff00C8B8),
                  ),
                ],
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}

class ButtonData {
  final String label;
  final IconData icon;

  ButtonData({required this.label, required this.icon});
}
