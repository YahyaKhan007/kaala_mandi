import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/res/app_colors.dart';

PreferredSize customeAppbar(
  BuildContext context,
  // UserModel targetUser
) {
  Size size = MediaQuery.of(context).size;
  return PreferredSize(
      preferredSize: Size.fromHeight(96),
      child: Container(
        color: AppColors.lightPrimaryColor,
        child: Padding(
          padding: EdgeInsets.only(top: 24),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    GestureDetector(
                        onTap: () => Get.back(),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 20,
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        )),
                    SizedBox(
                      width: size.width * 0.26,
                    ),
                    Text(
                      'Message',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  horizontalTitleGap: 0,
                  minVerticalPadding: 0,
                  titleAlignment: ListTileTitleAlignment.center,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: const CachedNetworkImageProvider(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6UC2VRLbRRbsduq3MX8aNLfUR5RweLFLRVJzxx6xvssNSeQYlanpHm_rf0cFD-sr0i4I&usqp=CAU'),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Usama Haneef",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Active now',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
      ));
}
