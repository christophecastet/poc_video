part of 'slider.cubit.dart';

abstract class SliderState extends Equatable {
  const SliderState();
}

class SliderInitialState extends SliderState {
  const SliderInitialState();

  @override
  List<Object> get props => [];
}

class SliderLoadingState extends SliderState {
  const SliderLoadingState();

  @override
  List<Object> get props => [];
}

class SliderLoadedState extends SliderState {
  final SliderListEntity? sliderListEntity;
  const SliderLoadedState(this.sliderListEntity);

  @override
  List<Object> get props => [sliderListEntity!];
}

class SliderErrorState extends SliderState {
  final Object? error;
  const SliderErrorState(this.error);

  @override
  List<Object> get props => [error!];
}
