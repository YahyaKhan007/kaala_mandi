import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../../../res/app_colors.dart';

Widget typeMessageContainer(
  BuildContext context,
  // Size size,
  // TextEditingController messageController,
  // UserModel targetUser,
  // ChatroomModel chatModel
) {
  Size size = MediaQuery.of(context).size;
  return Container(
    // height: size.height * 0.1,
    width: size.width,
    padding: EdgeInsets.only(left: 16, right: 0, top: 16, bottom: 16),
    decoration: BoxDecoration(color: AppColors.lightPrimaryColor),
    child: Center(
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          // 8horizontalSpace,
          SizedBox(
            width: 8,
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffE9EAEB),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                minLines: 1,
                maxLines: 3,
                // controller: messageController,
                style: TextStyle(fontSize: 12, color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type a message ...',
                  hintStyle: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 16, right: 8),
            child: GestureDetector(
              onTap: () async {
                // await sendMessage(
                //     message: messageController.text,
                //     targetUser: targetUser,
                //     chatroom: chatModel);

                // messageController.clear();
              },
              // child: SvgPicture.asset('assets/icons/send_svg.svg'),
              child: Transform.rotate(
                angle: -40 * pi / 180,
                child: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Future<void> sendMessage(
    // {required String message,
    //   required UserModel targetUser,
    //   required ChatroomModel chatroom}
    ) async {
  // final mainController = Get.find<ChatBridgeMainController>();
  //
  // ChatService chatService = ChatService();
  //
  // MessageModel newMessage = MessageModel(
  //   image: null,
  //   isDelivered: false,
  //   isSeen: false,
  //   messageID: uuid.v4(),
  //   readTime: null,
  //   receiver: targetUser.uid,
  //   sender: mainController.currentUserModel.value!.uid,
  //   sentTime: Timestamp.now(),
  //   text: message,
  //   updatedOn: Timestamp.now(),
  // );

  // await chatService.sendMessage(message: newMessage, chatroom: chatroom);
}
