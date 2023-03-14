import 'package:poc_video/feature/slider/data/data_source/slider.firebase.dart';
import 'package:poc_video/feature/slider/data/dto/slider_list.dto.dart';
import 'package:poc_video/feature/slider/data/repository/ISlider.repository.dart';
import 'package:poc_video/feature/slider/domain/entity/slider_list.entity.dart';
import 'package:poc_video/feature/video/video_preview/data/data_source/video_preview.firebase.dart';
import 'package:poc_video/feature/video/video_preview/data/repository/IVideo_preview.repository.dart';
import 'package:poc_video/feature/video/video_preview/presentation/widget/video_preview.widget.dart';
import 'package:video_compress/video_compress.dart';

class VideoPreviewRepository implements IVideoPreviewRepository {
  VideoPreviewFirebase videoPreviewFirebase = VideoPreviewFirebase();

  @override
  Future<dynamic> postVideo(MediaInfo? videoPreview) async {
    try {
      dynamic result = await videoPreviewFirebase.postVideo(videoPreview);

      return result;
    } catch (e) {
      rethrow;
    }
  }
}
