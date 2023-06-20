import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPage();
}

class _AboutUsPage extends State<AboutUsPage> {
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
          "About Us",
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10, top: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 211, 209, 209).withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "At vivamus dolor magna fames ut varius, Penatibus turpis lorem accumsan, lobortis.",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Lorem ipsum tellus  Aliquet volutpat ut netus nullam congue. Facilisi quis vel accumsan, dis diam adipiscing. In ipsum enim, nibh et nulla dui eu. Viverra montes, amet, est ut tincidunt. Sit sed in tristique nec sodales habitant tincidunt. Fames maecenas purus sollicitudin egestas tristique. Turpis sit aenean ornare imperdiet tempor in. Tincidunt volutpat, dolor et dapibus odio non viverra est. Habitant massa nunc, tincidunt elementum, tortor mi, aliquet tincidunt tellus.Nibh quis iaculis nascetur arcu. Leo viverra faucibus ut elementum. Amet nisl viverra orci donec montes, amet pretium libero. Pellentesque et et id mi, adipiscing. Volutpat auctor arcu morbi fringilla est, leo, odio. Habitasse porta sit integer sed.",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Lorem ipsum tellus  Aliquet volutpat  Lorem ipsum tellus  Aliquet volutpat Lorem ipsum tellus  Aliquet volutpat Lorem ipsum tellus  Aliquet volutpat Lorem ipsum tellus  Aliquet volutpat Lorem ipsum tellus  Aliquet volutpat Lorem ipsum tellus  Aliquet volutpat Lorem ipsum tellus  Aliquet volutpat Lorem ipsum tellus  Aliquet volutpat Lorem ipsum tellus  Aliquet volutpat Lorem ipsum tellus  Aliquet volutpat Lorem ipsum tellus  Aliquet volutpat Lorem ipsum tellus  Aliquet volutpat Lorem ipsum tellus  Aliquet volutpat ut netus nullam congue. Facilisi quis vel accumsan, dis diam adipiscing. In ipsum enim, nibh et nulla dui eu. Viverra montes, amet, est ut tincidunt. Sit sed in tristique nec sodales habitant tincidunt. Fames maecenas purus sollicitudin egestas tristique. Turpis sit aenean ornare imperdiet tempor in. Tincidunt volutpat, dolor et dapibus odio non viverra est. Habitant massa nunc, tincidunt elementum, tortor mi, aliquet tincidunt tellus.Nibh quis iaculis nascetur arcu. Leo viverra faucibus ut elementum. Amet nisl viverra orci donec montes, amet pretium libero. Pellentesque et et id mi, adipiscing. Volutpat auctor arcu morbi fringilla est, leo, odio. Habitasse porta sit integer sed.",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey),
                  )
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
