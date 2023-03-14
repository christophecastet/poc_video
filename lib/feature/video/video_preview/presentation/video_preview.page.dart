import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:poc_video/feature/slider/presentation/cubit/slider.cubit.dart';
import 'package:poc_video/feature/slider/presentation/widget/slider.widget.dart';
import 'package:poc_video/feature/video/video_preview/presentation/cubit/video_preview.cubit.dart';
import 'package:poc_video/feature/video/video_preview/presentation/widget/video_preview.widget.dart';
import 'package:video_compress/video_compress.dart';

class VideoPreviewPage extends StatelessWidget {
  const VideoPreviewPage({
    Key? key,
    this.videoPreview,
  }) : super(key: key);
  final MediaInfo? videoPreview;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => VideoPreviewCubit(),
        ),
      ],
      child: VideoPreviewView(videoPreview: videoPreview!),
    );
  }
}

class VideoPreviewView extends StatelessWidget {
  const VideoPreviewView({Key? key, this.videoPreview}) : super(key: key);
  final MediaInfo? videoPreview;

  @override
  Widget build(BuildContext context) {
    return VideoPreview(videoPreview: videoPreview!);
  }
}
