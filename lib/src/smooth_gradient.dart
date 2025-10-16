import 'package:flutter/widgets.dart';

/// A [LinearGradient] that interpolates colors smoothly.
class SmoothGradient extends LinearGradient {
  /// Creates a smooth gradient.
  SmoothGradient({
    super.begin,
    super.end,
    super.tileMode,
    super.transform,
    required Color from,
    required Color to,
    Curve curve = Curves.easeIn,
    int steps = 16,
  }) : super(
          colors: List.generate(
            steps + 1,
            (i) => Color.lerp(from, to, i / steps)!,
          ),
          stops: List.generate(
            steps + 1,
            (i) => curve.transform(i / steps),
          ),
        );
}
