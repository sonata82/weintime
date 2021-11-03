// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wein_db.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$WeinDb extends WeinDb {
  _$WeinDb([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = WeinDb;

  @override
  Future<Response<AccountGetModelWeinDbResult>> accountGet() {
    final $url = '/Account';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<AccountGetModelWeinDbResult,
        AccountGetModelWeinDbResult>($request);
  }

  @override
  Future<Response<ObjectWeinDbResult>> accountChangePasswordPost(
      {required ChangePasswordModel? body}) {
    final $url = '/Account/ChangePassword';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ObjectWeinDbResult, ObjectWeinDbResult>($request);
  }

  @override
  Future<Response<AdminUserGetModelListWeinDbResult>> adminUserGet() {
    final $url = '/Admin/User';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<AdminUserGetModelListWeinDbResult,
        AdminUserGetModelListWeinDbResult>($request);
  }

  @override
  Future<Response<AdminUserGetModelWeinDbResult>> adminUserLockIdGet(
      {required int? id}) {
    final $url = '/Admin/User/Lock/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<AdminUserGetModelWeinDbResult,
        AdminUserGetModelWeinDbResult>($request);
  }

  @override
  Future<Response<AdminUserGetModelWeinDbResult>> adminUserUnlockIdGet(
      {required int? id}) {
    final $url = '/Admin/User/Unlock/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<AdminUserGetModelWeinDbResult,
        AdminUserGetModelWeinDbResult>($request);
  }

  @override
  Future<Response<AdminUserGetModelWeinDbResult>> adminUserDeleteIdDelete(
      {required int? id}) {
    final $url = '/Admin/User/Delete/$id';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<AdminUserGetModelWeinDbResult,
        AdminUserGetModelWeinDbResult>($request);
  }

  @override
  Future<Response<ObjectWeinDbResult>> adminUserActivateIdGet(
      {required int? id}) {
    final $url = '/Admin/User/Activate/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<ObjectWeinDbResult, ObjectWeinDbResult>($request);
  }

  @override
  Future<Response<AdminUserGetModelWeinDbResult>> adminUserToggleAdminIdGet(
      {required int? id}) {
    final $url = '/Admin/User/ToggleAdmin/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<AdminUserGetModelWeinDbResult,
        AdminUserGetModelWeinDbResult>($request);
  }

  @override
  Future<Response<GrapeVarietyGetModelListWeinDbResult>> grapeVarietyGet() {
    final $url = '/GrapeVariety';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<GrapeVarietyGetModelListWeinDbResult,
        GrapeVarietyGetModelListWeinDbResult>($request);
  }

  @override
  Future<Response<GrapeVarietyGetModelWeinDbResult>> grapeVarietyPost(
      {required GrapeVarietyCreateModel? body}) {
    final $url = '/GrapeVariety';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<GrapeVarietyGetModelWeinDbResult,
        GrapeVarietyGetModelWeinDbResult>($request);
  }

  @override
  Future<Response<ObjectWeinDbResult>> grapeVarietyPut(
      {required GrapeVarietyEditModel? body}) {
    final $url = '/GrapeVariety';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ObjectWeinDbResult, ObjectWeinDbResult>($request);
  }

  @override
  Future<Response<GrapeVarietyGetModelWeinDbResult>> grapeVarietyIdGet(
      {required int? id}) {
    final $url = '/GrapeVariety/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<GrapeVarietyGetModelWeinDbResult,
        GrapeVarietyGetModelWeinDbResult>($request);
  }

  @override
  Future<Response<ObjectWeinDbResult>> grapeVarietyIdDelete(
      {required int? id}) {
    final $url = '/GrapeVariety/$id';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ObjectWeinDbResult, ObjectWeinDbResult>($request);
  }

  @override
  Future<Response<RegionGetModelListWeinDbResult>> regionGet() {
    final $url = '/Region';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<RegionGetModelListWeinDbResult,
        RegionGetModelListWeinDbResult>($request);
  }

  @override
  Future<Response<RegionGetModelWeinDbResult>> regionPost(
      {required RegionCreateModel? body}) {
    final $url = '/Region';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<RegionGetModelWeinDbResult, RegionGetModelWeinDbResult>($request);
  }

  @override
  Future<Response<ObjectWeinDbResult>> regionPut(
      {required RegionEditModel? body}) {
    final $url = '/Region';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ObjectWeinDbResult, ObjectWeinDbResult>($request);
  }

  @override
  Future<Response<RegionGetModelWeinDbResult>> regionIdGet({required int? id}) {
    final $url = '/Region/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<RegionGetModelWeinDbResult, RegionGetModelWeinDbResult>($request);
  }

  @override
  Future<Response<ObjectWeinDbResult>> regionIdDelete({required int? id}) {
    final $url = '/Region/$id';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ObjectWeinDbResult, ObjectWeinDbResult>($request);
  }

  @override
  Future<Response<UserGetModelWeinDbResult>> registerPost(
      {required UserRegisterModel? body}) {
    final $url = '/Register';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<UserGetModelWeinDbResult, UserGetModelWeinDbResult>($request);
  }

  @override
  Future<Response<ApiLoginResult>> tokenPost(
      {String? username,
      String? password,
      String? grantType,
      String? refreshToken}) {
    final $url = '/Token';
    final $params = <String, dynamic>{
      'username': username,
      'password': password,
      'grant_type': grantType,
      'refresh_token': refreshToken
    };
    final $request = Request('POST', $url, client.baseUrl, parameters: $params);
    return client.send<ApiLoginResult, ApiLoginResult>($request);
  }

  @override
  Future<Response<VendorGetModelListWeinDbResult>> vendorGet() {
    final $url = '/Vendor';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<VendorGetModelListWeinDbResult,
        VendorGetModelListWeinDbResult>($request);
  }

  @override
  Future<Response<VendorGetModelWeinDbResult>> vendorPost(
      {required VendorCreateModel? body}) {
    final $url = '/Vendor';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client
        .send<VendorGetModelWeinDbResult, VendorGetModelWeinDbResult>($request);
  }

  @override
  Future<Response<ObjectWeinDbResult>> vendorPut(
      {required VendorEditModel? body}) {
    final $url = '/Vendor';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ObjectWeinDbResult, ObjectWeinDbResult>($request);
  }

  @override
  Future<Response<VendorGetModelWeinDbResult>> vendorIdGet({required int? id}) {
    final $url = '/Vendor/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<VendorGetModelWeinDbResult, VendorGetModelWeinDbResult>($request);
  }

  @override
  Future<Response<ObjectWeinDbResult>> vendorIdDelete({required int? id}) {
    final $url = '/Vendor/$id';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ObjectWeinDbResult, ObjectWeinDbResult>($request);
  }

  @override
  Future<Response<WineListWeinDbResult>> wineGet() {
    final $url = '/Wine';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<WineListWeinDbResult, WineListWeinDbResult>($request);
  }

  @override
  Future<Response<WineTypeGetModelListWeinDbResult>> wineTypeGet() {
    final $url = '/WineType';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<WineTypeGetModelListWeinDbResult,
        WineTypeGetModelListWeinDbResult>($request);
  }

  @override
  Future<Response<WineTypeGetModelWeinDbResult>> wineTypePost(
      {required WineTypeCreateModel? body}) {
    final $url = '/WineType';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<WineTypeGetModelWeinDbResult,
        WineTypeGetModelWeinDbResult>($request);
  }

  @override
  Future<Response<ObjectWeinDbResult>> wineTypePut(
      {required WineTypeEditModel? body}) {
    final $url = '/WineType';
    final $body = body;
    final $request = Request('PUT', $url, client.baseUrl, body: $body);
    return client.send<ObjectWeinDbResult, ObjectWeinDbResult>($request);
  }

  @override
  Future<Response<WineTypeGetModelWeinDbResult>> wineTypeIdGet(
      {required int? id}) {
    final $url = '/WineType/$id';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<WineTypeGetModelWeinDbResult,
        WineTypeGetModelWeinDbResult>($request);
  }

  @override
  Future<Response<ObjectWeinDbResult>> wineTypeIdDelete({required int? id}) {
    final $url = '/WineType/$id';
    final $request = Request('DELETE', $url, client.baseUrl);
    return client.send<ObjectWeinDbResult, ObjectWeinDbResult>($request);
  }
}
