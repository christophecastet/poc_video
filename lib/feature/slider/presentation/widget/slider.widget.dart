import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poc_video/feature/slider/presentation/cubit/slider.cubit.dart';
import 'package:poc_video/feature/video/video_player/presentation/widget/video.widget.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  void initState() {
    super.initState();
    context.read<SliderCubit>().handleGetVideo();
  }

  List videos = [
    "assets/video/video-1.mp4",
    "assets/video/video-2.mp4",
    "assets/video/video-3.mp4",
  ];

  /// Force videos size 720 *1280 to avoid android.media.MediaCodec$CodecException: Error 0xffffec77
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SliderCubit, SliderState>(
        builder: (context, state) {
          // remove comment in case of firebase use only 1GB per day
          /*   if (state is SliderLoadingState) {
            return const CircularProgressIndicator(
              color: Colors.blueAccent,
            );
          } else if (state is SliderLoadedState) {
            return CarouselSlider(
              options: CarouselOptions(
                height: double.infinity,
                scrollDirection: Axis.vertical,
                enableInfiniteScroll: false,
                viewportFraction: 1.0,
              ),
              items: videos.map((item) {
                return VideoWidget(
                  videoUrl: item,
                );
              }).toList(),
            );
          } */
          return CarouselSlider(
            options: CarouselOptions(
              height: double.infinity,
              scrollDirection: Axis.vertical,
              enableInfiniteScroll: false,
              viewportFraction: 1.0,
            ),
            items: videos.map((item) {
              return Container(
                decoration: const BoxDecoration(color: Color(0xFF141518)),
                child: VideoWidget(
                  videoUrl: item,
                ),
              );
            }).toList(),
          );
        },
        listener: (context, state) {});
  }
}
