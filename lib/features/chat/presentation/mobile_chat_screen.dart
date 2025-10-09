import 'package:flutter/material.dart';
import 'package:whats_up/features/chat/presentation/widgets/bottom_chat_field_widget.dart';
import '../../../common/utils/colors.dart';
import 'widgets/chat_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../common/widgets/loader_widget.dart';
import '../../auth/data/model/user_model.dart';
import '../../auth/domain/controller/auth_controller.dart';

class MobileChatScreen extends ConsumerWidget {
  static const String routeName = '/mobile-chat';
  final String name;
  final String uid;

  const MobileChatScreen({Key? key, required this.name, required this.uid})
    : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title:StreamBuilder<UserModel>(
            stream: ref.read(authControllerProvider).userDataById(uid),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Loader();
              }
              return Column(
                children: [
                  Text(name),
                  Text(
                    snapshot.data!.isOnline ? 'online' : 'offline',
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              );
            }),

        // Text(
        //     //info[0]['name'].toString()
        //   name
        // ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body:Column(
        children: [
          const Expanded(child: ChatList()),
          BottomChatField(),
        ],
      ),
    );
  }
}


