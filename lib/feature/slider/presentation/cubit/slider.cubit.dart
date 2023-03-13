import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:poc_video/feature/slider/data/repository/slider.repository.dart';
import 'package:poc_video/feature/slider/domain/entity/slider_list.entity.dart';
import 'package:poc_video/feature/slider/domain/service/slider.service.dart';

part 'slider.state.dart';

class SliderCubit extends Cubit<SliderState> {
  SliderCubit() : super(const SliderInitialState());

  Future<void> handleGetVideo() async {
    emit(const SliderLoadingState());
    try {
      SliderService sliderService = SliderService(SliderRepository());

      SliderListEntity sliderVideoListEntity = await sliderService.getVideo();
      emit(SliderLoadedState(sliderVideoListEntity));
    } catch (e) {
      emit(SliderErrorState(e));
    }
  }
}
