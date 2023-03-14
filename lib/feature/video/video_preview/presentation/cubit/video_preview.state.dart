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
  final dynamic result;
  const VideoPreviewLoadedState(this.result);

  @override
  List<Object> get props => [result!];
}

class VideoPreviewErrorState extends VideoPreviewState {
  final Object? error;
  const VideoPreviewErrorState(this.error);

  @override
  List<Object> get props => [error!];
}
