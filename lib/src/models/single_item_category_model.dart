import 'package:flutter/material.dart';

/// This is a model class which contains the name of the item, the value of the item, the extra info of the item, and the avatar of the item.
class Choice {
  /// The name of the single item.
  /// It is required.
  final String text;

  /// The value of the single item.
  /// It is optional
  /// [value] preffer set to avoid duplicate items when two objects [text] is the same.
  final dynamic value;

  /// The extra info of the single item.
  /// It is optional.
  final String? extraInfoSingleItem;

  /// The avatar of the single item.
  /// It is optional.
  final Widget? avatarSingleItem;

  @override
  int get hashCode => text.hashCode ^ value.hashCode;

  /// Creating an argument constructor of [Choice] class.
  const Choice({
    required this.text,
    this.value,
    this.extraInfoSingleItem,
    this.avatarSingleItem,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Choice &&
          runtimeType == other.runtimeType &&
          text == other.text &&
          value == other.value;
}
