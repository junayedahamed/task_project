import 'dart:async';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_project/src/ui/pdf/api/api_bloc/post_event.dart';
import 'package:task_project/src/ui/pdf/api/api_bloc/post_state.dart';
import 'package:task_project/src/ui/pdf/api/model/post_data_ui_model.dart';
import 'package:task_project/src/ui/pdf/api/repos/post_repo.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(InitialState()) {
    on<PostInitialFetchEvent>(postInitialFetchEvent);
  }

  FutureOr<void> postInitialFetchEvent(
    PostInitialFetchEvent event,
    Emitter<PostState> emit,
  ) async {
    try {
      emit(PostFetchingOngoing());
      List<PostDataUiModel> posts = await PostRepo.getPosts();
      emit(PostFetchSuccessState(posts: posts));
    } catch (e) {
      log(e.toString());
    }
  }
}
