import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import 'post_action.dart';

class Post extends StatelessWidget {
  final String name;
  final String image;
  final String time;
  final bool isPublic;
  final String type;
  final String? post;
  final String? postImage;
  final bool verify;

  const Post({
    super.key,
    required this.name,
    required this.image,
    required this.time,
    required this.isPublic,
    required this.type,
    this.post,
    this.postImage,
    this.verify = false,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.020,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: CircleAvatar(
                        child: Image.asset(image),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.020,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              name,
                              style: GoogleFonts.roboto(
                                color: const Color(0xffe4e6eb),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.007,
                            ),
                            verify
                                ? Icon(
                                    Iconsax.verify5,
                                    color: const Color(0xff0866ff),
                                    size: size.width * 0.050,
                                  )
                                : Container()
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "$time . ",
                              style: GoogleFonts.roboto(
                                color: const Color(0xff7c7e82),
                              ),
                            ),
                            Icon(
                              isPublic ? Icons.public : Icons.group,
                              color: const Color(0xff7c7e82),
                              size: size.width * 0.045,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Iconsax.more,
                      color: Color(0xffafb2b7),
                    ),
                    SizedBox(
                      width: size.width * 0.020,
                    ),
                    const Icon(
                      Icons.close,
                      color: Color(0xffafb2b7),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.015,
          ),
          type == "image"
              ? Image.asset(
                  postImage!,
                  fit: BoxFit.cover,
                )
              : type == "text"
                  ? Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.020,
                      ),
                      child: Text(
                        post!,
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                        ),
                      ),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.020,
                          ),
                          child: Text(
                            post!,
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.010,
                        ),
                        Image.asset(
                          postImage!,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
          SizedBox(
            height: size.height * 0.010,
          ),
          const Divider(
            indent: 10,
            endIndent: 10,
            color: Color(0xff65676b),
          ),
          SizedBox(
            height: size.height * 0.005,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.030,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PostAction(
                  label: 'Like',
                  image: 'assets/icons/post/like.png',
                ),
                PostAction(
                  label: 'Comment',
                  image: 'assets/icons/post/comment.png',
                ),
                PostAction(
                  label: 'Share',
                  image: 'assets/icons/post/share.png',
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.010,
          ),
          const Divider(
            thickness: 8,
            color: Colors.black87,
          ),
          SizedBox(
            height: size.height * 0.010,
          ),
        ],
      ),
    );
  }
}
