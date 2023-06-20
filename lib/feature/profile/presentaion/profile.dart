import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:four20society/feature/change_password/presentation/change_password%20(1).dart';
import 'package:four20society/feature/notification/presentation/notification_screen.dart';
import 'package:four20society/feature/profile/presentaion/personalDetails.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
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
          "Profile Screen",
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const NotificationScreen()));
            },
            icon: const Icon(
              Icons.notification_important_outlined,
              color: Colors.black54,
            ),
          ),
        ],
     
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: const Color(0xFF00C8B8).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8)),
              height: _screenHeight * 0.3,
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      const CircleAvatar(
                        radius: 64,
                         backgroundImage: AssetImage('assets/img/profile.png'),
                      ),
                      Container(
                        width: 36,
                        height: 36,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: GestureDetector(
                          child: const Icon(
                            Icons.camera_alt,
                            color: Color(0XFF00C8B8),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                   const Text(
                      'John Smith',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  const Text(
                    'san Francisco, CA',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0XFF1E1E1E),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFF00C8B8).withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0XFF1E1E1E),
                      ),
                      children: [
                        TextSpan(
                          text: '+1 (415) 555 3890 \n',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF1E1E1E),
                              fontSize: 18),
                        ),
                        TextSpan(
                          text: 'smith94@gmail.com',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const PersonalDetails()));
                    },
                    title: const Text(
                      "Personal Details",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text("User Personal Details"),
                    trailing: const Icon(
                      Icons.arrow_forward_outlined,
                      size: 18,
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChangePasswordScreen1()));
                    },
                    title: const Text(
                      "Privacy",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text("Change And Update Password"),
                    trailing: const Icon(
                      Icons.arrow_forward_outlined,
                      size: 18,
                    ),
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text(
                      "Logout",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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