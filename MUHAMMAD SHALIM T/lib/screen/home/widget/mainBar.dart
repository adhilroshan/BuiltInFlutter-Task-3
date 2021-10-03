import 'package:flutter/material.dart';
import 'package:news_app/screen/config/var/var.dart' as configimg;

class MainBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          child: Image.network(configimg.mainImg),
          borderRadius: BorderRadius.circular(18),
        ),
        SizedBox(height: 10),
        Container(
          width: screenwidth * 0.8,
          child: Text('Ninja H2R',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500)),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(configimg.profilePic),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Ninja',
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),
            const Text(
              '05 Oct 2021',
              style: TextStyle(color: Colors.black45),
            ),
          ],
        ),
      ],
    );
  }
}
