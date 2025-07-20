
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_project/src/ui/pdf/api/api_bloc/post_bloc.dart';
import 'package:task_project/src/ui/pdf/api/api_bloc/post_event.dart';
import 'package:task_project/src/ui/pdf/api/api_bloc/post_state.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final PostBloc postBloc = PostBloc();

  @override
  void initState() {
    postBloc.add(PostInitialFetchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Page"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: BlocConsumer<PostBloc, PostState>(
        bloc: postBloc,
        listener: (context, state) => state is PosActionState,
        buildWhen: (previous, current) => current is! PosActionState,
        builder: (context, state) {
          switch (state) {
            case PostFetchingOngoing():
              return Center(child: LinearProgressIndicator());
            case PostFetchSuccessState():
              final success = state.posts;

              return ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    // height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ListTile(
                      title: Text(success[index].title),
                      subtitle: Text(success[index].body),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 15);
                },
                itemCount: success.length,
              );
            default:

              // log('hello ${success.posts.toString()}');
              return SizedBox();
          }
        },
      ),
    );
  }
}
