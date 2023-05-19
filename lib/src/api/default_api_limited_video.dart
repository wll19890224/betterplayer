import 'package:better_player/src/api/api_limited_video.dart';
import 'package:flutter/cupertino.dart';

/// 默认配置
class DefaultApiLimitedConfig implements ApiLimitedConfigBase {
  const DefaultApiLimitedConfig(); // 将构造函数改为常量构造函数

  @override
  Widget getLimitedLayout() {
    return new SizedBox();
  }

  @override
  int getLimitedSeconds() {
    return -1;
  }

  @override
  bool isLimitedMode() {
    return false;
  }
}
