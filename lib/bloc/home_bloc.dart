import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_basic_flutter_application/bloc/home_event.dart';
import 'package:flutter_basic_flutter_application/bloc/home_state.dart';
import 'package:flutter_basic_flutter_application/ui/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(ColorInit(Color.fromARGB(255, 34, 255, 0))) {
    on<ChangeColorEvent>((event, emit) {
      emit(ColorRePaint(Color(Random().nextInt(0xffffffff))));
    });
  }
}
