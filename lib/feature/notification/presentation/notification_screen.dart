import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification screen"),
      ),
      body: ListView.builder(itemCount: 20,itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom:5),
          decoration: BoxDecoration(
             color:const Color.fromARGB(255, 211, 209, 209).withOpacity(0.4),
          ),
          child: const ListTile(
            // contentPadding: EdgeInsets.zero,
            title: Text("Order Name"),
            subtitle: Text("slkdfjlksdjfkljs kjsldfj skj"),
          ),
        );
      },)
    );
  }
}