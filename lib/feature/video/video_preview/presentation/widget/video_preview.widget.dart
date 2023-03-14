import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poc_video/feature/bottom_app_bar/widget/bottom_app_bar.widget.dart';
import 'package:poc_video/feature/video/video_preview/presentation/cubit/video_preview.cubit.dart';
import 'package:poc_video/main.dart';
import 'package:video_compress/video_compress.dart';

import 'package:video_player/video_player.dart';

class VideoPreview extends StatefulWidget {
  VideoPreview({super.key, this.videoPreview});
  late MediaInfo? videoPreview;

  @override
  State<VideoPreview> createState() => _VideoPreviewState();
}

class _VideoPreviewState extends State<VideoPreview> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        VideoPlayerController.file(File(widget.videoPreview!.path as String))
          ..initialize().then((_) {
            // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
            setState(() {});
          });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VideoPreviewCubit, VideoPreviewState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is VideoPreviewLoadedState) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        }
        return Scaffold(
            bottomNavigationBar: const BottomAppBarWidget(),
            body: Center(
                child: _controller.value.isInitialized
                    ? Container(
                        width: double.infinity,
                        child: AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        ),
                      )
                    : Container()),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  heroTag: "btn1",
                  onPressed: () {
                    setState(() {
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    });
                  },
                  child: Icon(
                    _controller.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                  ),
                ),
                FloatingActionButton(
                  heroTag: "btn2",
                  onPressed: () {
                    context
                        .read<VideoPreviewCubit>()
                        .handlePostVideo(widget.videoPreview);
                  },
                  child: const Icon(
                    Icons.done,
                  ),
                )
              ],
            ));
      },
    );
  }
}
