import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

import 'package:chopper/chopper.dart';
import 'package:chopper/chopper.dart' as chopper;

part 'wein_db.swagger.chopper.dart';
part 'wein_db.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class WeinDb extends ChopperService {
  static WeinDb create([ChopperClient? client]) {
    if (client != null) {
      return _$WeinDb(client);
    }

    final newClient = ChopperClient(
        services: [_$WeinDb()],
        converter: $JsonSerializableConverter(),
        baseUrl: 'https://');
    return _$WeinDb(newClient);
  }

  ///Gets information regarding the logged in account
  @Get(path: '/Account')
  Future<chopper.Response<AccountGetModelWeinDbResult>> accountGet();

  ///Change the current user password
  @Post(path: '/Account/ChangePassword')
  Future<chopper.Response<ObjectWeinDbResult>> accountChangePasswordPost(
      {@Body() required ChangePasswordModel? body});

  ///Get a list of all users
  @Get(path: '/Admin/User')
  Future<chopper.Response<AdminUserGetModelListWeinDbResult>> adminUserGet();

  ///Lock a user
  ///@param id ID of the user to lock
  @Get(path: '/Admin/User/Lock/{id}')
  Future<chopper.Response<AdminUserGetModelWeinDbResult>> adminUserLockIdGet(
      {@Path('id') required int? id});

  ///Unlock a user
  ///@param id ID of the user to unlock
  @Get(path: '/Admin/User/Unlock/{id}')
  Future<chopper.Response<AdminUserGetModelWeinDbResult>> adminUserUnlockIdGet(
      {@Path('id') required int? id});

  ///Delete a user
  ///@param id ID of the user to delete
  @Delete(path: '/Admin/User/Delete/{id}')
  Future<chopper.Response<AdminUserGetModelWeinDbResult>>
      adminUserDeleteIdDelete({@Path('id') required int? id});

  ///Activate a user
  ///@param id ID of the user to activate
  @Get(path: '/Admin/User/Activate/{id}')
  Future<chopper.Response<ObjectWeinDbResult>> adminUserActivateIdGet(
      {@Path('id') required int? id});

  ///Toggle Admin Status of a user
  ///@param id ID of the user to change
  @Get(path: '/Admin/User/ToggleAdmin/{id}')
  Future<chopper.Response<AdminUserGetModelWeinDbResult>>
      adminUserToggleAdminIdGet({@Path('id') required int? id});

  ///List all grape varieties
  @Get(path: '/GrapeVariety')
  Future<chopper.Response<GrapeVarietyGetModelListWeinDbResult>>
      grapeVarietyGet();

  ///Create new grape variety
  @Post(path: '/GrapeVariety')
  Future<chopper.Response<GrapeVarietyGetModelWeinDbResult>> grapeVarietyPost(
      {@Body() required GrapeVarietyCreateModel? body});

  ///Update grape variety details
  @Put(path: '/GrapeVariety')
  Future<chopper.Response<ObjectWeinDbResult>> grapeVarietyPut(
      {@Body() required GrapeVarietyEditModel? body});

  ///Get grape veriety details
  ///@param id
  @Get(path: '/GrapeVariety/{id}')
  Future<chopper.Response<GrapeVarietyGetModelWeinDbResult>> grapeVarietyIdGet(
      {@Path('id') required int? id});

  ///Delete grape veriety
  ///@param id id of grape veriety to delete
  @Delete(path: '/GrapeVariety/{id}')
  Future<chopper.Response<ObjectWeinDbResult>> grapeVarietyIdDelete(
      {@Path('id') required int? id});

  ///List all regions
  @Get(path: '/Region')
  Future<chopper.Response<RegionGetModelListWeinDbResult>> regionGet();

  ///Create new region
  @Post(path: '/Region')
  Future<chopper.Response<RegionGetModelWeinDbResult>> regionPost(
      {@Body() required RegionCreateModel? body});

  ///Update region details
  @Put(path: '/Region')
  Future<chopper.Response<ObjectWeinDbResult>> regionPut(
      {@Body() required RegionEditModel? body});

  ///Get region details
  ///@param id
  @Get(path: '/Region/{id}')
  Future<chopper.Response<RegionGetModelWeinDbResult>> regionIdGet(
      {@Path('id') required int? id});

  ///Delete region
  ///@param id id of region to delete
  @Delete(path: '/Region/{id}')
  Future<chopper.Response<ObjectWeinDbResult>> regionIdDelete(
      {@Path('id') required int? id});

  ///Register a new user
  @Post(path: '/Register')
  Future<chopper.Response<UserGetModelWeinDbResult>> registerPost(
      {@Body() required UserRegisterModel? body});

  ///User login
  ///via password requires username, password and grant_type=password
  ///via refresh token requires refresh_token and grant_type=refresh_token
  ///@param username
  ///@param password
  ///@param grant_type
  ///@param refresh_token
  @Post(path: '/Token', optionalBody: true)
  Future<chopper.Response<ApiLoginResult>> tokenPost(
      {@Query('username') String? username,
      @Query('password') String? password,
      @Query('grant_type') String? grantType,
      @Query('refresh_token') String? refreshToken});

  ///List all vendors
  @Get(path: '/Vendor')
  Future<chopper.Response<VendorGetModelListWeinDbResult>> vendorGet();

  ///Create new vendor
  @Post(path: '/Vendor')
  Future<chopper.Response<VendorGetModelWeinDbResult>> vendorPost(
      {@Body() required VendorCreateModel? body});

  ///Update vendor details
  @Put(path: '/Vendor')
  Future<chopper.Response<ObjectWeinDbResult>> vendorPut(
      {@Body() required VendorEditModel? body});

  ///Get vendor details
  ///@param id
  @Get(path: '/Vendor/{id}')
  Future<chopper.Response<VendorGetModelWeinDbResult>> vendorIdGet(
      {@Path('id') required int? id});

  ///Delete vendor
  ///@param id id of vendor to delete
  @Delete(path: '/Vendor/{id}')
  Future<chopper.Response<ObjectWeinDbResult>> vendorIdDelete(
      {@Path('id') required int? id});

  ///List all wines
  @Get(path: '/Wine')
  Future<chopper.Response<WineListWeinDbResult>> wineGet();

  ///List all wine types
  @Get(path: '/WineType')
  Future<chopper.Response<WineTypeGetModelListWeinDbResult>> wineTypeGet();

  ///Create new wine type
  @Post(path: '/WineType')
  Future<chopper.Response<WineTypeGetModelWeinDbResult>> wineTypePost(
      {@Body() required WineTypeCreateModel? body});

  ///Update wine type details
  @Put(path: '/WineType')
  Future<chopper.Response<ObjectWeinDbResult>> wineTypePut(
      {@Body() required WineTypeEditModel? body});

  ///Get wine type details
  ///@param id Id of wine type to query
  @Get(path: '/WineType/{id}')
  Future<chopper.Response<WineTypeGetModelWeinDbResult>> wineTypeIdGet(
      {@Path('id') required int? id});

  ///Delete wine type
  ///@param id Id of wine type to delete
  @Delete(path: '/WineType/{id}')
  Future<chopper.Response<ObjectWeinDbResult>> wineTypeIdDelete(
      {@Path('id') required int? id});
}

final Map<Type, Object Function(Map<String, dynamic>)>
    WeinDbJsonDecoderMappings = {
  Rating: Rating.fromJsonFactory,
  InventoryItem: InventoryItem.fromJsonFactory,
  AccountGetModel: AccountGetModel.fromJsonFactory,
  AccountGetModelWeinDbResult: AccountGetModelWeinDbResult.fromJsonFactory,
  ChangePasswordModel: ChangePasswordModel.fromJsonFactory,
  ObjectWeinDbResult: ObjectWeinDbResult.fromJsonFactory,
  AdminUserGetModel: AdminUserGetModel.fromJsonFactory,
  AdminUserGetModelListWeinDbResult:
      AdminUserGetModelListWeinDbResult.fromJsonFactory,
  AdminUserGetModelWeinDbResult: AdminUserGetModelWeinDbResult.fromJsonFactory,
  GrapeVarietyGetModel: GrapeVarietyGetModel.fromJsonFactory,
  GrapeVarietyGetModelListWeinDbResult:
      GrapeVarietyGetModelListWeinDbResult.fromJsonFactory,
  GrapeVarietyCreateModel: GrapeVarietyCreateModel.fromJsonFactory,
  GrapeVarietyGetModelWeinDbResult:
      GrapeVarietyGetModelWeinDbResult.fromJsonFactory,
  GrapeVarietyEditModel: GrapeVarietyEditModel.fromJsonFactory,
  RegionGetModel: RegionGetModel.fromJsonFactory,
  RegionGetModelListWeinDbResult:
      RegionGetModelListWeinDbResult.fromJsonFactory,
  RegionCreateModel: RegionCreateModel.fromJsonFactory,
  RegionGetModelWeinDbResult: RegionGetModelWeinDbResult.fromJsonFactory,
  RegionEditModel: RegionEditModel.fromJsonFactory,
  UserRegisterModel: UserRegisterModel.fromJsonFactory,
  UserGetModel: UserGetModel.fromJsonFactory,
  UserGetModelWeinDbResult: UserGetModelWeinDbResult.fromJsonFactory,
  ApiLoginResult: ApiLoginResult.fromJsonFactory,
  VendorGetModel: VendorGetModel.fromJsonFactory,
  VendorGetModelListWeinDbResult:
      VendorGetModelListWeinDbResult.fromJsonFactory,
  VendorCreateModel: VendorCreateModel.fromJsonFactory,
  VendorGetModelWeinDbResult: VendorGetModelWeinDbResult.fromJsonFactory,
  VendorEditModel: VendorEditModel.fromJsonFactory,
  Region: Region.fromJsonFactory,
  Vineyard: Vineyard.fromJsonFactory,
  WineType: WineType.fromJsonFactory,
  WineVendor: WineVendor.fromJsonFactory,
  GrapeVariety: GrapeVariety.fromJsonFactory,
  Wine: Wine.fromJsonFactory,
  WineListWeinDbResult: WineListWeinDbResult.fromJsonFactory,
  WineTypeGetModel: WineTypeGetModel.fromJsonFactory,
  WineTypeGetModelListWeinDbResult:
      WineTypeGetModelListWeinDbResult.fromJsonFactory,
  WineTypeCreateModel: WineTypeCreateModel.fromJsonFactory,
  WineTypeGetModelWeinDbResult: WineTypeGetModelWeinDbResult.fromJsonFactory,
  WineTypeEditModel: WineTypeEditModel.fromJsonFactory,
};

@JsonSerializable(explicitToJson: true)
class Rating {
  Rating({
    this.userId,
    this.wineId,
    this.stars,
    this.remarks,
    this.timestamp,
  });

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);

  @JsonKey(name: 'userId')
  final int? userId;
  @JsonKey(name: 'wineId')
  final int? wineId;
  @JsonKey(name: 'stars')
  final double? stars;
  @JsonKey(name: 'remarks')
  final String? remarks;
  @JsonKey(name: 'timestamp')
  final DateTime? timestamp;
  static const fromJsonFactory = _$RatingFromJson;
  static const toJsonFactory = _$RatingToJson;
  Map<String, dynamic> toJson() => _$RatingToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Rating &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.wineId, wineId) ||
                const DeepCollectionEquality().equals(other.wineId, wineId)) &&
            (identical(other.stars, stars) ||
                const DeepCollectionEquality().equals(other.stars, stars)) &&
            (identical(other.remarks, remarks) ||
                const DeepCollectionEquality()
                    .equals(other.remarks, remarks)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(wineId) ^
      const DeepCollectionEquality().hash(stars) ^
      const DeepCollectionEquality().hash(remarks) ^
      const DeepCollectionEquality().hash(timestamp) ^
      runtimeType.hashCode;
}

extension $RatingExtension on Rating {
  Rating copyWith(
      {int? userId,
      int? wineId,
      double? stars,
      String? remarks,
      DateTime? timestamp}) {
    return Rating(
        userId: userId ?? this.userId,
        wineId: wineId ?? this.wineId,
        stars: stars ?? this.stars,
        remarks: remarks ?? this.remarks,
        timestamp: timestamp ?? this.timestamp);
  }
}

@JsonSerializable(explicitToJson: true)
class InventoryItem {
  InventoryItem({
    this.userId,
    this.wineId,
    this.bottles,
    this.location,
  });

  factory InventoryItem.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemFromJson(json);

  @JsonKey(name: 'userId')
  final int? userId;
  @JsonKey(name: 'wineId')
  final int? wineId;
  @JsonKey(name: 'bottles')
  final int? bottles;
  @JsonKey(name: 'location')
  final String? location;
  static const fromJsonFactory = _$InventoryItemFromJson;
  static const toJsonFactory = _$InventoryItemToJson;
  Map<String, dynamic> toJson() => _$InventoryItemToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InventoryItem &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.wineId, wineId) ||
                const DeepCollectionEquality().equals(other.wineId, wineId)) &&
            (identical(other.bottles, bottles) ||
                const DeepCollectionEquality()
                    .equals(other.bottles, bottles)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(wineId) ^
      const DeepCollectionEquality().hash(bottles) ^
      const DeepCollectionEquality().hash(location) ^
      runtimeType.hashCode;
}

extension $InventoryItemExtension on InventoryItem {
  InventoryItem copyWith(
      {int? userId, int? wineId, int? bottles, String? location}) {
    return InventoryItem(
        userId: userId ?? this.userId,
        wineId: wineId ?? this.wineId,
        bottles: bottles ?? this.bottles,
        location: location ?? this.location);
  }
}

@JsonSerializable(explicitToJson: true)
class AccountGetModel {
  AccountGetModel({
    this.id,
    this.firstname,
    this.lastname,
    this.email,
    this.isAdmin,
    this.ratings,
    this.inventory,
  });

  factory AccountGetModel.fromJson(Map<String, dynamic> json) =>
      _$AccountGetModelFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'firstname')
  final String? firstname;
  @JsonKey(name: 'lastname')
  final String? lastname;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'isAdmin')
  final bool? isAdmin;
  @JsonKey(name: 'ratings', defaultValue: <Rating>[])
  final List<Rating>? ratings;
  @JsonKey(name: 'inventory', defaultValue: <InventoryItem>[])
  final List<InventoryItem>? inventory;
  static const fromJsonFactory = _$AccountGetModelFromJson;
  static const toJsonFactory = _$AccountGetModelToJson;
  Map<String, dynamic> toJson() => _$AccountGetModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountGetModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.isAdmin, isAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isAdmin, isAdmin)) &&
            (identical(other.ratings, ratings) ||
                const DeepCollectionEquality()
                    .equals(other.ratings, ratings)) &&
            (identical(other.inventory, inventory) ||
                const DeepCollectionEquality()
                    .equals(other.inventory, inventory)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(isAdmin) ^
      const DeepCollectionEquality().hash(ratings) ^
      const DeepCollectionEquality().hash(inventory) ^
      runtimeType.hashCode;
}

extension $AccountGetModelExtension on AccountGetModel {
  AccountGetModel copyWith(
      {int? id,
      String? firstname,
      String? lastname,
      String? email,
      bool? isAdmin,
      List<Rating>? ratings,
      List<InventoryItem>? inventory}) {
    return AccountGetModel(
        id: id ?? this.id,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        email: email ?? this.email,
        isAdmin: isAdmin ?? this.isAdmin,
        ratings: ratings ?? this.ratings,
        inventory: inventory ?? this.inventory);
  }
}

@JsonSerializable(explicitToJson: true)
class AccountGetModelWeinDbResult {
  AccountGetModelWeinDbResult({
    this.success,
    this.errormessages,
    this.data,
  });

  factory AccountGetModelWeinDbResult.fromJson(Map<String, dynamic> json) =>
      _$AccountGetModelWeinDbResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'errormessages')
  final Object? errormessages;
  @JsonKey(name: 'data')
  final AccountGetModel? data;
  static const fromJsonFactory = _$AccountGetModelWeinDbResultFromJson;
  static const toJsonFactory = _$AccountGetModelWeinDbResultToJson;
  Map<String, dynamic> toJson() => _$AccountGetModelWeinDbResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountGetModelWeinDbResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.errormessages, errormessages) ||
                const DeepCollectionEquality()
                    .equals(other.errormessages, errormessages)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(errormessages) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $AccountGetModelWeinDbResultExtension on AccountGetModelWeinDbResult {
  AccountGetModelWeinDbResult copyWith(
      {bool? success, Object? errormessages, AccountGetModel? data}) {
    return AccountGetModelWeinDbResult(
        success: success ?? this.success,
        errormessages: errormessages ?? this.errormessages,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ChangePasswordModel {
  ChangePasswordModel({
    this.password,
    this.newPassword,
    this.newPasswordMatch,
  });

  factory ChangePasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordModelFromJson(json);

  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'newPassword')
  final String? newPassword;
  @JsonKey(name: 'newPasswordMatch')
  final String? newPasswordMatch;
  static const fromJsonFactory = _$ChangePasswordModelFromJson;
  static const toJsonFactory = _$ChangePasswordModelToJson;
  Map<String, dynamic> toJson() => _$ChangePasswordModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangePasswordModel &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)) &&
            (identical(other.newPasswordMatch, newPasswordMatch) ||
                const DeepCollectionEquality()
                    .equals(other.newPasswordMatch, newPasswordMatch)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(newPassword) ^
      const DeepCollectionEquality().hash(newPasswordMatch) ^
      runtimeType.hashCode;
}

extension $ChangePasswordModelExtension on ChangePasswordModel {
  ChangePasswordModel copyWith(
      {String? password, String? newPassword, String? newPasswordMatch}) {
    return ChangePasswordModel(
        password: password ?? this.password,
        newPassword: newPassword ?? this.newPassword,
        newPasswordMatch: newPasswordMatch ?? this.newPasswordMatch);
  }
}

@JsonSerializable(explicitToJson: true)
class ObjectWeinDbResult {
  ObjectWeinDbResult({
    this.success,
    this.errormessages,
    this.data,
  });

  factory ObjectWeinDbResult.fromJson(Map<String, dynamic> json) =>
      _$ObjectWeinDbResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'errormessages')
  final Object? errormessages;
  @JsonKey(name: 'data')
  final Object? data;
  static const fromJsonFactory = _$ObjectWeinDbResultFromJson;
  static const toJsonFactory = _$ObjectWeinDbResultToJson;
  Map<String, dynamic> toJson() => _$ObjectWeinDbResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ObjectWeinDbResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.errormessages, errormessages) ||
                const DeepCollectionEquality()
                    .equals(other.errormessages, errormessages)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(errormessages) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $ObjectWeinDbResultExtension on ObjectWeinDbResult {
  ObjectWeinDbResult copyWith(
      {bool? success, Object? errormessages, Object? data}) {
    return ObjectWeinDbResult(
        success: success ?? this.success,
        errormessages: errormessages ?? this.errormessages,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUserGetModel {
  AdminUserGetModel({
    this.id,
    this.firstname,
    this.lastname,
    this.email,
    this.locked,
    this.loginRequired,
    this.approvedBy,
    this.approvedAt,
    this.isAdmin,
    this.refreshTokenExpires,
  });

  factory AdminUserGetModel.fromJson(Map<String, dynamic> json) =>
      _$AdminUserGetModelFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'firstname')
  final String? firstname;
  @JsonKey(name: 'lastname')
  final String? lastname;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'locked')
  final bool? locked;
  @JsonKey(name: 'loginRequired')
  final bool? loginRequired;
  @JsonKey(name: 'approvedBy')
  final String? approvedBy;
  @JsonKey(name: 'approvedAt')
  final DateTime? approvedAt;
  @JsonKey(name: 'isAdmin')
  final bool? isAdmin;
  @JsonKey(name: 'refreshTokenExpires')
  final DateTime? refreshTokenExpires;
  static const fromJsonFactory = _$AdminUserGetModelFromJson;
  static const toJsonFactory = _$AdminUserGetModelToJson;
  Map<String, dynamic> toJson() => _$AdminUserGetModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdminUserGetModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.locked, locked) ||
                const DeepCollectionEquality().equals(other.locked, locked)) &&
            (identical(other.loginRequired, loginRequired) ||
                const DeepCollectionEquality()
                    .equals(other.loginRequired, loginRequired)) &&
            (identical(other.approvedBy, approvedBy) ||
                const DeepCollectionEquality()
                    .equals(other.approvedBy, approvedBy)) &&
            (identical(other.approvedAt, approvedAt) ||
                const DeepCollectionEquality()
                    .equals(other.approvedAt, approvedAt)) &&
            (identical(other.isAdmin, isAdmin) ||
                const DeepCollectionEquality()
                    .equals(other.isAdmin, isAdmin)) &&
            (identical(other.refreshTokenExpires, refreshTokenExpires) ||
                const DeepCollectionEquality()
                    .equals(other.refreshTokenExpires, refreshTokenExpires)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(locked) ^
      const DeepCollectionEquality().hash(loginRequired) ^
      const DeepCollectionEquality().hash(approvedBy) ^
      const DeepCollectionEquality().hash(approvedAt) ^
      const DeepCollectionEquality().hash(isAdmin) ^
      const DeepCollectionEquality().hash(refreshTokenExpires) ^
      runtimeType.hashCode;
}

extension $AdminUserGetModelExtension on AdminUserGetModel {
  AdminUserGetModel copyWith(
      {int? id,
      String? firstname,
      String? lastname,
      String? email,
      bool? locked,
      bool? loginRequired,
      String? approvedBy,
      DateTime? approvedAt,
      bool? isAdmin,
      DateTime? refreshTokenExpires}) {
    return AdminUserGetModel(
        id: id ?? this.id,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        email: email ?? this.email,
        locked: locked ?? this.locked,
        loginRequired: loginRequired ?? this.loginRequired,
        approvedBy: approvedBy ?? this.approvedBy,
        approvedAt: approvedAt ?? this.approvedAt,
        isAdmin: isAdmin ?? this.isAdmin,
        refreshTokenExpires: refreshTokenExpires ?? this.refreshTokenExpires);
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUserGetModelListWeinDbResult {
  AdminUserGetModelListWeinDbResult({
    this.success,
    this.errormessages,
    this.data,
  });

  factory AdminUserGetModelListWeinDbResult.fromJson(
          Map<String, dynamic> json) =>
      _$AdminUserGetModelListWeinDbResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'errormessages')
  final Object? errormessages;
  @JsonKey(name: 'data', defaultValue: <AdminUserGetModel>[])
  final List<AdminUserGetModel>? data;
  static const fromJsonFactory = _$AdminUserGetModelListWeinDbResultFromJson;
  static const toJsonFactory = _$AdminUserGetModelListWeinDbResultToJson;
  Map<String, dynamic> toJson() =>
      _$AdminUserGetModelListWeinDbResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdminUserGetModelListWeinDbResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.errormessages, errormessages) ||
                const DeepCollectionEquality()
                    .equals(other.errormessages, errormessages)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(errormessages) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $AdminUserGetModelListWeinDbResultExtension
    on AdminUserGetModelListWeinDbResult {
  AdminUserGetModelListWeinDbResult copyWith(
      {bool? success, Object? errormessages, List<AdminUserGetModel>? data}) {
    return AdminUserGetModelListWeinDbResult(
        success: success ?? this.success,
        errormessages: errormessages ?? this.errormessages,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class AdminUserGetModelWeinDbResult {
  AdminUserGetModelWeinDbResult({
    this.success,
    this.errormessages,
    this.data,
  });

  factory AdminUserGetModelWeinDbResult.fromJson(Map<String, dynamic> json) =>
      _$AdminUserGetModelWeinDbResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'errormessages')
  final Object? errormessages;
  @JsonKey(name: 'data')
  final AdminUserGetModel? data;
  static const fromJsonFactory = _$AdminUserGetModelWeinDbResultFromJson;
  static const toJsonFactory = _$AdminUserGetModelWeinDbResultToJson;
  Map<String, dynamic> toJson() => _$AdminUserGetModelWeinDbResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AdminUserGetModelWeinDbResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.errormessages, errormessages) ||
                const DeepCollectionEquality()
                    .equals(other.errormessages, errormessages)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(errormessages) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $AdminUserGetModelWeinDbResultExtension
    on AdminUserGetModelWeinDbResult {
  AdminUserGetModelWeinDbResult copyWith(
      {bool? success, Object? errormessages, AdminUserGetModel? data}) {
    return AdminUserGetModelWeinDbResult(
        success: success ?? this.success,
        errormessages: errormessages ?? this.errormessages,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class GrapeVarietyGetModel {
  GrapeVarietyGetModel({
    this.id,
    this.name,
  });

  factory GrapeVarietyGetModel.fromJson(Map<String, dynamic> json) =>
      _$GrapeVarietyGetModelFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$GrapeVarietyGetModelFromJson;
  static const toJsonFactory = _$GrapeVarietyGetModelToJson;
  Map<String, dynamic> toJson() => _$GrapeVarietyGetModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GrapeVarietyGetModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $GrapeVarietyGetModelExtension on GrapeVarietyGetModel {
  GrapeVarietyGetModel copyWith({int? id, String? name}) {
    return GrapeVarietyGetModel(id: id ?? this.id, name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class GrapeVarietyGetModelListWeinDbResult {
  GrapeVarietyGetModelListWeinDbResult({
    this.success,
    this.errormessages,
    this.data,
  });

  factory GrapeVarietyGetModelListWeinDbResult.fromJson(
          Map<String, dynamic> json) =>
      _$GrapeVarietyGetModelListWeinDbResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'errormessages')
  final Object? errormessages;
  @JsonKey(name: 'data', defaultValue: <GrapeVarietyGetModel>[])
  final List<GrapeVarietyGetModel>? data;
  static const fromJsonFactory = _$GrapeVarietyGetModelListWeinDbResultFromJson;
  static const toJsonFactory = _$GrapeVarietyGetModelListWeinDbResultToJson;
  Map<String, dynamic> toJson() =>
      _$GrapeVarietyGetModelListWeinDbResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GrapeVarietyGetModelListWeinDbResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.errormessages, errormessages) ||
                const DeepCollectionEquality()
                    .equals(other.errormessages, errormessages)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(errormessages) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $GrapeVarietyGetModelListWeinDbResultExtension
    on GrapeVarietyGetModelListWeinDbResult {
  GrapeVarietyGetModelListWeinDbResult copyWith(
      {bool? success,
      Object? errormessages,
      List<GrapeVarietyGetModel>? data}) {
    return GrapeVarietyGetModelListWeinDbResult(
        success: success ?? this.success,
        errormessages: errormessages ?? this.errormessages,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class GrapeVarietyCreateModel {
  GrapeVarietyCreateModel({
    this.name,
  });

  factory GrapeVarietyCreateModel.fromJson(Map<String, dynamic> json) =>
      _$GrapeVarietyCreateModelFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$GrapeVarietyCreateModelFromJson;
  static const toJsonFactory = _$GrapeVarietyCreateModelToJson;
  Map<String, dynamic> toJson() => _$GrapeVarietyCreateModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GrapeVarietyCreateModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $GrapeVarietyCreateModelExtension on GrapeVarietyCreateModel {
  GrapeVarietyCreateModel copyWith({String? name}) {
    return GrapeVarietyCreateModel(name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class GrapeVarietyGetModelWeinDbResult {
  GrapeVarietyGetModelWeinDbResult({
    this.success,
    this.errormessages,
    this.data,
  });

  factory GrapeVarietyGetModelWeinDbResult.fromJson(
          Map<String, dynamic> json) =>
      _$GrapeVarietyGetModelWeinDbResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'errormessages')
  final Object? errormessages;
  @JsonKey(name: 'data')
  final GrapeVarietyGetModel? data;
  static const fromJsonFactory = _$GrapeVarietyGetModelWeinDbResultFromJson;
  static const toJsonFactory = _$GrapeVarietyGetModelWeinDbResultToJson;
  Map<String, dynamic> toJson() =>
      _$GrapeVarietyGetModelWeinDbResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GrapeVarietyGetModelWeinDbResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.errormessages, errormessages) ||
                const DeepCollectionEquality()
                    .equals(other.errormessages, errormessages)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(errormessages) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $GrapeVarietyGetModelWeinDbResultExtension
    on GrapeVarietyGetModelWeinDbResult {
  GrapeVarietyGetModelWeinDbResult copyWith(
      {bool? success, Object? errormessages, GrapeVarietyGetModel? data}) {
    return GrapeVarietyGetModelWeinDbResult(
        success: success ?? this.success,
        errormessages: errormessages ?? this.errormessages,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class GrapeVarietyEditModel {
  GrapeVarietyEditModel({
    this.id,
    this.name,
  });

  factory GrapeVarietyEditModel.fromJson(Map<String, dynamic> json) =>
      _$GrapeVarietyEditModelFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$GrapeVarietyEditModelFromJson;
  static const toJsonFactory = _$GrapeVarietyEditModelToJson;
  Map<String, dynamic> toJson() => _$GrapeVarietyEditModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GrapeVarietyEditModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $GrapeVarietyEditModelExtension on GrapeVarietyEditModel {
  GrapeVarietyEditModel copyWith({int? id, String? name}) {
    return GrapeVarietyEditModel(id: id ?? this.id, name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class RegionGetModel {
  RegionGetModel({
    this.id,
    this.name,
  });

  factory RegionGetModel.fromJson(Map<String, dynamic> json) =>
      _$RegionGetModelFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$RegionGetModelFromJson;
  static const toJsonFactory = _$RegionGetModelToJson;
  Map<String, dynamic> toJson() => _$RegionGetModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegionGetModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $RegionGetModelExtension on RegionGetModel {
  RegionGetModel copyWith({int? id, String? name}) {
    return RegionGetModel(id: id ?? this.id, name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class RegionGetModelListWeinDbResult {
  RegionGetModelListWeinDbResult({
    this.success,
    this.errormessages,
    this.data,
  });

  factory RegionGetModelListWeinDbResult.fromJson(Map<String, dynamic> json) =>
      _$RegionGetModelListWeinDbResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'errormessages')
  final Object? errormessages;
  @JsonKey(name: 'data', defaultValue: <RegionGetModel>[])
  final List<RegionGetModel>? data;
  static const fromJsonFactory = _$RegionGetModelListWeinDbResultFromJson;
  static const toJsonFactory = _$RegionGetModelListWeinDbResultToJson;
  Map<String, dynamic> toJson() => _$RegionGetModelListWeinDbResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegionGetModelListWeinDbResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.errormessages, errormessages) ||
                const DeepCollectionEquality()
                    .equals(other.errormessages, errormessages)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(errormessages) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $RegionGetModelListWeinDbResultExtension
    on RegionGetModelListWeinDbResult {
  RegionGetModelListWeinDbResult copyWith(
      {bool? success, Object? errormessages, List<RegionGetModel>? data}) {
    return RegionGetModelListWeinDbResult(
        success: success ?? this.success,
        errormessages: errormessages ?? this.errormessages,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RegionCreateModel {
  RegionCreateModel({
    this.name,
  });

  factory RegionCreateModel.fromJson(Map<String, dynamic> json) =>
      _$RegionCreateModelFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$RegionCreateModelFromJson;
  static const toJsonFactory = _$RegionCreateModelToJson;
  Map<String, dynamic> toJson() => _$RegionCreateModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegionCreateModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $RegionCreateModelExtension on RegionCreateModel {
  RegionCreateModel copyWith({String? name}) {
    return RegionCreateModel(name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class RegionGetModelWeinDbResult {
  RegionGetModelWeinDbResult({
    this.success,
    this.errormessages,
    this.data,
  });

  factory RegionGetModelWeinDbResult.fromJson(Map<String, dynamic> json) =>
      _$RegionGetModelWeinDbResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'errormessages')
  final Object? errormessages;
  @JsonKey(name: 'data')
  final RegionGetModel? data;
  static const fromJsonFactory = _$RegionGetModelWeinDbResultFromJson;
  static const toJsonFactory = _$RegionGetModelWeinDbResultToJson;
  Map<String, dynamic> toJson() => _$RegionGetModelWeinDbResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegionGetModelWeinDbResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.errormessages, errormessages) ||
                const DeepCollectionEquality()
                    .equals(other.errormessages, errormessages)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(errormessages) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $RegionGetModelWeinDbResultExtension on RegionGetModelWeinDbResult {
  RegionGetModelWeinDbResult copyWith(
      {bool? success, Object? errormessages, RegionGetModel? data}) {
    return RegionGetModelWeinDbResult(
        success: success ?? this.success,
        errormessages: errormessages ?? this.errormessages,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class RegionEditModel {
  RegionEditModel({
    this.id,
    this.name,
  });

  factory RegionEditModel.fromJson(Map<String, dynamic> json) =>
      _$RegionEditModelFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$RegionEditModelFromJson;
  static const toJsonFactory = _$RegionEditModelToJson;
  Map<String, dynamic> toJson() => _$RegionEditModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegionEditModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $RegionEditModelExtension on RegionEditModel {
  RegionEditModel copyWith({int? id, String? name}) {
    return RegionEditModel(id: id ?? this.id, name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class UserRegisterModel {
  UserRegisterModel({
    this.salutation,
    this.firstname,
    this.lastname,
    this.email,
    this.password,
    this.passwordMatch,
  });

  factory UserRegisterModel.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterModelFromJson(json);

  @JsonKey(name: 'salutation')
  final String? salutation;
  @JsonKey(name: 'firstname')
  final String? firstname;
  @JsonKey(name: 'lastname')
  final String? lastname;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'passwordMatch')
  final String? passwordMatch;
  static const fromJsonFactory = _$UserRegisterModelFromJson;
  static const toJsonFactory = _$UserRegisterModelToJson;
  Map<String, dynamic> toJson() => _$UserRegisterModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserRegisterModel &&
            (identical(other.salutation, salutation) ||
                const DeepCollectionEquality()
                    .equals(other.salutation, salutation)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.passwordMatch, passwordMatch) ||
                const DeepCollectionEquality()
                    .equals(other.passwordMatch, passwordMatch)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(salutation) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordMatch) ^
      runtimeType.hashCode;
}

extension $UserRegisterModelExtension on UserRegisterModel {
  UserRegisterModel copyWith(
      {String? salutation,
      String? firstname,
      String? lastname,
      String? email,
      String? password,
      String? passwordMatch}) {
    return UserRegisterModel(
        salutation: salutation ?? this.salutation,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        email: email ?? this.email,
        password: password ?? this.password,
        passwordMatch: passwordMatch ?? this.passwordMatch);
  }
}

@JsonSerializable(explicitToJson: true)
class UserGetModel {
  UserGetModel({
    this.id,
    this.firstname,
    this.lastname,
    this.email,
  });

  factory UserGetModel.fromJson(Map<String, dynamic> json) =>
      _$UserGetModelFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'firstname')
  final String? firstname;
  @JsonKey(name: 'lastname')
  final String? lastname;
  @JsonKey(name: 'email')
  final String? email;
  static const fromJsonFactory = _$UserGetModelFromJson;
  static const toJsonFactory = _$UserGetModelToJson;
  Map<String, dynamic> toJson() => _$UserGetModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserGetModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(email) ^
      runtimeType.hashCode;
}

extension $UserGetModelExtension on UserGetModel {
  UserGetModel copyWith(
      {int? id, String? firstname, String? lastname, String? email}) {
    return UserGetModel(
        id: id ?? this.id,
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        email: email ?? this.email);
  }
}

@JsonSerializable(explicitToJson: true)
class UserGetModelWeinDbResult {
  UserGetModelWeinDbResult({
    this.success,
    this.errormessages,
    this.data,
  });

  factory UserGetModelWeinDbResult.fromJson(Map<String, dynamic> json) =>
      _$UserGetModelWeinDbResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'errormessages')
  final Object? errormessages;
  @JsonKey(name: 'data')
  final UserGetModel? data;
  static const fromJsonFactory = _$UserGetModelWeinDbResultFromJson;
  static const toJsonFactory = _$UserGetModelWeinDbResultToJson;
  Map<String, dynamic> toJson() => _$UserGetModelWeinDbResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserGetModelWeinDbResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.errormessages, errormessages) ||
                const DeepCollectionEquality()
                    .equals(other.errormessages, errormessages)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(errormessages) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $UserGetModelWeinDbResultExtension on UserGetModelWeinDbResult {
  UserGetModelWeinDbResult copyWith(
      {bool? success, Object? errormessages, UserGetModel? data}) {
    return UserGetModelWeinDbResult(
        success: success ?? this.success,
        errormessages: errormessages ?? this.errormessages,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class ApiLoginResult {
  ApiLoginResult({
    this.accessToken,
    this.expiresIn,
    this.tokenType,
    this.refreshToken,
    this.user,
    this.success,
    this.errormessages,
  });

  factory ApiLoginResult.fromJson(Map<String, dynamic> json) =>
      _$ApiLoginResultFromJson(json);

  @JsonKey(name: 'access_token')
  final String? accessToken;
  @JsonKey(name: 'expires_in')
  final int? expiresIn;
  @JsonKey(name: 'token_type')
  final String? tokenType;
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;
  @JsonKey(name: 'user')
  final UserGetModel? user;
  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'errormessages')
  final Object? errormessages;
  static const fromJsonFactory = _$ApiLoginResultFromJson;
  static const toJsonFactory = _$ApiLoginResultToJson;
  Map<String, dynamic> toJson() => _$ApiLoginResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiLoginResult &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.expiresIn, expiresIn) ||
                const DeepCollectionEquality()
                    .equals(other.expiresIn, expiresIn)) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality()
                    .equals(other.tokenType, tokenType)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.errormessages, errormessages) ||
                const DeepCollectionEquality()
                    .equals(other.errormessages, errormessages)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(expiresIn) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(errormessages) ^
      runtimeType.hashCode;
}

extension $ApiLoginResultExtension on ApiLoginResult {
  ApiLoginResult copyWith(
      {String? accessToken,
      int? expiresIn,
      String? tokenType,
      String? refreshToken,
      UserGetModel? user,
      bool? success,
      Object? errormessages}) {
    return ApiLoginResult(
        accessToken: accessToken ?? this.accessToken,
        expiresIn: expiresIn ?? this.expiresIn,
        tokenType: tokenType ?? this.tokenType,
        refreshToken: refreshToken ?? this.refreshToken,
        user: user ?? this.user,
        success: success ?? this.success,
        errormessages: errormessages ?? this.errormessages);
  }
}

@JsonSerializable(explicitToJson: true)
class VendorGetModel {
  VendorGetModel({
    this.id,
    this.name,
  });

  factory VendorGetModel.fromJson(Map<String, dynamic> json) =>
      _$VendorGetModelFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$VendorGetModelFromJson;
  static const toJsonFactory = _$VendorGetModelToJson;
  Map<String, dynamic> toJson() => _$VendorGetModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VendorGetModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $VendorGetModelExtension on VendorGetModel {
  VendorGetModel copyWith({int? id, String? name}) {
    return VendorGetModel(id: id ?? this.id, name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class VendorGetModelListWeinDbResult {
  VendorGetModelListWeinDbResult({
    this.success,
    this.errormessages,
    this.data,
  });

  factory VendorGetModelListWeinDbResult.fromJson(Map<String, dynamic> json) =>
      _$VendorGetModelListWeinDbResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'errormessages')
  final Object? errormessages;
  @JsonKey(name: 'data', defaultValue: <VendorGetModel>[])
  final List<VendorGetModel>? data;
  static const fromJsonFactory = _$VendorGetModelListWeinDbResultFromJson;
  static const toJsonFactory = _$VendorGetModelListWeinDbResultToJson;
  Map<String, dynamic> toJson() => _$VendorGetModelListWeinDbResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VendorGetModelListWeinDbResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.errormessages, errormessages) ||
                const DeepCollectionEquality()
                    .equals(other.errormessages, errormessages)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(errormessages) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $VendorGetModelListWeinDbResultExtension
    on VendorGetModelListWeinDbResult {
  VendorGetModelListWeinDbResult copyWith(
      {bool? success, Object? errormessages, List<VendorGetModel>? data}) {
    return VendorGetModelListWeinDbResult(
        success: success ?? this.success,
        errormessages: errormessages ?? this.errormessages,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class VendorCreateModel {
  VendorCreateModel({
    this.name,
  });

  factory VendorCreateModel.fromJson(Map<String, dynamic> json) =>
      _$VendorCreateModelFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$VendorCreateModelFromJson;
  static const toJsonFactory = _$VendorCreateModelToJson;
  Map<String, dynamic> toJson() => _$VendorCreateModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VendorCreateModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $VendorCreateModelExtension on VendorCreateModel {
  VendorCreateModel copyWith({String? name}) {
    return VendorCreateModel(name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class VendorGetModelWeinDbResult {
  VendorGetModelWeinDbResult({
    this.success,
    this.errormessages,
    this.data,
  });

  factory VendorGetModelWeinDbResult.fromJson(Map<String, dynamic> json) =>
      _$VendorGetModelWeinDbResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'errormessages')
  final Object? errormessages;
  @JsonKey(name: 'data')
  final VendorGetModel? data;
  static const fromJsonFactory = _$VendorGetModelWeinDbResultFromJson;
  static const toJsonFactory = _$VendorGetModelWeinDbResultToJson;
  Map<String, dynamic> toJson() => _$VendorGetModelWeinDbResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VendorGetModelWeinDbResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.errormessages, errormessages) ||
                const DeepCollectionEquality()
                    .equals(other.errormessages, errormessages)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(errormessages) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $VendorGetModelWeinDbResultExtension on VendorGetModelWeinDbResult {
  VendorGetModelWeinDbResult copyWith(
      {bool? success, Object? errormessages, VendorGetModel? data}) {
    return VendorGetModelWeinDbResult(
        success: success ?? this.success,
        errormessages: errormessages ?? this.errormessages,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class VendorEditModel {
  VendorEditModel({
    this.id,
    this.name,
  });

  factory VendorEditModel.fromJson(Map<String, dynamic> json) =>
      _$VendorEditModelFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$VendorEditModelFromJson;
  static const toJsonFactory = _$VendorEditModelToJson;
  Map<String, dynamic> toJson() => _$VendorEditModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VendorEditModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $VendorEditModelExtension on VendorEditModel {
  VendorEditModel copyWith({int? id, String? name}) {
    return VendorEditModel(id: id ?? this.id, name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class Region {
  Region({
    this.id,
    this.name,
  });

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$RegionFromJson;
  static const toJsonFactory = _$RegionToJson;
  Map<String, dynamic> toJson() => _$RegionToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Region &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $RegionExtension on Region {
  Region copyWith({int? id, String? name}) {
    return Region(id: id ?? this.id, name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class Vineyard {
  Vineyard({
    this.id,
    this.name,
    this.region,
  });

  factory Vineyard.fromJson(Map<String, dynamic> json) =>
      _$VineyardFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'region')
  final Region? region;
  static const fromJsonFactory = _$VineyardFromJson;
  static const toJsonFactory = _$VineyardToJson;
  Map<String, dynamic> toJson() => _$VineyardToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Vineyard &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.region, region) ||
                const DeepCollectionEquality().equals(other.region, region)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(region) ^
      runtimeType.hashCode;
}

extension $VineyardExtension on Vineyard {
  Vineyard copyWith({int? id, String? name, Region? region}) {
    return Vineyard(
        id: id ?? this.id,
        name: name ?? this.name,
        region: region ?? this.region);
  }
}

@JsonSerializable(explicitToJson: true)
class WineType {
  WineType({
    this.id,
    this.name,
  });

  factory WineType.fromJson(Map<String, dynamic> json) =>
      _$WineTypeFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$WineTypeFromJson;
  static const toJsonFactory = _$WineTypeToJson;
  Map<String, dynamic> toJson() => _$WineTypeToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WineType &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $WineTypeExtension on WineType {
  WineType copyWith({int? id, String? name}) {
    return WineType(id: id ?? this.id, name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class WineVendor {
  WineVendor({
    this.wineId,
    this.vendorId,
    this.price,
    this.timestamp,
  });

  factory WineVendor.fromJson(Map<String, dynamic> json) =>
      _$WineVendorFromJson(json);

  @JsonKey(name: 'wineId')
  final int? wineId;
  @JsonKey(name: 'vendorId')
  final int? vendorId;
  @JsonKey(name: 'price')
  final double? price;
  @JsonKey(name: 'timestamp')
  final DateTime? timestamp;
  static const fromJsonFactory = _$WineVendorFromJson;
  static const toJsonFactory = _$WineVendorToJson;
  Map<String, dynamic> toJson() => _$WineVendorToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WineVendor &&
            (identical(other.wineId, wineId) ||
                const DeepCollectionEquality().equals(other.wineId, wineId)) &&
            (identical(other.vendorId, vendorId) ||
                const DeepCollectionEquality()
                    .equals(other.vendorId, vendorId)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(wineId) ^
      const DeepCollectionEquality().hash(vendorId) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(timestamp) ^
      runtimeType.hashCode;
}

extension $WineVendorExtension on WineVendor {
  WineVendor copyWith(
      {int? wineId, int? vendorId, double? price, DateTime? timestamp}) {
    return WineVendor(
        wineId: wineId ?? this.wineId,
        vendorId: vendorId ?? this.vendorId,
        price: price ?? this.price,
        timestamp: timestamp ?? this.timestamp);
  }
}

@JsonSerializable(explicitToJson: true)
class GrapeVariety {
  GrapeVariety({
    this.id,
    this.name,
    this.wines,
  });

  factory GrapeVariety.fromJson(Map<String, dynamic> json) =>
      _$GrapeVarietyFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'wines', defaultValue: <Wine>[])
  final List<Wine>? wines;
  static const fromJsonFactory = _$GrapeVarietyFromJson;
  static const toJsonFactory = _$GrapeVarietyToJson;
  Map<String, dynamic> toJson() => _$GrapeVarietyToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GrapeVariety &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.wines, wines) ||
                const DeepCollectionEquality().equals(other.wines, wines)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(wines) ^
      runtimeType.hashCode;
}

extension $GrapeVarietyExtension on GrapeVariety {
  GrapeVariety copyWith({int? id, String? name, List<Wine>? wines}) {
    return GrapeVariety(
        id: id ?? this.id, name: name ?? this.name, wines: wines ?? this.wines);
  }
}

@JsonSerializable(explicitToJson: true)
class Wine {
  Wine({
    this.id,
    this.name,
    this.vineyardId,
    this.vineyard,
    this.wineTypeId,
    this.wineType,
    this.vintage,
    this.vendors,
    this.ratings,
    this.grapeVarieties,
    this.isCuvE,
  });

  factory Wine.fromJson(Map<String, dynamic> json) => _$WineFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'vineyardId')
  final int? vineyardId;
  @JsonKey(name: 'vineyard')
  final Vineyard? vineyard;
  @JsonKey(name: 'wineTypeId')
  final int? wineTypeId;
  @JsonKey(name: 'wineType')
  final WineType? wineType;
  @JsonKey(name: 'vintage')
  final int? vintage;
  @JsonKey(name: 'vendors', defaultValue: <WineVendor>[])
  final List<WineVendor>? vendors;
  @JsonKey(name: 'ratings', defaultValue: <Rating>[])
  final List<Rating>? ratings;
  @JsonKey(name: 'grapeVarieties', defaultValue: <GrapeVariety>[])
  final List<GrapeVariety>? grapeVarieties;
  @JsonKey(name: 'isCuvée')
  final bool? isCuvE;
  static const fromJsonFactory = _$WineFromJson;
  static const toJsonFactory = _$WineToJson;
  Map<String, dynamic> toJson() => _$WineToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Wine &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.vineyardId, vineyardId) ||
                const DeepCollectionEquality()
                    .equals(other.vineyardId, vineyardId)) &&
            (identical(other.vineyard, vineyard) ||
                const DeepCollectionEquality()
                    .equals(other.vineyard, vineyard)) &&
            (identical(other.wineTypeId, wineTypeId) ||
                const DeepCollectionEquality()
                    .equals(other.wineTypeId, wineTypeId)) &&
            (identical(other.wineType, wineType) ||
                const DeepCollectionEquality()
                    .equals(other.wineType, wineType)) &&
            (identical(other.vintage, vintage) ||
                const DeepCollectionEquality()
                    .equals(other.vintage, vintage)) &&
            (identical(other.vendors, vendors) ||
                const DeepCollectionEquality()
                    .equals(other.vendors, vendors)) &&
            (identical(other.ratings, ratings) ||
                const DeepCollectionEquality()
                    .equals(other.ratings, ratings)) &&
            (identical(other.grapeVarieties, grapeVarieties) ||
                const DeepCollectionEquality()
                    .equals(other.grapeVarieties, grapeVarieties)) &&
            (identical(other.isCuvE, isCuvE) ||
                const DeepCollectionEquality().equals(other.isCuvE, isCuvE)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(vineyardId) ^
      const DeepCollectionEquality().hash(vineyard) ^
      const DeepCollectionEquality().hash(wineTypeId) ^
      const DeepCollectionEquality().hash(wineType) ^
      const DeepCollectionEquality().hash(vintage) ^
      const DeepCollectionEquality().hash(vendors) ^
      const DeepCollectionEquality().hash(ratings) ^
      const DeepCollectionEquality().hash(grapeVarieties) ^
      const DeepCollectionEquality().hash(isCuvE) ^
      runtimeType.hashCode;
}

extension $WineExtension on Wine {
  Wine copyWith(
      {int? id,
      String? name,
      int? vineyardId,
      Vineyard? vineyard,
      int? wineTypeId,
      WineType? wineType,
      int? vintage,
      List<WineVendor>? vendors,
      List<Rating>? ratings,
      List<GrapeVariety>? grapeVarieties,
      bool? isCuvE}) {
    return Wine(
        id: id ?? this.id,
        name: name ?? this.name,
        vineyardId: vineyardId ?? this.vineyardId,
        vineyard: vineyard ?? this.vineyard,
        wineTypeId: wineTypeId ?? this.wineTypeId,
        wineType: wineType ?? this.wineType,
        vintage: vintage ?? this.vintage,
        vendors: vendors ?? this.vendors,
        ratings: ratings ?? this.ratings,
        grapeVarieties: grapeVarieties ?? this.grapeVarieties,
        isCuvE: isCuvE ?? this.isCuvE);
  }
}

@JsonSerializable(explicitToJson: true)
class WineListWeinDbResult {
  WineListWeinDbResult({
    this.success,
    this.errormessages,
    this.data,
  });

  factory WineListWeinDbResult.fromJson(Map<String, dynamic> json) =>
      _$WineListWeinDbResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'errormessages')
  final Object? errormessages;
  @JsonKey(name: 'data', defaultValue: <Wine>[])
  final List<Wine>? data;
  static const fromJsonFactory = _$WineListWeinDbResultFromJson;
  static const toJsonFactory = _$WineListWeinDbResultToJson;
  Map<String, dynamic> toJson() => _$WineListWeinDbResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WineListWeinDbResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.errormessages, errormessages) ||
                const DeepCollectionEquality()
                    .equals(other.errormessages, errormessages)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(errormessages) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $WineListWeinDbResultExtension on WineListWeinDbResult {
  WineListWeinDbResult copyWith(
      {bool? success, Object? errormessages, List<Wine>? data}) {
    return WineListWeinDbResult(
        success: success ?? this.success,
        errormessages: errormessages ?? this.errormessages,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class WineTypeGetModel {
  WineTypeGetModel({
    this.id,
    this.name,
  });

  factory WineTypeGetModel.fromJson(Map<String, dynamic> json) =>
      _$WineTypeGetModelFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$WineTypeGetModelFromJson;
  static const toJsonFactory = _$WineTypeGetModelToJson;
  Map<String, dynamic> toJson() => _$WineTypeGetModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WineTypeGetModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $WineTypeGetModelExtension on WineTypeGetModel {
  WineTypeGetModel copyWith({int? id, String? name}) {
    return WineTypeGetModel(id: id ?? this.id, name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class WineTypeGetModelListWeinDbResult {
  WineTypeGetModelListWeinDbResult({
    this.success,
    this.errormessages,
    this.data,
  });

  factory WineTypeGetModelListWeinDbResult.fromJson(
          Map<String, dynamic> json) =>
      _$WineTypeGetModelListWeinDbResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'errormessages')
  final Object? errormessages;
  @JsonKey(name: 'data', defaultValue: <WineTypeGetModel>[])
  final List<WineTypeGetModel>? data;
  static const fromJsonFactory = _$WineTypeGetModelListWeinDbResultFromJson;
  static const toJsonFactory = _$WineTypeGetModelListWeinDbResultToJson;
  Map<String, dynamic> toJson() =>
      _$WineTypeGetModelListWeinDbResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WineTypeGetModelListWeinDbResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.errormessages, errormessages) ||
                const DeepCollectionEquality()
                    .equals(other.errormessages, errormessages)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(errormessages) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $WineTypeGetModelListWeinDbResultExtension
    on WineTypeGetModelListWeinDbResult {
  WineTypeGetModelListWeinDbResult copyWith(
      {bool? success, Object? errormessages, List<WineTypeGetModel>? data}) {
    return WineTypeGetModelListWeinDbResult(
        success: success ?? this.success,
        errormessages: errormessages ?? this.errormessages,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class WineTypeCreateModel {
  WineTypeCreateModel({
    this.name,
  });

  factory WineTypeCreateModel.fromJson(Map<String, dynamic> json) =>
      _$WineTypeCreateModelFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$WineTypeCreateModelFromJson;
  static const toJsonFactory = _$WineTypeCreateModelToJson;
  Map<String, dynamic> toJson() => _$WineTypeCreateModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WineTypeCreateModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $WineTypeCreateModelExtension on WineTypeCreateModel {
  WineTypeCreateModel copyWith({String? name}) {
    return WineTypeCreateModel(name: name ?? this.name);
  }
}

@JsonSerializable(explicitToJson: true)
class WineTypeGetModelWeinDbResult {
  WineTypeGetModelWeinDbResult({
    this.success,
    this.errormessages,
    this.data,
  });

  factory WineTypeGetModelWeinDbResult.fromJson(Map<String, dynamic> json) =>
      _$WineTypeGetModelWeinDbResultFromJson(json);

  @JsonKey(name: 'success')
  final bool? success;
  @JsonKey(name: 'errormessages')
  final Object? errormessages;
  @JsonKey(name: 'data')
  final WineTypeGetModel? data;
  static const fromJsonFactory = _$WineTypeGetModelWeinDbResultFromJson;
  static const toJsonFactory = _$WineTypeGetModelWeinDbResultToJson;
  Map<String, dynamic> toJson() => _$WineTypeGetModelWeinDbResultToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WineTypeGetModelWeinDbResult &&
            (identical(other.success, success) ||
                const DeepCollectionEquality()
                    .equals(other.success, success)) &&
            (identical(other.errormessages, errormessages) ||
                const DeepCollectionEquality()
                    .equals(other.errormessages, errormessages)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(success) ^
      const DeepCollectionEquality().hash(errormessages) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $WineTypeGetModelWeinDbResultExtension
    on WineTypeGetModelWeinDbResult {
  WineTypeGetModelWeinDbResult copyWith(
      {bool? success, Object? errormessages, WineTypeGetModel? data}) {
    return WineTypeGetModelWeinDbResult(
        success: success ?? this.success,
        errormessages: errormessages ?? this.errormessages,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class WineTypeEditModel {
  WineTypeEditModel({
    this.id,
    this.name,
  });

  factory WineTypeEditModel.fromJson(Map<String, dynamic> json) =>
      _$WineTypeEditModelFromJson(json);

  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$WineTypeEditModelFromJson;
  static const toJsonFactory = _$WineTypeEditModelToJson;
  Map<String, dynamic> toJson() => _$WineTypeEditModelToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WineTypeEditModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $WineTypeEditModelExtension on WineTypeEditModel {
  WineTypeEditModel copyWith({int? id, String? name}) {
    return WineTypeEditModel(id: id ?? this.id, name: name ?? this.name);
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  chopper.Response<ResultType> convertResponse<ResultType, Item>(
      chopper.Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(WeinDbJsonDecoderMappings);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}
