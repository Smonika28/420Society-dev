import 'package:flutter/material.dart';
import 'package:four20society/global_widget/custom_button.dart';



class CustomProductCardWidget extends StatelessWidget {
  const CustomProductCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
          color: Colors.grey.shade50, borderRadius: BorderRadius.circular(12)),
      child: Column(children: [
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.35,
              height: 102,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  ),
              child: Image.network("https://excellis.co.in/420-society-world/frontend_assets/images/canabi.png",fit: BoxFit.fill,),
            ),
           const SizedBox(width: 15),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 180,
                  child: Text(
                    "Organic hemp flower Organic hemp flower ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                Text(
                  "\$152",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "abc",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text("xyz",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              ],
            ),
          ],
        ),
        //buttons
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomElevatedButton(
                color:const Color(0xFFCCF4F1),
                textStyle: const TextStyle(fontSize: 14,color: Color(0xFF00C8B8)),
                height: 50,
                onTap: () {  }, title: 'Add to Cart',),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                 minimumSize: const Size(0, 53),
                  foregroundColor: const Color(0XFFFF1C1C),
                  shape: const StadiumBorder(),
                  side: const BorderSide(
                    color: Colors.red,
                    width: 1,
                  ),
                ),
                child: const Text("Remove"),
                onPressed: () {},
              ),
            ),
          ],
        ),
        //  end of buttons
      ]),
      //end of cart design
    );
  }
}