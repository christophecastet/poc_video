import 'package:poc_video/feature/slider/domain/entity/slider_list.entity.dart';

abstract class ISliderRepository {
  Future<SliderListEntity> getVideo();
}
