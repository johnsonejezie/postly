import 'package:flutter/material.dart' show required;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'geo_model.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
abstract class AddressModel with _$AddressModel {
  const factory AddressModel({
    @required String street,
    @required String suite,
    @required String city,
    @required String zipcode,
    @required GeoModel geo,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);
}
