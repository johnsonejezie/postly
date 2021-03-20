// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_module_injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$PostsModuleInjector extends PostsModuleInjector {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory<PostsRemoteDatasource>((c) => PostsRemoteDatasourceImpl(c<NetworkService>()));
    container.registerFactory<PostsRepository>((c) => PostsRepositoryImpl(c<PostsRemoteDatasource>()));
  }
}
