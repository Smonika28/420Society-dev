import 'package:flutter/material.dart';
import 'package:four20society/global_widget/custom_button.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:four20society/feature/notification/presentation/notification_screen.dart';
import 'package:four20society/global_widget/app_drawar.dart';


class CustomHomeProductCardWidget extends StatelessWidget {
  const CustomHomeProductCardWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 220,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0XFFF9F9F9),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              color: Colors.black87.withOpacity(0.05),
              offset: const Offset(0, 0),
              blurRadius: 10,
              spreadRadius: 5),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Image.network(
              "https://excellis.co.in/420-society-world/public/storage/products/1678453548_50172_edbee168-fa13-41a1-85b6-47c81e322be7.jfif",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8),
            width: 150,
            child: RatingBarIndicator(
              rating: 4,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemCount: 5,
              itemSize: 20.0,
              direction: Axis.horizontal,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          const Text(
            "Lorem ispum dopnipe fhg",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Row(
            children:  [
              Text(
                "\$ 152",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "\$ 160",
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.lineThrough,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          const Text(
            "27% THC",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Humboldt Farms",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              GestureDetector(
                onTap: () {},
                child: const CircleAvatar(
                  minRadius: 20,
                  backgroundColor: const Color(0xFF00C8B8),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}