import 'dart:io';

import 'package:flutter/material.dart';
import 'package:poc_video/feature/bottom_app_bar/widget/bottom_app_bar.widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_compress/video_compress.dart';

class AddVideo extends StatelessWidget {
  const AddVideo({super.key});

  @override
  Widget build(BuildContext context) {
    final ImagePicker picker = ImagePicker();
    dynamic result;
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


/* 
 final info = await VideoCompress.compressVideo(
      file.path,
      quality: VideoQuality.MediumQuality,
      deleteOrigin: false,
      includeAudio: true,
    );

 */