import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:four20society/feature/change_password/presentation/changedPassWord.dart';

class ChangePasswordScreen1 extends StatefulWidget {
  const ChangePasswordScreen1({super.key});

  @override
  State<ChangePasswordScreen1> createState() => _ChangePasswordScreen1();
}

class _ChangePasswordScreen1 extends State<ChangePasswordScreen1> {
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

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color:const Color.fromARGB(255, 211, 209, 209).withOpacity(0.2),

              borderRadius: BorderRadius.circular(8),
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

               Row(
                children: [
                 const Text("Password",
                    style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  ),
                const  Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChangedPassWord()));
                      },
                      icon:
                      const Icon(
                        Icons.edit,
                        color: Color(0xff00C8B8),
                      )

                  ),
                ],
               ),
            const  SizedBox(
                height: 10,
              ),

                TextFormField(
                  readOnly: true,
                  decoration: const InputDecoration(
                      contentPadding:  EdgeInsets.only(
                        top: 13.0,
                        bottom: 13.0,
                        left: 20.0,
                        right: 20.0,
                      ),
                      border:  OutlineInputBorder(
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
                      hintText: '**************',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}