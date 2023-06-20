import 'package:flutter/material.dart';

import '../../../global_widget/custom_button.dart';


class ChangedPassWord extends StatefulWidget {
  const ChangedPassWord({super.key});
  @override
  State<ChangedPassWord> createState() => _ChangedPassWord();
}
class _ChangedPassWord extends State<ChangedPassWord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Change Password",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 211, 209, 209).withOpacity(0.2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                        top: 13.0,
                        bottom: 13.0,
                        left: 20.0,
                        right: 20.0,
                      ),
                      border: const OutlineInputBorder(
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
                      hintText: 'Current Password',
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.visibility,
                            color: Color(0xffAAAAAA),
                          )),
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                        top: 13.0,
                        bottom: 13.0,
                        left: 20.0,
                        right: 20.0,
                      ),
                      border: const OutlineInputBorder(
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
                      hintText: 'New Password',
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.visibility_off_outlined,
                            color: Color(0xffAAAAAA),
                          )),
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                        top: 13.0,
                        bottom: 13.0,
                        left: 20.0,
                        right: 20.0,
                      ),
                      border: const OutlineInputBorder(
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
                      hintText: 'Confirm Password',
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.visibility_off_outlined,
                            color: Color(0xffAAAAAA),
                          )),
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomElevatedButton(
              onTap: () {},
              title: 'Save > ',
              color: const Color(0xff00C8B8),
            ),
            // Material(
            //   child: ElevatedButton(
            //     onPressed: () {
            //
            //     },
            //     style: ElevatedButton.styleFrom(
            //       elevation: 0.0,
            //       foregroundColor: const Color(0xffFFFFFF),
            //       backgroundColor: const Color(0xff00C8B8),
            //       minimumSize: const Size(double.infinity, 55.0),
            //       padding: const EdgeInsets.symmetric(horizontal: 16),
            //       shape: const RoundedRectangleBorder(
            //         borderRadius: BorderRadius.all(Radius.circular(20.0)),
            //       ),
            //       textStyle: Theme.of(context).textTheme.button?.copyWith(
            //             fontSize: 15.0,
            //           ),
            //     ),
            //     child: const Text(
            //       'SAVE  >',
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
