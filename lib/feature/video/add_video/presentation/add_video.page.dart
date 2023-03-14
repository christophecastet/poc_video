import 'dart:io';

import 'package:flutter/material.dart';
import 'package:poc_video/feature/bottom_app_bar/widget/bottom_app_bar.widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:poc_video/feature/video/video_preview/presentation/video_preview.page.dart';
import 'package:poc_video/feature/video/video_preview/presentation/widget/video_preview.widget.dart';
import 'package:video_compress/video_compress.dart';

class AddVideo extends StatelessWidget {
  const AddVideo({super.key});

  @override
  Widget build(BuildContext context) {
    final ImagePicker picker = ImagePicker();
    dynamic result;
    TextEditingController _controller = TextEditingController();
    print(result);
    return Scaffold(
      bottomNavigationBar: const BottomAppBarWidget(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  // compression  is not happy on flutter try do do by BE
                  XFile? file =
                      await picker.pickVideo(source: ImageSource.camera);

                  result = await VideoCompress.compressVideo(
                    file!.path,
                    quality: VideoQuality.MediumQuality,
                    deleteOrigin: false,
                    includeAudio: true,
                  );

                  if (result != null && context.mounted) {
                    await showDialog<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Ajouter un nom'),
                          content: TextField(
                            controller: _controller,
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context, _controller.text);
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                    if (_controller.text.isNotEmpty && context.mounted) {
                      result.title = _controller.text;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                VideoPreviewPage(videoPreview: result)),
                      );
                    }
                  }
                },
                child: const Text('Prendre une vidéo')),
            ElevatedButton(
                onPressed: () async {
                  XFile? file =
                      await picker.pickVideo(source: ImageSource.gallery);

                  result = await VideoCompress.compressVideo(
                    file!.path,
                    quality: VideoQuality.MediumQuality,
                    deleteOrigin: false,
                    includeAudio: true,
                  );
                },
                child: const Text('Choisir une vidéo'))
          ],
        ),
      ),
    );
  }
}
