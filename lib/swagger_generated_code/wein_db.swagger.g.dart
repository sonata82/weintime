// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wein_db.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rating _$RatingFromJson(Map<String, dynamic> json) => Rating(
      userId: json['userId'] as int?,
      wineId: json['wineId'] as int?,
      stars: (json['stars'] as num?)?.toDouble(),
      remarks: json['remarks'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
      'userId': instance.userId,
      'wineId': instance.wineId,
      'stars': instance.stars,
      'remarks': instance.remarks,
      'timestamp': instance.timestamp?.toIso8601String(),
    };

InventoryItem _$InventoryItemFromJson(Map<String, dynamic> json) =>
    InventoryItem(
      userId: json['userId'] as int?,
      wineId: json['wineId'] as int?,
      bottles: json['bottles'] as int?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$InventoryItemToJson(InventoryItem instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'wineId': instance.wineId,
      'bottles': instance.bottles,
      'location': instance.location,
    };

AccountGetModel _$AccountGetModelFromJson(Map<String, dynamic> json) =>
    AccountGetModel(
      id: json['id'] as int?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      email: json['email'] as String?,
      isAdmin: json['isAdmin'] as bool?,
      ratings: (json['ratings'] as List<dynamic>?)
              ?.map((e) => Rating.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      inventory: (json['inventory'] as List<dynamic>?)
              ?.map((e) => InventoryItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AccountGetModelToJson(AccountGetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'isAdmin': instance.isAdmin,
      'ratings': instance.ratings?.map((e) => e.toJson()).toList(),
      'inventory': instance.inventory?.map((e) => e.toJson()).toList(),
    };

AccountGetModelWeinDbResult _$AccountGetModelWeinDbResultFromJson(
        Map<String, dynamic> json) =>
    AccountGetModelWeinDbResult(
      success: json['success'] as bool?,
      errormessages: json['errormessages'],
      data: json['data'] == null
          ? null
          : AccountGetModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountGetModelWeinDbResultToJson(
        AccountGetModelWeinDbResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errormessages': instance.errormessages,
      'data': instance.data?.toJson(),
    };

ChangePasswordModel _$ChangePasswordModelFromJson(Map<String, dynamic> json) =>
    ChangePasswordModel(
      password: json['password'] as String?,
      newPassword: json['newPassword'] as String?,
      newPasswordMatch: json['newPasswordMatch'] as String?,
    );

Map<String, dynamic> _$ChangePasswordModelToJson(
        ChangePasswordModel instance) =>
    <String, dynamic>{
      'password': instance.password,
      'newPassword': instance.newPassword,
      'newPasswordMatch': instance.newPasswordMatch,
    };

ObjectWeinDbResult _$ObjectWeinDbResultFromJson(Map<String, dynamic> json) =>
    ObjectWeinDbResult(
      success: json['success'] as bool?,
      errormessages: json['errormessages'],
      data: json['data'],
    );

Map<String, dynamic> _$ObjectWeinDbResultToJson(ObjectWeinDbResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errormessages': instance.errormessages,
      'data': instance.data,
    };

AdminUserGetModel _$AdminUserGetModelFromJson(Map<String, dynamic> json) =>
    AdminUserGetModel(
      id: json['id'] as int?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      email: json['email'] as String?,
      locked: json['locked'] as bool?,
      loginRequired: json['loginRequired'] as bool?,
      approvedBy: json['approvedBy'] as String?,
      approvedAt: json['approvedAt'] == null
          ? null
          : DateTime.parse(json['approvedAt'] as String),
      isAdmin: json['isAdmin'] as bool?,
      refreshTokenExpires: json['refreshTokenExpires'] == null
          ? null
          : DateTime.parse(json['refreshTokenExpires'] as String),
    );

Map<String, dynamic> _$AdminUserGetModelToJson(AdminUserGetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'locked': instance.locked,
      'loginRequired': instance.loginRequired,
      'approvedBy': instance.approvedBy,
      'approvedAt': instance.approvedAt?.toIso8601String(),
      'isAdmin': instance.isAdmin,
      'refreshTokenExpires': instance.refreshTokenExpires?.toIso8601String(),
    };

AdminUserGetModelListWeinDbResult _$AdminUserGetModelListWeinDbResultFromJson(
        Map<String, dynamic> json) =>
    AdminUserGetModelListWeinDbResult(
      success: json['success'] as bool?,
      errormessages: json['errormessages'],
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => AdminUserGetModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AdminUserGetModelListWeinDbResultToJson(
        AdminUserGetModelListWeinDbResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errormessages': instance.errormessages,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

AdminUserGetModelWeinDbResult _$AdminUserGetModelWeinDbResultFromJson(
        Map<String, dynamic> json) =>
    AdminUserGetModelWeinDbResult(
      success: json['success'] as bool?,
      errormessages: json['errormessages'],
      data: json['data'] == null
          ? null
          : AdminUserGetModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminUserGetModelWeinDbResultToJson(
        AdminUserGetModelWeinDbResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errormessages': instance.errormessages,
      'data': instance.data?.toJson(),
    };

GrapeVarietyGetModel _$GrapeVarietyGetModelFromJson(
        Map<String, dynamic> json) =>
    GrapeVarietyGetModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$GrapeVarietyGetModelToJson(
        GrapeVarietyGetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

GrapeVarietyGetModelListWeinDbResult
    _$GrapeVarietyGetModelListWeinDbResultFromJson(Map<String, dynamic> json) =>
        GrapeVarietyGetModelListWeinDbResult(
          success: json['success'] as bool?,
          errormessages: json['errormessages'],
          data: (json['data'] as List<dynamic>?)
                  ?.map((e) =>
                      GrapeVarietyGetModel.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              [],
        );

Map<String, dynamic> _$GrapeVarietyGetModelListWeinDbResultToJson(
        GrapeVarietyGetModelListWeinDbResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errormessages': instance.errormessages,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

GrapeVarietyCreateModel _$GrapeVarietyCreateModelFromJson(
        Map<String, dynamic> json) =>
    GrapeVarietyCreateModel(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$GrapeVarietyCreateModelToJson(
        GrapeVarietyCreateModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

GrapeVarietyGetModelWeinDbResult _$GrapeVarietyGetModelWeinDbResultFromJson(
        Map<String, dynamic> json) =>
    GrapeVarietyGetModelWeinDbResult(
      success: json['success'] as bool?,
      errormessages: json['errormessages'],
      data: json['data'] == null
          ? null
          : GrapeVarietyGetModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GrapeVarietyGetModelWeinDbResultToJson(
        GrapeVarietyGetModelWeinDbResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errormessages': instance.errormessages,
      'data': instance.data?.toJson(),
    };

GrapeVarietyEditModel _$GrapeVarietyEditModelFromJson(
        Map<String, dynamic> json) =>
    GrapeVarietyEditModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$GrapeVarietyEditModelToJson(
        GrapeVarietyEditModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

RegionGetModel _$RegionGetModelFromJson(Map<String, dynamic> json) =>
    RegionGetModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RegionGetModelToJson(RegionGetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

RegionGetModelListWeinDbResult _$RegionGetModelListWeinDbResultFromJson(
        Map<String, dynamic> json) =>
    RegionGetModelListWeinDbResult(
      success: json['success'] as bool?,
      errormessages: json['errormessages'],
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => RegionGetModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RegionGetModelListWeinDbResultToJson(
        RegionGetModelListWeinDbResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errormessages': instance.errormessages,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

RegionCreateModel _$RegionCreateModelFromJson(Map<String, dynamic> json) =>
    RegionCreateModel(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RegionCreateModelToJson(RegionCreateModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

RegionGetModelWeinDbResult _$RegionGetModelWeinDbResultFromJson(
        Map<String, dynamic> json) =>
    RegionGetModelWeinDbResult(
      success: json['success'] as bool?,
      errormessages: json['errormessages'],
      data: json['data'] == null
          ? null
          : RegionGetModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegionGetModelWeinDbResultToJson(
        RegionGetModelWeinDbResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errormessages': instance.errormessages,
      'data': instance.data?.toJson(),
    };

RegionEditModel _$RegionEditModelFromJson(Map<String, dynamic> json) =>
    RegionEditModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RegionEditModelToJson(RegionEditModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

UserRegisterModel _$UserRegisterModelFromJson(Map<String, dynamic> json) =>
    UserRegisterModel(
      salutation: json['salutation'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      passwordMatch: json['passwordMatch'] as String?,
    );

Map<String, dynamic> _$UserRegisterModelToJson(UserRegisterModel instance) =>
    <String, dynamic>{
      'salutation': instance.salutation,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'password': instance.password,
      'passwordMatch': instance.passwordMatch,
    };

UserGetModel _$UserGetModelFromJson(Map<String, dynamic> json) => UserGetModel(
      id: json['id'] as int?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UserGetModelToJson(UserGetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
    };

UserGetModelWeinDbResult _$UserGetModelWeinDbResultFromJson(
        Map<String, dynamic> json) =>
    UserGetModelWeinDbResult(
      success: json['success'] as bool?,
      errormessages: json['errormessages'],
      data: json['data'] == null
          ? null
          : UserGetModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserGetModelWeinDbResultToJson(
        UserGetModelWeinDbResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errormessages': instance.errormessages,
      'data': instance.data?.toJson(),
    };

ApiLoginResult _$ApiLoginResultFromJson(Map<String, dynamic> json) =>
    ApiLoginResult(
      accessToken: json['access_token'] as String?,
      expiresIn: json['expires_in'] as int?,
      tokenType: json['token_type'] as String?,
      refreshToken: json['refresh_token'] as String?,
      user: json['user'] == null
          ? null
          : UserGetModel.fromJson(json['user'] as Map<String, dynamic>),
      success: json['success'] as bool?,
      errormessages: json['errormessages'],
    );

Map<String, dynamic> _$ApiLoginResultToJson(ApiLoginResult instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'expires_in': instance.expiresIn,
      'token_type': instance.tokenType,
      'refresh_token': instance.refreshToken,
      'user': instance.user?.toJson(),
      'success': instance.success,
      'errormessages': instance.errormessages,
    };

VendorGetModel _$VendorGetModelFromJson(Map<String, dynamic> json) =>
    VendorGetModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$VendorGetModelToJson(VendorGetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

VendorGetModelListWeinDbResult _$VendorGetModelListWeinDbResultFromJson(
        Map<String, dynamic> json) =>
    VendorGetModelListWeinDbResult(
      success: json['success'] as bool?,
      errormessages: json['errormessages'],
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => VendorGetModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$VendorGetModelListWeinDbResultToJson(
        VendorGetModelListWeinDbResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errormessages': instance.errormessages,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

VendorCreateModel _$VendorCreateModelFromJson(Map<String, dynamic> json) =>
    VendorCreateModel(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$VendorCreateModelToJson(VendorCreateModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

VendorGetModelWeinDbResult _$VendorGetModelWeinDbResultFromJson(
        Map<String, dynamic> json) =>
    VendorGetModelWeinDbResult(
      success: json['success'] as bool?,
      errormessages: json['errormessages'],
      data: json['data'] == null
          ? null
          : VendorGetModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendorGetModelWeinDbResultToJson(
        VendorGetModelWeinDbResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errormessages': instance.errormessages,
      'data': instance.data?.toJson(),
    };

VendorEditModel _$VendorEditModelFromJson(Map<String, dynamic> json) =>
    VendorEditModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$VendorEditModelToJson(VendorEditModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Region _$RegionFromJson(Map<String, dynamic> json) => Region(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RegionToJson(Region instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Vineyard _$VineyardFromJson(Map<String, dynamic> json) => Vineyard(
      id: json['id'] as int?,
      name: json['name'] as String?,
      region: json['region'] == null
          ? null
          : Region.fromJson(json['region'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VineyardToJson(Vineyard instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'region': instance.region?.toJson(),
    };

WineType _$WineTypeFromJson(Map<String, dynamic> json) => WineType(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$WineTypeToJson(WineType instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

WineVendor _$WineVendorFromJson(Map<String, dynamic> json) => WineVendor(
      wineId: json['wineId'] as int?,
      vendorId: json['vendorId'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$WineVendorToJson(WineVendor instance) =>
    <String, dynamic>{
      'wineId': instance.wineId,
      'vendorId': instance.vendorId,
      'price': instance.price,
      'timestamp': instance.timestamp?.toIso8601String(),
    };

GrapeVariety _$GrapeVarietyFromJson(Map<String, dynamic> json) => GrapeVariety(
      id: json['id'] as int?,
      name: json['name'] as String?,
      wines: (json['wines'] as List<dynamic>?)
              ?.map((e) => Wine.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$GrapeVarietyToJson(GrapeVariety instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'wines': instance.wines?.map((e) => e.toJson()).toList(),
    };

Wine _$WineFromJson(Map<String, dynamic> json) => Wine(
      id: json['id'] as int?,
      name: json['name'] as String?,
      vineyardId: json['vineyardId'] as int?,
      vineyard: json['vineyard'] == null
          ? null
          : Vineyard.fromJson(json['vineyard'] as Map<String, dynamic>),
      wineTypeId: json['wineTypeId'] as int?,
      wineType: json['wineType'] == null
          ? null
          : WineType.fromJson(json['wineType'] as Map<String, dynamic>),
      vintage: json['vintage'] as int?,
      vendors: (json['vendors'] as List<dynamic>?)
              ?.map((e) => WineVendor.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      ratings: (json['ratings'] as List<dynamic>?)
              ?.map((e) => Rating.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      grapeVarieties: (json['grapeVarieties'] as List<dynamic>?)
              ?.map((e) => GrapeVariety.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isCuvE: json['isCuvée'] as bool?,
    );

Map<String, dynamic> _$WineToJson(Wine instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'vineyardId': instance.vineyardId,
      'vineyard': instance.vineyard?.toJson(),
      'wineTypeId': instance.wineTypeId,
      'wineType': instance.wineType?.toJson(),
      'vintage': instance.vintage,
      'vendors': instance.vendors?.map((e) => e.toJson()).toList(),
      'ratings': instance.ratings?.map((e) => e.toJson()).toList(),
      'grapeVarieties':
          instance.grapeVarieties?.map((e) => e.toJson()).toList(),
      'isCuvée': instance.isCuvE,
    };

WineListWeinDbResult _$WineListWeinDbResultFromJson(
        Map<String, dynamic> json) =>
    WineListWeinDbResult(
      success: json['success'] as bool?,
      errormessages: json['errormessages'],
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Wine.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$WineListWeinDbResultToJson(
        WineListWeinDbResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errormessages': instance.errormessages,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

WineTypeGetModel _$WineTypeGetModelFromJson(Map<String, dynamic> json) =>
    WineTypeGetModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$WineTypeGetModelToJson(WineTypeGetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

WineTypeGetModelListWeinDbResult _$WineTypeGetModelListWeinDbResultFromJson(
        Map<String, dynamic> json) =>
    WineTypeGetModelListWeinDbResult(
      success: json['success'] as bool?,
      errormessages: json['errormessages'],
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => WineTypeGetModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$WineTypeGetModelListWeinDbResultToJson(
        WineTypeGetModelListWeinDbResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errormessages': instance.errormessages,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

WineTypeCreateModel _$WineTypeCreateModelFromJson(Map<String, dynamic> json) =>
    WineTypeCreateModel(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$WineTypeCreateModelToJson(
        WineTypeCreateModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

WineTypeGetModelWeinDbResult _$WineTypeGetModelWeinDbResultFromJson(
        Map<String, dynamic> json) =>
    WineTypeGetModelWeinDbResult(
      success: json['success'] as bool?,
      errormessages: json['errormessages'],
      data: json['data'] == null
          ? null
          : WineTypeGetModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WineTypeGetModelWeinDbResultToJson(
        WineTypeGetModelWeinDbResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errormessages': instance.errormessages,
      'data': instance.data?.toJson(),
    };

WineTypeEditModel _$WineTypeEditModelFromJson(Map<String, dynamic> json) =>
    WineTypeEditModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$WineTypeEditModelToJson(WineTypeEditModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
