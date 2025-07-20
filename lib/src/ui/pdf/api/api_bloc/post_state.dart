import 'package:task_project/src/ui/pdf/api/model/post_data_ui_model.dart';

abstract class PostState {}

class PosActionState extends PostState {}

class PostFetchingOngoing extends PostState {}

class InitialState extends PostState {}

class PostFetchSuccessState extends PostState {
  final List<PostDataUiModel> posts;
  PostFetchSuccessState({required this.posts});
}
