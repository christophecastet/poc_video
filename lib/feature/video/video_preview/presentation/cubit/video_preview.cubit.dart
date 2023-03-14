import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:poc_video/feature/slider/data/repository/slider.repository.dart';
import 'package:poc_video/feature/slider/domain/entity/slider_list.entity.dart';
import 'package:poc_video/feature/slider/domain/service/slider.service.dart';
import 'package:poc_video/feature/video/video_preview/data/repository/video_preview.repository.dart';
import 'package:poc_video/feature/video/video_preview/domain/service/video_preview.service.dart';
import 'package:poc_video/feature/video/video_preview/presentation/widget/video_preview.widget.dart';
import 'package:video_compress/video_compress.dart';

part 'video_preview.state.dart';

class VideoPreviewCubit extends Cubit<VideoPreviewState> {
  VideoPreviewCubit() : super(const VideoPreviewInitialState());

  Future<void> handlePostVideo(MediaInfo? videoPreview) async {
    emit(const VideoPreviewLoadingState());
    try {
      VideoPreviewService videoPreviewService =
          VideoPreviewService(VideoPreviewRepository());

      dynamic result = await videoPreviewService.postVideo(videoPreview);
      emit(VideoPreviewLoadedState(result));
    } catch (e) {
      emit(VideoPreviewErrorState(e));
    }
  }
}
