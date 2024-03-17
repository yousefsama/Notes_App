import 'package:flutter/material.dart';

class Note_Item extends StatelessWidget {
  const Note_Item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.cyan.shade300),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 6.0, top: 10, bottom: 16),
            child: ListTile(
              trailing: Icon(
                Icons.delete_sharp,
                color: Colors.black,
              ),
              title: Text(
                "Flutter Tips",
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
              subtitle: Text(
                'Build your career with thrwat samy sdasd sad asdasd ja shdjk ajsdhk jasdhk jajs dhkja hsd ',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 22, bottom: 16),
            child: Text(
              'May 21,2023',
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
