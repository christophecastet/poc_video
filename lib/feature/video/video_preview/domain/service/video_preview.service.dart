import 'package:poc_video/feature/slider/data/repository/ISlider.repository.dart';
import 'package:poc_video/feature/slider/domain/entity/slider_list.entity.dart';
import 'package:poc_video/feature/video/video_preview/data/repository/IVideo_preview.repository.dart';
import 'package:video_compress/video_compress.dart';

import '../../presentation/widget/video_preview.widget.dart';

class VideoPreviewService {
  final IVideoPreviewRepository videoPreviewRepository;

  VideoPreviewService(this.videoPreviewRepository);

  Future<dynamic> postVideo(MediaInfo? videoPreview) async {
    try {
      dynamic result = await videoPreviewRepository.postVideo(videoPreview);
      return result;
    } catch (e) {
      rethrow;
    }
  }
}
