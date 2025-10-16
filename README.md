# Smooth Gradient

[![Package](https://img.shields.io/pub/v/smooth_gradient.svg)](https://pub.dev/packages/smooth_gradient) [![Publisher](https://img.shields.io/pub/publisher/smooth_gradient.svg)](https://pub.dev/packages/smooth_gradient/publisher) [![MIT License](https://img.shields.io/badge/license-MIT-purple.svg)](https://opensource.org/licenses/MIT) [![LeanCode Style](https://img.shields.io/badge/style-leancode__lint-black)](https://pub.dartlang.org/packages/leancode_lint)

`smooth_gradient` is a package that allows you to create gradients that use a specific curve.

|                                                                                                                               Status                                                                                                                                |               Comments               |
| :-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :----------------------------------: |
| [![flutter_smooth_gradient - Tests (stable)](https://github.com/nikodembernat/flutter_smooth_gradient/actions/workflows/flutter_tests_stable.yaml/badge.svg)](https://github.com/nikodembernat/flutter_smooth_gradient/actions/workflows/flutter_tests_stable.yaml) |    Current stable Flutter version    |
|    [![flutter_smooth_gradient - Tests (beta)](https://github.com/nikodembernat/flutter_smooth_gradient/actions/workflows/flutter_tests_beta.yaml/badge.svg)](https://github.com/nikodembernat/flutter_smooth_gradient/actions/workflows/flutter_tests_beta.yaml)    |     Current beta Flutter version     |
|    [![flutter_smooth_gradient - Tests (3.24.0)](https://github.com/nikodembernat/flutter_smooth_gradient/actions/workflows/flutter_tests_min.yaml/badge.svg)](https://github.com/nikodembernat/flutter_smooth_gradient/actions/workflows/flutter_tests_min.yaml)    | The oldest supported Flutter version |

![A comparison of different gradient curves.](https://github.com/nikodembernat/flutter_smooth_gradient/blob/master/screenshots/screenshot.png?raw=true)

## Getting started

1. Add this package to your dependencies.

```yaml
dependencies:
  smooth_gradient: latest_version
```

2. Get the dependencies.

```sh
flutter pub get
```

## Usage

Replace `LinearGradient` with a `SmoothGradient` and optionally provide a curve.

```dart
return DecoratedBox(
  decoration: BoxDecoration(
    gradient: SmoothGradient(
      from: Colors.black,
      to: Colors.white,
      // Defaults to `Curves.easeIn`.
      curve: Curves.easeInOut,
    ),
  ),
  child: const SizedBox.square(
    dimension: 100,
  ),
);
```

## Additional information

- This package requires at least Flutter 3.24 to work.
- If there are any issues feel free to go to [GitHub Issues](https://github.com/nikodembernat/flutter_smooth_gradient/issues) and report a bug.
- Inspired by [SmoothGradient](https://github.com/raymondjavaxx/SmoothGradient) for SwiftUI and [X (Twitter) post](https://x.com/SebJVidal/status/1841876770661806524).

## Maintainers

- [Nikodem Bernat](https://nikodembernat.com)
