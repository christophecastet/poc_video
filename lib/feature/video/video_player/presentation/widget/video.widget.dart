import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  final String videoUrl;
  const VideoWidget({super.key, required this.videoUrl});

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController controller;
  @override
  void initState() {
    super.initState();
    // change asset or network according to video origin
    controller = VideoPlayerController.asset(
      widget.videoUrl,
    )
      /* ..addListener(() => setState(() {})) */
      ..setLooping(true)
      ..initialize().then((_) {
        controller.play();
        controller.setPlaybackSpeed(1);
      });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(controller.value.size.width);
    return Stack(
      children: [
        VideoPlayer(controller),
        Column(
          children: [
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text('DESC',
                                  style: TextStyle(color: Colors.white)),
                            ]),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 80,
                              child: const Icon(
                                Icons.access_alarm,
                                color: Colors.white70,
                              ),
                            ),
                            Container(
                              height: 80,
                              child: const Icon(
                                Icons.accessible,
                                color: Colors.white70,
                              ),
                            ),
                            Container(
                              height: 80,
                              child: const Icon(
                                Icons.safety_divider,
                                color: Colors.white70,
                              ),
                            ),
                            Container(
                              height: 80,
                              child: const Icon(
                                Icons.earbuds_battery_outlined,
                                color: Colors.white70,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
