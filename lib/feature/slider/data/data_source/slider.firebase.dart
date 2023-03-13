import 'package:firebase_storage/firebase_storage.dart';
import 'package:poc_video/feature/slider/data/dto/slider.dto.dart';
import 'package:poc_video/feature/slider/data/dto/slider_list.dto.dart';

class SliderFirebase {
  Future<dynamic> getVideo() async {
    try {
      final storageRef = FirebaseStorage.instance.ref().child("files");
      final listResult = await storageRef.listAll();

      final urls = await Future.wait(
          listResult.items.map((e) => e.getDownloadURL()).toList());

      return SliderListDto(sliderListDto: urls);
    } catch (e) {
      rethrow;
    }
  }
}
