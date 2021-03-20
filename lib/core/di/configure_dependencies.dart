import 'package:Postly/features/posts/domain/posts_module_injector.dart';

import 'core_injector.dart';

void configureDependencies() {
  coreInjector().setup();
  postsModuleInjector().setup();
}
