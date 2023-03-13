import 'package:poc_video/feature/slider/data/data_source/slider.firebase.dart';
import 'package:poc_video/feature/slider/data/dto/slider_list.dto.dart';
import 'package:poc_video/feature/slider/data/repository/ISlider.repository.dart';
import 'package:poc_video/feature/slider/domain/entity/slider_list.entity.dart';

class SliderRepository implements ISliderRepository {
  SliderFirebase sliderFirebase = SliderFirebase();

  @override
  Future<SliderListEntity> getVideo() async {
    try {
      SliderListDto sliderListDto = await sliderFirebase.getVideo();
      SliderListEntity sliderListEntity =
          SliderListEntity(sliderListEntity: sliderListDto.sliderListDto);
      return sliderListEntity;
    } catch (e) {
      rethrow;
    }
  }
}
