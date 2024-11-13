import 'package:flutter/material.dart';
import 'package:kaala_mandi/res/app_colors.dart';
import 'package:kaala_mandi/views/home_screen_views/chat_view/sub_pages/message_view/widgets/message_appbar.dart';

import 'widgets/type_message.dart';

class MessageScreenView extends StatefulWidget {
  // final ChatroomModel chatModel;
  // final UserModel targetUser;

  const MessageScreenView({
    super.key,
  });

  @override
  State<MessageScreenView> createState() => _MessageScreenViewState();
}

class _MessageScreenViewState extends State<MessageScreenView> {
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customeAppbar(context),
      body: LayoutBuilder(builder: (context, constraints) {
        return Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListView(
                children: [
                  sendMessages(),
                  recievedMessages(),
                  sendMessages(),
                  recievedMessages(),
                  sendMessages(),
                  recievedMessages(),
                ],
              ),
            )),
            // Expanded(
            //   child: StreamBuilder(
            //     stream: FirebaseFirestore.instance
            //         .collection('chatrooms')
            //         .doc(chatModel.chatroomID)
            //         .collection('messages')
            //         .orderBy("updatedOn", descending: true)
            //         .snapshots(),
            //     builder: (context, snapshot) {
            //       if (snapshot.connectionState == ConnectionState.waiting) {
            //         return Center(
            //           child: loadingWidgetInkDrop(
            //               color: AppColors.kcDarkColor, size: 50),
            //         );
            //       }
            //       log(snapshot.data!.docs.length.toString());
            //
            //       if (snapshot.data == null) {
            //         return Center(
            //             child: loadingWidgetInkDrop(
            //                 size: 16.r, color: AppColors.kcDarkColor));
            //       }
            //
            //       if (snapshot.data!.docs.isEmpty) {
            //         return Center(
            //           child: Text(
            //             "Say hi to start a conversation!",
            //             style: TextStyle(
            //                 fontSize: 12.sp, color: AppColors.kcDarkColor),
            //           ),
            //         );
            //       }
            //
            //       return ListView.builder(
            //         padding: EdgeInsets.symmetric(horizontal: 16.w),
            //         itemCount: snapshot.data!.docs.length,
            //         reverse: true,
            //         itemBuilder: ((context, index) {
            //           Map<String, dynamic> mapData =
            //               snapshot.data!.docs[index].data();
            //
            //           var message = MessageModel.fromJson(mapData);
            //
            //           if (message.sender ==
            //               mainController.currentUserModel.value!.uid) {
            //             return sendMessages(message: message);
            //           } else {
            //             return recievedMessages(message: message);
            //           }
            //         }),
            //       );
            //     },
            //   ),
            // ),
            typeMessageContainer(
              context,
            ),
          ],
        );
      }),
    );
  }

  Widget sendMessages(
      // {required MessageModel message}
      ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            decoration: BoxDecoration(
              color: const Color(0xffE9EAEB),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  " message.text.toString()",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget recievedMessages(
      // {required MessageModel message}

      ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            decoration: BoxDecoration(
              color: AppColors.lightPrimaryColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "message.text.toString()",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
