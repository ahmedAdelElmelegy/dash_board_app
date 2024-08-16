import 'package:dash_board_app/utils/app_color.dart';
import 'package:dash_board_app/utils/app_responsive_text.dart';
import 'package:flutter/material.dart';

abstract class AppStyle {
  // 12

  static TextStyle f12normalgrey(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 16, context: context),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: AppColor.subtitleColor);

  // 16
  static TextStyle f16semiboldblack(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 16, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: AppColor.blackColor);
  static TextStyle f16mediumrimary(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 16, context: context),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: AppColor.primaryColor);

  static TextStyle f16boldprimary(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 16, context: context),
      fontWeight: FontWeight.w700,
      fontFamily: 'Montserrat',
      color: AppColor.primaryColor);
  static TextStyle f16Normalblack(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 16, context: context),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: AppColor.blackColor);
  static TextStyle f16Normalgrey(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 16, context: context),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: AppColor.subtitleColor);
  static TextStyle f16Normalwhite(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 16, context: context),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: AppColor.whiteColor);

  static TextStyle f16semiboldwhite(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 16, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: AppColor.whiteColor);

  static TextStyle f16semiboldgrey(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 16, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: AppColor.subtitleColor);
  static TextStyle f16mediumgrey(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 16, context: context),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: AppColor.subtitleColor);

// 18

  static TextStyle f18semiboldprimary(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 18, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: AppColor.primaryColor);
  static TextStyle f18semiboldwhite(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 18, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: AppColor.whiteColor);

  // 20

  static TextStyle f20semiboldblack(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 20, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: AppColor.blackColor);
  static TextStyle f20mediumwhite(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 20, context: context),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: AppColor.whiteColor);
  static TextStyle f20semiBoldRed(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 20, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: AppColor.redColor);
  static TextStyle f20semiBoldprice(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 20, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: AppColor.priceColor);

  // 24
  static TextStyle f24semiboldwhite(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 24, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: AppColor.whiteColor);
  static TextStyle f24semiboldprimary(BuildContext context) => TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 24, context: context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: AppColor.primaryColor);
}
