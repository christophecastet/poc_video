import 'package:poc_video/feature/slider/domain/entity/slider_list.entity.dart';
import 'package:poc_video/feature/video/video_preview/presentation/widget/video_preview.widget.dart';
import 'package:video_compress/video_compress.dart';

abstract class IVideoPreviewRepository {
  Future<dynamic> postVideo(MediaInfo? videoPreview);
}
