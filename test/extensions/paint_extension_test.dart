import 'dart:ui';

import 'package:fl_chart/src/chart/base/axis_chart/axis_chart_data.dart';
import 'package:fl_chart/src/extensions/color_extension.dart';
import 'package:fl_chart/src/extensions/edge_insets_extension.dart';
import 'package:fl_chart/src/extensions/fl_titles_data_extension.dart';
import 'package:fl_chart/src/extensions/paint_extension.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import '../chart/data_pool.dart';

void main() {
  test('test transparentIfWidthIsZero', () {
    var paint = Paint()
      ..strokeWidth = 8.0
      ..color = MockData.color1;
    paint.transparentIfWidthIsZero();
    expect(
      paint.color,
      MockData.color1,
    );

    paint = Paint()
      ..strokeWidth = 0.0
      ..color = MockData.color1;
    paint.transparentIfWidthIsZero();
    expect(paint.color.opacity, 0.0);
    expect(paint.shader, null);
  });
}
