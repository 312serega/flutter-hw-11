import 'package:flutter/material.dart';
import 'package:flutter_hw_11_profile/constants/user_colors.dart';
import 'package:flutter_hw_11_profile/constants/user_img_src.dart';
import 'package:flutter_hw_11_profile/constants/user_text_style.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Stack(
            children: [
              const CircleAvatar(
                radius: 59,
                backgroundImage: AssetImage(UserImgSrc.userAvatar),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 18,
                  child: CircleAvatar(
                    backgroundColor: UserColor.violet500,
                    radius: 16,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.add),
                      color: Colors.white,
                      splashRadius: 22,
                      iconSize: 18,
                      onPressed: () {},
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 24),
          const Text(
            'Tiana Rosser',
            style: UserTextStyle.fontSize16W400Black,
          ),
          const Text(
            'Developer',
            style: UserTextStyle.font12W400Grey,
          ),
          const SizedBox(height: 24),
          const Divider(
            height: 1,
            color: UserColor.lightGreyOpacity,
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
