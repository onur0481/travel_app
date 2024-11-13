import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/app/utilities/extensions/context_extension.dart';

final class BaseSkeleton extends StatelessWidget {
  const BaseSkeleton({
    super.key,
    this.appBar,
    required this.body,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.backGround,
    this.resizeToAvoidBottomSheet = true,
    this.resizeFabButton = true,
    this.showAppBar = true,
    this.safeAreaTop = true,
    this.isBGColorShow = false,
  });
  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final String? backGround;
  final bool resizeToAvoidBottomSheet;
  final bool resizeFabButton;
  final bool showAppBar;
  final bool safeAreaTop;
  final bool isBGColorShow;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      decoration: BoxDecoration(
        color: context.colors.white,
        image: isBGColorShow
            ? const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(""),
              )
            : null,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: resizeToAvoidBottomSheet,
        appBar: appBar,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: constraints.biggest.height - ((floatingActionButton != null) && resizeFabButton ? 100.h : 0),
              width: constraints.biggest.width,
              child: body,
            );
          },
        ),
        backgroundColor: Colors.transparent,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
