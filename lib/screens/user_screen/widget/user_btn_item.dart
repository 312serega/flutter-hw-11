import 'package:flutter/material.dart';

class UserBtnItem extends StatelessWidget {
  const UserBtnItem({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(title),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
          const Color(0xff929292),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(0xffEBEBEB),
        ),
        elevation: MaterialStateProperty.all<double>(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(68),
          ),
        ),
      ),
    );
  }
}
