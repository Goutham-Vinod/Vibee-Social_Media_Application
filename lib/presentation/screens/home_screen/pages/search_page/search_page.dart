
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/search_page/search_page_bloc.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/core/config.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/core/routing/routing_arguments/profile_page_arguments.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final TextEditingController searchTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScreenColor,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              children: [
                const SizedBox(width: 15),
                vibeeLogo(size: 30),
              ],
            ),
            const SizedBox(height: 30),
            vibeeTextFormField(
              width: 330,
              hint: "Search",
              textController: searchTextController,
              suffixIcon: IconButton(
                icon: const Icon(Icons.search),
                color: Colors.white,
                //  size: 25,
                onPressed: () {
                  BlocProvider.of<SearchPageBloc>(context)
                      .add(SearchPageEvent.search(
                    searchKey: searchTextController.text,
                  ));
                },
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                SizedBox(width: 20),
                // Row(
                //   children: [
                //     Checkbox(
                //       value: true,
                //       checkColor: Colors.black,
                //       fillColor: const MaterialStatePropertyAll(
                //           Color.fromARGB(255, 255, 255, 255)),
                //       onChanged: (value) {},
                //     ),
                //     vibeeText("Include only friends of friends"),
                //   ],
                // )
              ],
            ),
            Expanded(
              child: BlocBuilder<SearchPageBloc, SearchPageState>(
                builder: (context, state) {
                  if (state.isSearchLoading) {
                    return const Center(
                      child: LinearProgressIndicator(),
                    );
                  } else if (state.errorMessage != null &&
                      state.errorMessage!.isNotEmpty) {
                    return Center(
                      child: vibeeText(state.errorMessage!),
                    );
                  } else {
                    return state.searchResultResponse == null
                        ? Center(
                            child: vibeeText('No results to show'),
                          )
                        : ListView.builder(
                            shrinkWrap: true,
                            itemCount:
                                state.searchResultResponse!.result!.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: InkWell(
                                  onTap: () {},
                                  child: vibeeListTile(
                                      title:
                                          "${state.searchResultResponse!.result![index].firstName}",
                                      subtitle:
                                          "${state.searchResultResponse!.result![index].username}",
                                      prefixWidget: vibeeDp(
                                        height: 45,
                                        width: 45,
                                        image: ProfilePicture(state, index),
                                      ),
                                      onTap: () {
                                        print('list tile clicked');

                                        Navigator.of(context).pushNamed(
                                            RouteGenerator.profilePage,
                                            arguments: ProfilePageArguments(
                                              firstName: state
                                                  .searchResultResponse
                                                  ?.result?[index]
                                                  .firstName,
                                              lastName: state
                                                  .searchResultResponse
                                                  ?.result?[index]
                                                  .lastName,
                                              username: state
                                                  .searchResultResponse
                                                  ?.result?[index]
                                                  .username,
                                              isCurrentUserProfile: false,
                                            ));
                                      }),
                                ),
                              );
                            },
                          );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  // AssetImage ProfilePicture(SearchPageState state) => AssetImage(CommonVariables.defaultDp);

  ImageProvider ProfilePicture(SearchPageState state, int index) {
    if (state.searchResultResponse?.result?[index].profilePicture != null) {
      return NetworkImage(Config.getPictureUrl(
          picturePath:
              state.searchResultResponse!.result![index].profilePicture!));
    } else {
      return AssetImage(CommonVariables.defaultDp);
    }
  }
}
