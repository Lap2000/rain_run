import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class WeatherConditionModel extends Equatable {
  const WeatherConditionModel({
    this.id,
    this.main,
    this.description,
    this.icon,
    this.iconPng,
  });
  final int? id;
  final String? main;
  final String? description;
  final String? icon;
  final Widget? iconPng;

  @override
  List<Object?> get props => <Object?>[id, main, description, icon];
}
