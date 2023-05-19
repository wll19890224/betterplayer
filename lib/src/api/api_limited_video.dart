
import 'package:flutter/widgets.dart';

/// 设置限制初始化使用服务
abstract class ApiLimitedConfigBase {
  // 获取限制布局
  Widget getLimitedLayout();
  // 当前是否配置开启限制模式; 全局优先配置
  bool isLimitedMode();
  // 限制时长。单位秒
  int getLimitedSeconds();
}