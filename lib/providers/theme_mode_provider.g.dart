// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_mode_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ActiveThemeMode)
final activeThemeModeProvider = ActiveThemeModeProvider._();

final class ActiveThemeModeProvider
    extends $NotifierProvider<ActiveThemeMode, ThemeMode> {
  ActiveThemeModeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'activeThemeModeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$activeThemeModeHash();

  @$internal
  @override
  ActiveThemeMode create() => ActiveThemeMode();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeMode>(value),
    );
  }
}

String _$activeThemeModeHash() => r'71e90bd8c9875cf7480883f97a9b5a4521babad0';

abstract class _$ActiveThemeMode extends $Notifier<ThemeMode> {
  ThemeMode build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ThemeMode, ThemeMode>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ThemeMode, ThemeMode>,
              ThemeMode,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
