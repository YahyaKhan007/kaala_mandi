import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaala_mandi/res/loading_widgets/loading_three_dots.dart';
import 'package:kaala_mandi/view_models/chat_vm/chat_vm.dart';

import '../../../res/app_colors.dart';
import '../../../res/widgets/text_widgets.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  late ChatViewModel viewModel;
  @override
  void initState() {
    // TODO: implement initState

    viewModel = Get.put(ChatViewModel());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.lightPrimaryColor,
        title: HeadingMediumText(
          text: "Chats",
          textColor: Colors.white,
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: ListView.builder(
                  itemCount: viewModel.dummyName.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: ListTile(
                        onTap: () {
                          viewModel.openMessages();
                        },
                        contentPadding: EdgeInsets.zero,
                        leading: CircleAvatar(
                          radius: 28,
                          backgroundColor: AppColors.lightPrimaryColor,
                          child: Container(
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: CachedNetworkImage(
                                // imageUrl: model.profilePicture.isEmpty
                                //     ?
                                imageUrl:
                                    'https://www.iconfinder.com/icons/8581109/unknown_user_avatar_profile_person_account_human_icon',
                                // : model.profilePicture,
                                fit: BoxFit.cover,
                                errorWidget: (context, url, error) => Center(
                                  child: Icon(
                                    Icons.error,
                                    color: Colors.white,
                                  ),
                                ),
                                placeholder: (context, url) => Center(
                                    child: AppLoading.loadingThreeDot(
                                        color: Colors.white54, size: 20)),
                              ),
                            ),
                          ),
                        ),
                        title: BodyMediumText(
                          text: viewModel.dummyName[index],
                        ),
                        subtitle: BodyTinyText(
                            text: 'Hello Sir, Do you wanna buy this ...'),
                        trailing: Transform.rotate(
                            angle: 90 * pi / 180,
                            child: Icon(Icons.more_horiz)),
                      ),
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
