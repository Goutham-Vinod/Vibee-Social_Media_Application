import 'package:flutter/material.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/domain/models/get_all_conversations_response_model/get_all_conversations_response_model.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

sharePostModalBottomSheet({
  required BuildContext context,
  Function? sentButtonOnTap,
  Function? shareAsPostOnTap,
  List<GetAllConversationsResponseModel>? getAllConversationsResponseList,
}) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    backgroundColor: backgroundScreenColor2,
    builder: (BuildContext context) {
      return SizedBox(
        height: 300,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                      onPressed: () {
                        if (shareAsPostOnTap != null) {
                          shareAsPostOnTap();
                        }
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.transparent),
                          side: MaterialStatePropertyAll(
                              BorderSide(color: Colors.white)),
                          iconColor: MaterialStatePropertyAll(Colors.white)),
                      child: vibeeText('Share as post',
                          color: Colors.white, size: 20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    vibeeText('Sent as message', color: Colors.white, size: 18),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: getAllConversationsResponseList?.length ?? 0,
                  itemBuilder: (context, friendIndex) {
                    return vibeeListTile(
                      title: getAllConversationsResponseList?[friendIndex]
                                  .isGroupChat ==
                              true
                          ? getAllConversationsResponseList![friendIndex]
                              .chatName
                          : '${getAllConversationsResponseList?[friendIndex].users?[0].firstName} ${getAllConversationsResponseList?[friendIndex].users?[0].lastName}',
                      titleSize: 15,
                      prefixWidget: vibeeDp(
                          height: 50,
                          width: 50,
                          image: AssetImage(CommonVariables.defaultDp)),
                      suffixWidget: vibeeOutlineButton(
                          message: 'Sent',
                          onPressed: () {
                            if (sentButtonOnTap != null) {
                              sentButtonOnTap(friendIndex);
                            }
                          }),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
