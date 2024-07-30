// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:coree/src/ui/pages/crashlytics_page.dart' as _i2;
import 'package:coree/src/ui/pages/debug_page.dart' as _i3;
import 'package:coree/src/ui/pages/demo_page.dart' as _i5;
import 'package:coree/src/ui/pages/request_permission_page.dart' as _i10;
import 'package:coree/src/ui/pages/router_page.dart' as _i11;
import 'package:coree/src/ui/pages/settings/localization/localizations_page.dart'
    as _i7;
import 'package:coree/src/ui/pages/settings/login/apple_secret_page.dart'
    as _i1;
import 'package:coree/src/ui/pages/settings/login/delete_account_page.dart'
    as _i4;
import 'package:coree/src/ui/pages/settings/login/google_secret_page.dart'
    as _i6;
import 'package:coree/src/ui/pages/settings/login/login_page.dart' as _i8;
import 'package:coree/src/ui/pages/settings/login/secret_page.dart' as _i17;
import 'package:coree/src/ui/pages/settings/provider/provider_test_page.dart'
    as _i9;
import 'package:coree/src/ui/pages/settings/routing/routing_param_page.dart'
    as _i12;
import 'package:coree/src/ui/pages/settings/routing/routing_path_param_detail_page.dart'
    as _i13;
import 'package:coree/src/ui/pages/settings/routing/routing_query_param_detail_page.dart'
    as _i14;
import 'package:coree/src/ui/pages/settings/routing/routing_test_detail_detail_page.dart'
    as _i15;
import 'package:coree/src/ui/pages/settings/routing/routing_test_detail_page.dart'
    as _i16;
import 'package:coree/src/ui/pages/settings/settings_page.dart' as _i18;
import 'package:firebase_auth/firebase_auth.dart' as _i21;
import 'package:flutter/foundation.dart' as _i20;
import 'package:flutter/material.dart' as _i22;

abstract class $AppRouter extends _i19.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    AppleSecretPage.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AppleSecretPage(),
      );
    },
    CrashlyticsPage.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CrashlyticsPage(),
      );
    },
    DebugPage.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DebugPage(),
      );
    },
    DeleteAccountPage.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DeleteAccountPage(),
      );
    },
    DemoPage.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DemoPage(),
      );
    },
    GoogleSecretPage.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.GoogleSecretPage(),
      );
    },
    LocalizationsPage.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LocalizationsPage(),
      );
    },
    LoginPage.name: (routeData) {
      final args =
          routeData.argsAs<LoginPageArgs>(orElse: () => const LoginPageArgs());
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.LoginPage(
          key: args.key,
          onResult: args.onResult,
          providerId: args.providerId,
        ),
      );
    },
    ProviderTestPage.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.ProviderTestPage(),
      );
    },
    RequestPermissionPage.name: (routeData) {
      final args = routeData.argsAs<RequestPermissionPageArgs>(
          orElse: () => const RequestPermissionPageArgs());
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.RequestPermissionPage(
          key: args.key,
          onResult: args.onResult,
        ),
      );
    },
    RouterPage.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.RouterPage(),
      );
    },
    RoutingParamPage.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.RoutingParamPage(),
      );
    },
    RoutingPathParamDetailPage.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RoutingPathParamDetailPageArgs>(
          orElse: () => RoutingPathParamDetailPageArgs(
              filmid: pathParams.getString('filmid')));
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.RoutingPathParamDetailPage(
          key: args.key,
          filmid: args.filmid,
        ),
      );
    },
    RoutingQueryParamDetailPage.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<RoutingQueryParamDetailPageArgs>(
          orElse: () => RoutingQueryParamDetailPageArgs(
              filmid: queryParams.optInt('key')));
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.RoutingQueryParamDetailPage(
          key: args.key,
          filmid: args.filmid,
        ),
      );
    },
    RoutingTestDetailDetail.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.RoutingTestDetailDetail(),
      );
    },
    RoutingTestDetailPage.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.RoutingTestDetailPage(),
      );
    },
    SecretPage.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SecretPage(),
      );
    },
    SettingsPage.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.SettingsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AppleSecretPage]
class AppleSecretPage extends _i19.PageRouteInfo<void> {
  const AppleSecretPage({List<_i19.PageRouteInfo>? children})
      : super(
          AppleSecretPage.name,
          initialChildren: children,
        );

  static const String name = 'AppleSecretPage';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CrashlyticsPage]
class CrashlyticsPage extends _i19.PageRouteInfo<void> {
  const CrashlyticsPage({List<_i19.PageRouteInfo>? children})
      : super(
          CrashlyticsPage.name,
          initialChildren: children,
        );

  static const String name = 'CrashlyticsPage';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DebugPage]
class DebugPage extends _i19.PageRouteInfo<void> {
  const DebugPage({List<_i19.PageRouteInfo>? children})
      : super(
          DebugPage.name,
          initialChildren: children,
        );

  static const String name = 'DebugPage';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DeleteAccountPage]
class DeleteAccountPage extends _i19.PageRouteInfo<void> {
  const DeleteAccountPage({List<_i19.PageRouteInfo>? children})
      : super(
          DeleteAccountPage.name,
          initialChildren: children,
        );

  static const String name = 'DeleteAccountPage';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i5.DemoPage]
class DemoPage extends _i19.PageRouteInfo<void> {
  const DemoPage({List<_i19.PageRouteInfo>? children})
      : super(
          DemoPage.name,
          initialChildren: children,
        );

  static const String name = 'DemoPage';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i6.GoogleSecretPage]
class GoogleSecretPage extends _i19.PageRouteInfo<void> {
  const GoogleSecretPage({List<_i19.PageRouteInfo>? children})
      : super(
          GoogleSecretPage.name,
          initialChildren: children,
        );

  static const String name = 'GoogleSecretPage';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LocalizationsPage]
class LocalizationsPage extends _i19.PageRouteInfo<void> {
  const LocalizationsPage({List<_i19.PageRouteInfo>? children})
      : super(
          LocalizationsPage.name,
          initialChildren: children,
        );

  static const String name = 'LocalizationsPage';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginPage]
class LoginPage extends _i19.PageRouteInfo<LoginPageArgs> {
  LoginPage({
    _i20.Key? key,
    dynamic Function(_i21.User?)? onResult,
    String? providerId,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          LoginPage.name,
          args: LoginPageArgs(
            key: key,
            onResult: onResult,
            providerId: providerId,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginPage';

  static const _i19.PageInfo<LoginPageArgs> page =
      _i19.PageInfo<LoginPageArgs>(name);
}

class LoginPageArgs {
  const LoginPageArgs({
    this.key,
    this.onResult,
    this.providerId,
  });

  final _i20.Key? key;

  final dynamic Function(_i21.User?)? onResult;

  final String? providerId;

  @override
  String toString() {
    return 'LoginPageArgs{key: $key, onResult: $onResult, providerId: $providerId}';
  }
}

/// generated route for
/// [_i9.ProviderTestPage]
class ProviderTestPage extends _i19.PageRouteInfo<void> {
  const ProviderTestPage({List<_i19.PageRouteInfo>? children})
      : super(
          ProviderTestPage.name,
          initialChildren: children,
        );

  static const String name = 'ProviderTestPage';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i10.RequestPermissionPage]
class RequestPermissionPage
    extends _i19.PageRouteInfo<RequestPermissionPageArgs> {
  RequestPermissionPage({
    _i22.Key? key,
    void Function(bool)? onResult,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          RequestPermissionPage.name,
          args: RequestPermissionPageArgs(
            key: key,
            onResult: onResult,
          ),
          initialChildren: children,
        );

  static const String name = 'RequestPermissionPage';

  static const _i19.PageInfo<RequestPermissionPageArgs> page =
      _i19.PageInfo<RequestPermissionPageArgs>(name);
}

class RequestPermissionPageArgs {
  const RequestPermissionPageArgs({
    this.key,
    this.onResult,
  });

  final _i22.Key? key;

  final void Function(bool)? onResult;

  @override
  String toString() {
    return 'RequestPermissionPageArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i11.RouterPage]
class RouterPage extends _i19.PageRouteInfo<void> {
  const RouterPage({List<_i19.PageRouteInfo>? children})
      : super(
          RouterPage.name,
          initialChildren: children,
        );

  static const String name = 'RouterPage';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i12.RoutingParamPage]
class RoutingParamPage extends _i19.PageRouteInfo<void> {
  const RoutingParamPage({List<_i19.PageRouteInfo>? children})
      : super(
          RoutingParamPage.name,
          initialChildren: children,
        );

  static const String name = 'RoutingParamPage';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i13.RoutingPathParamDetailPage]
class RoutingPathParamDetailPage
    extends _i19.PageRouteInfo<RoutingPathParamDetailPageArgs> {
  RoutingPathParamDetailPage({
    _i22.Key? key,
    required String filmid,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          RoutingPathParamDetailPage.name,
          args: RoutingPathParamDetailPageArgs(
            key: key,
            filmid: filmid,
          ),
          rawPathParams: {'filmid': filmid},
          initialChildren: children,
        );

  static const String name = 'RoutingPathParamDetailPage';

  static const _i19.PageInfo<RoutingPathParamDetailPageArgs> page =
      _i19.PageInfo<RoutingPathParamDetailPageArgs>(name);
}

class RoutingPathParamDetailPageArgs {
  const RoutingPathParamDetailPageArgs({
    this.key,
    required this.filmid,
  });

  final _i22.Key? key;

  final String filmid;

  @override
  String toString() {
    return 'RoutingPathParamDetailPageArgs{key: $key, filmid: $filmid}';
  }
}

/// generated route for
/// [_i14.RoutingQueryParamDetailPage]
class RoutingQueryParamDetailPage
    extends _i19.PageRouteInfo<RoutingQueryParamDetailPageArgs> {
  RoutingQueryParamDetailPage({
    _i22.Key? key,
    int? filmid,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          RoutingQueryParamDetailPage.name,
          args: RoutingQueryParamDetailPageArgs(
            key: key,
            filmid: filmid,
          ),
          rawQueryParams: {'key': filmid},
          initialChildren: children,
        );

  static const String name = 'RoutingQueryParamDetailPage';

  static const _i19.PageInfo<RoutingQueryParamDetailPageArgs> page =
      _i19.PageInfo<RoutingQueryParamDetailPageArgs>(name);
}

class RoutingQueryParamDetailPageArgs {
  const RoutingQueryParamDetailPageArgs({
    this.key,
    this.filmid,
  });

  final _i22.Key? key;

  final int? filmid;

  @override
  String toString() {
    return 'RoutingQueryParamDetailPageArgs{key: $key, filmid: $filmid}';
  }
}

/// generated route for
/// [_i15.RoutingTestDetailDetail]
class RoutingTestDetailDetail extends _i19.PageRouteInfo<void> {
  const RoutingTestDetailDetail({List<_i19.PageRouteInfo>? children})
      : super(
          RoutingTestDetailDetail.name,
          initialChildren: children,
        );

  static const String name = 'RoutingTestDetailDetail';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i16.RoutingTestDetailPage]
class RoutingTestDetailPage extends _i19.PageRouteInfo<void> {
  const RoutingTestDetailPage({List<_i19.PageRouteInfo>? children})
      : super(
          RoutingTestDetailPage.name,
          initialChildren: children,
        );

  static const String name = 'RoutingTestDetailPage';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SecretPage]
class SecretPage extends _i19.PageRouteInfo<void> {
  const SecretPage({List<_i19.PageRouteInfo>? children})
      : super(
          SecretPage.name,
          initialChildren: children,
        );

  static const String name = 'SecretPage';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SettingsPage]
class SettingsPage extends _i19.PageRouteInfo<void> {
  const SettingsPage({List<_i19.PageRouteInfo>? children})
      : super(
          SettingsPage.name,
          initialChildren: children,
        );

  static const String name = 'SettingsPage';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}
