import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:travel_app/app/app_locator.dart';
import 'package:travel_app/app/init/language/locale_keys.g.dart';
import 'package:travel_app/app/utilities/extensions/string_extension.dart';
import 'package:travel_app/ui/views/register/register_viewmodel.dart';
import 'package:travel_app/ui/widgets/base_skeleton/base_skeleton.dart';

final class RegisterView extends StackedView<RegisterViewmodel> {
  const RegisterView({super.key});

  @override
  Widget builder(BuildContext context, RegisterViewmodel viewModel, Widget? child) {
    return BaseSkeleton(
        body: Column(
      children: [
        Text(
          LocaleKeys.helloWord.locale,
        )
      ],
    ));
  }

  @override
  RegisterViewmodel viewModelBuilder(BuildContext context) {
    return AppLocator.locator<RegisterViewmodel>();
  }

  @override
  void onViewModelReady(RegisterViewmodel viewModel) async {
    super.onViewModelReady(viewModel);
    await viewModel.init();
  }

  @override
  void onDispose(RegisterViewmodel viewModel) {
    super.onDispose(viewModel);
    viewModel.dispose();
  }
}
