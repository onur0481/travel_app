import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:travel_app/app/app_locator.dart';
import 'package:travel_app/ui/views/dashboard/dashboard_viewmodel.dart';

final class DashboardView extends StackedView<DashboardViewModel> {
  const DashboardView({super.key});

  @override
  Widget builder(
    BuildContext context,
    DashboardViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to Travel Apps"),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Onur"),
            Text("Yaşar"),
          ],
        ),
      ),
    );
  }

  @override
  DashboardViewModel viewModelBuilder(BuildContext context) {
    return AppLocator.locator<DashboardViewModel>();
  }
}
