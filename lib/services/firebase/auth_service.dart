import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:i_toast/i_toast.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:travel_app/app/app_locator.dart';
import 'package:travel_app/app/init/language/locale_keys.g.dart';
import 'package:travel_app/app/utilities/constant/app_constants.dart';
import 'package:travel_app/app/utilities/constant/app_routes_constant.dart';

class AuthService {
  Future<void> signUp({required String email, required String password, required BuildContext context}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      await Future.delayed(Durations.short2);
      AppLocator.locator<NavigationService>().navigateTo(AppRoutesConstant.dashboard);
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == AppConstants.weekPassword) {
        message = LocaleKeys.firebaseAuth_weekPassword;
      } else if (e.code == AppConstants.emailAlreadyExist) {
        message = LocaleKeys.firebaseAuth_alreadyExist;
      }
      if (context.mounted) {
        IToastService.show(context, description: message, toastType: ToastType.error);
      }
    } catch (e) {
      if (context.mounted) {
        IToastService.show(context, description: LocaleKeys.firebaseAuth_unExpectedError, toastType: ToastType.error);
      }
    }
  }

  Future<void> signIn({required String email, required String password, required BuildContext context}) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
      await Future.delayed(Durations.short2);
      AppLocator.locator<NavigationService>().navigateTo(AppRoutesConstant.dashboard);
    } on FirebaseAuthException catch (e) {
      String message = '';
      if (e.code == AppConstants.userNotFound) {
        message = LocaleKeys.firebaseAuth_userNotFound;
      } else if (e.code == AppConstants.wrongPassword) {
        message = LocaleKeys.firebaseAuth_userNotFound;
      }
      if (context.mounted) {
        IToastService.show(context, description: message, toastType: ToastType.error);
      }
    } catch (e) {
      if (context.mounted) {
        IToastService.show(context, description: LocaleKeys.firebaseAuth_unExpectedError, toastType: ToastType.error);
      }
    }
  }

  Future<void> signOut({required BuildContext context}) async {
    await FirebaseAuth.instance.signOut();
    await Future.delayed(Durations.short2);
    AppLocator.locator<NavigationService>().navigateTo(AppRoutesConstant.login);
  }
}
