import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.010,
      ),
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Image.asset(
                      'assets/images/user1.jpg',
                      fit: BoxFit.cover,
                      width: size.width * 0.15,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Image.asset('assets/icons/haha.png'),
                  )
                ],
              ),
              SizedBox(
                width: size.width * 0.020,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Vihanga Nivarthana reacted to your \ncomment: Vihanga මේස රෙද්ද දාලා \n ගහමුද 😂",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "1 h",
                    style: GoogleFonts.roboto(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ],
          ),
          const Icon(
            Iconsax.more,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
