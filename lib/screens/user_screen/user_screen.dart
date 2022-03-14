import 'package:flutter/material.dart';
import 'package:flutter_hw_11_profile/screens/user_screen/widget/user_btn_list.dart';
import 'package:flutter_hw_11_profile/screens/user_screen/widget/user_friends.dart';
import 'package:flutter_hw_11_profile/screens/user_screen/widget/user_info.dart';

import '../../constants/user_text_style.dart';
import '../../model/user_modal.dart';

class UserScreen extends StatelessWidget {
  UserScreen({Key? key}) : super(key: key);
  final listUser = User.getUser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const UserInfo(),
              const UserBtnList(),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 10),
                child: Text(
                  'Friends',
                  style: UserTextStyle.fontSize16W400Black,
                ),
              ),
              SizedBox(
                height: 290,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: listUser.length,
                  itemBuilder: (context, index) =>
                      UserFriends(user: listUser[index]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
