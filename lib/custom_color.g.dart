import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

const Color sourceFcba03 = Color(0xFF532C92);
const Color fcba03 = Color(0xFF6F49AF);
const Color onFcba03 = Color(0xFFFFFFFF);
const Color fcba03Container = Color(0xFFEBDCFF);
const Color onFcba03Container = Color(0xFF270058);

CustomColors lightCustomColors = const CustomColors(
  sourceFcba03: sourceFcba03,
  fcba03: fcba03,
  onFcba03: onFcba03,
  fcba03Container: fcba03Container,
  onFcba03Container: onFcba03Container,
);

CustomColors darkCustomColors = const CustomColors(
  sourceFcba03: sourceFcba03,
  fcba03: Color(0xFFD4BBFF),
  onFcba03: Color(0xFF3F127E),
  fcba03Container: Color(0xFF562F95),
  onFcba03Container: Color(0xFFEBDCFF),
);

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourceFcba03,
    required this.fcba03,
    required this.onFcba03,
    required this.fcba03Container,
    required this.onFcba03Container,
  });

  final Color sourceFcba03;
  final Color fcba03;
  final Color onFcba03;
  final Color fcba03Container;
  final Color onFcba03Container;

  @override
  CustomColors copyWith({
    Color? sourceFcba03,
    Color? fcba03,
    Color? onFcba03,
    Color? fcba03Container,
    Color? onFcba03Container,
  }) {
    return CustomColors(
      sourceFcba03: sourceFcba03 ?? this.sourceFcba03,
      fcba03: fcba03 ?? this.fcba03,
      onFcba03: onFcba03 ?? this.onFcba03,
      fcba03Container: fcba03Container ?? this.fcba03Container,
      onFcba03Container: onFcba03Container ?? this.onFcba03Container,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
return CustomColors(
  sourceFcba03: Color.lerp(sourceFcba03, other.sourceFcba03, t) ?? sourceFcba03,
  fcba03: Color.lerp(fcba03, other.fcba03, t) ?? fcba03,
  onFcba03: Color.lerp(onFcba03, other.onFcba03, t) ?? onFcba03,
  fcba03Container: Color.lerp(fcba03Container, other.fcba03Container, t) ?? fcba03Container,
  onFcba03Container: Color.lerp(onFcba03Container, other.onFcba03Container, t) ?? onFcba03Container,
);
  }

  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith(
      sourceFcba03: sourceFcba03.harmonizeWith(dynamic.primary),
      fcba03: fcba03.harmonizeWith(dynamic.primary),
      onFcba03: onFcba03.harmonizeWith(dynamic.primary),
      fcba03Container: fcba03Container.harmonizeWith(dynamic.primary),
      onFcba03Container: onFcba03Container.harmonizeWith(dynamic.primary),
    );
  }
}
