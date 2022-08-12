import 'package:flutter/material.dart';

class ItemCastWidget extends StatelessWidget {
  const ItemCastWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      width: 100,
      child: Column(
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundColor: Colors.white12,
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/2227958/pexels-photo-2227958.jpeg?auto=compress&cs=tinysrgb&w=800'),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            "Daniel Gonzales",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 13.0),
          ),
          Text(
            "Actor de Reparto",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 11.0),
          ),
        ],
      ),
    );
  }
}
