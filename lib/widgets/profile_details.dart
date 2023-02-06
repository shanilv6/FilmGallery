import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  final IconData ProfileIcon ;
  final text;
  const ProfileDetails({
    Key? key,required this.text, required this.ProfileIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5,left: 10,right: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    ProfileIcon,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    text,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.white,
              ),

            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 0.9,
            color: Colors.grey[700],
          ),

        ],
      ),
    );
  }
}
