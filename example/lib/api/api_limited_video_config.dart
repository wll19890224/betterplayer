import 'package:better_player/src/api/api_limited_video.dart';
import 'package:flutter/material.dart';

/// 默认配置
class ApiLimitedConfig implements ApiLimitedConfigBase {
  const ApiLimitedConfig(); // 将构造函数改为常量构造函数

  @override
  Widget getLimitedLayout() {
    return _buildLimitedModeView(
      message: '请购买vip后可继续观看',
      buttonTexts: ["点券支付", "购买VIP"],
      onButtonPressed: (index) {
        // 处理按钮点击事件
        print('按钮${index + 1}被点击');
      },
    );
  }

  @override
  int getLimitedSeconds() {
    return 15;
  }

  @override
  bool isLimitedMode() {
    return true;
  }

  /// 显示受限模式界面
  Widget _buildLimitedModeView({
    required String message,
    required List<String> buttonTexts,
    required void Function(int) onButtonPressed,
  }) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.8),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                buttonTexts.length,
                    (index) => Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () => onButtonPressed(index),
                    child: Text(
                      buttonTexts[index],
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
