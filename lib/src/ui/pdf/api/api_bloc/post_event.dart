import 'package:flutter/material.dart';

@immutable
abstract class PostEvent {}

class PostInitialFetchEvent extends PostEvent {}
