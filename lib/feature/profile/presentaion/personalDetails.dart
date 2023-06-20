import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:four20society/feature/profile/presentaion/edit_personal_page.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
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
          "Personal Details",
          style: TextStyle(color: Colors.black),
        ),

        // leading: GestureDetector(
        //   onTap: () {},
        //   child: const Icon(
        //     Icons.arrow_back,
        //     color: Colors.black,
        //   ),
        // ),
        actions: [
          IconButton(
            onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (_)=>const EditPersonalDetails()));
          }, icon:const Icon(Icons.edit))
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              margin: const EdgeInsets.only(bottom: 10, top: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 211, 209, 209).withOpacity(0.4),
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                    onTap: () {},
                    title: const Text(
                      "First Name",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey),
                    ),
                    subtitle: const Text("Adam",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text(
                      "Last Name",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey),
                    ),
                    subtitle: const Text("Smith",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text(
                      "Mobile Number",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey),
                    ),
                    subtitle: const Text("+1(415)5553890",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text(
                      "Email ID",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey),
                    ),
                    subtitle: const Text("smith02@gmail.com",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text(
                      "House / Flat / Block NO.",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey),
                    ),
                    subtitle: const Text("51 Hereford Avenue, Culburra, South Australia ",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text(
                      "Appartment / Road / Area",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey),
                    ),
                    subtitle: const Text("ABCD Appartment,",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text(
                      "Zipcode",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey),
                    ),
                    subtitle: const Text("5261",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text(
                      "Save As",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey),
                    ),
                    subtitle: const Text("Home",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container()
          ],
        ),
      ),
    );
  }
}