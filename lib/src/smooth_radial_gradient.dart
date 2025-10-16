import 'package:flutter/widgets.dart';

/// A [RadialGradient] that interpolates colors smoothly.
class SmoothRadialGradient extends RadialGradient {
  /// Creates a smooth gradient.
  SmoothRadialGradient({
    super.center,
    super.radius,
    super.tileMode,
    super.focal,
    super.focalRadius,
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
