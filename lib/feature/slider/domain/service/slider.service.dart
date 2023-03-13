import 'package:poc_video/feature/slider/data/repository/ISlider.repository.dart';
import 'package:poc_video/feature/slider/domain/entity/slider_list.entity.dart';

class SliderService {
  final ISliderRepository sliderRepository;

  SliderService(this.sliderRepository);

  Future<SliderListEntity> getVideo() async {
    try {
      SliderListEntity sliderListEntity = await sliderRepository.getVideo();
      return sliderListEntity;
    } catch (e) {
      rethrow;
    }
  }
}
