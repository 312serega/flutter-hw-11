import 'package:flutter/material.dart';
import 'package:flutter_hw_11_profile/constants/user_text_style.dart';
import 'package:flutter_hw_11_profile/screens/user_screen/widget/user_btn_item.dart';

import '../../../constants/user_colors.dart';

class UserBtnList extends StatelessWidget {
  const UserBtnList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 12),
          child: Text(
            'Select type',
            style: UserTextStyle.fontSize16W400Black,
          ),
        ),
        SizedBox(
          height: 32,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: const [
              SizedBox(width: 16),
              UserBtnItem(title: 'Black'),
              SizedBox(width: 8),
              UserBtnItem(title: 'Bold'),
              SizedBox(width: 8),
              UserBtnItem(title: 'Medium'),
              SizedBox(width: 8),
              UserBtnItem(title: 'Regular'),
              SizedBox(width: 8),
              UserBtnItem(title: 'Light'),
              SizedBox(width: 8),
              UserBtnItem(title: 'Thin'),
              SizedBox(width: 16),
            ],
          ),
        ),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Divider(
            height: 1,
            color: UserColor.lightGreyOpacity,
          ),
        ),
      ],
    );
  }
}
