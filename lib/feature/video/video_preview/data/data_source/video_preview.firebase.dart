import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:poc_video/feature/slider/data/dto/slider.dto.dart';
import 'package:poc_video/feature/slider/data/dto/slider_list.dto.dart';
import 'package:poc_video/feature/video/video_preview/presentation/widget/video_preview.widget.dart';
import 'package:video_compress/video_compress.dart';

class VideoPreviewFirebase {
  Future<dynamic> postVideo(MediaInfo? videoPreview) async {
    try {
      final storageRef = FirebaseStorage.instance.ref('files');
      final mountainsRef = storageRef.child(videoPreview!.title!);

      await mountainsRef.putFile(videoPreview.file!);
      return 1;
    } catch (e) {
      rethrow;
    }
  }
}
