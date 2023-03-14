part of 'video_preview.cubit.dart';

abstract class VideoPreviewState extends Equatable {
  const VideoPreviewState();
}

class VideoPreviewInitialState extends VideoPreviewState {
  const VideoPreviewInitialState();

  @override
  List<Object> get props => [];
}

class VideoPreviewLoadingState extends VideoPreviewState {
  const VideoPreviewLoadingState();

  @override
  List<Object> get props => [];
}

class VideoPreviewLoadedState extends VideoPreviewState {
  final dynamic sliderListEntity;
  const VideoPreviewLoadedState(this.sliderListEntity);

  @override
  List<Object> get props => [sliderListEntity!];
}

class VideoPreviewErrorState extends VideoPreviewState {
  final Object? error;
  const VideoPreviewErrorState(this.error);

  @override
  List<Object> get props => [error!];
}
