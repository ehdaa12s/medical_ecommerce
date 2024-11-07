import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_ecommerce/core/helper/extensions.dart';
import 'package:medical_ecommerce/core/router/routes.dart';
import 'package:medical_ecommerce/core/utils/app_assets.dart';
import 'package:medical_ecommerce/core/utils/color_manager.dart';
import 'package:medical_ecommerce/core/utils/text_styles.dart';
import 'package:medical_ecommerce/core/widgets/custom_buttons.dart';
import '';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Column(
        children: [
          SvgPicture.asset(
            AppAssets.oroderConfirmed,
            height: 200.h,
            width: 200.w,
          ),
          70.0.getVerticalSpacer(),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Payment Successful',
              style: CustomTextStyle.medium25.copyWith(
                  color: ColorManager.kPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          10.0.getVerticalSpacer(),
          Text(
            'Thank you for your purchase',
            style: CustomTextStyle.medium25.copyWith(
                color: ColorManager.kPrimaryColor, fontWeight: FontWeight.bold),
          ),
          70.0.getVerticalSpacer(),
          CustomButton(
              onPressed: () {
                context.pushNamedAndRemoveUntil(
                  Routes.mainScreen,
                  predicate: (route) => false,
                );
              },
              text: Text(
                'Back to home',
                style: CustomTextStyle.medium16
                    .copyWith(fontWeight: FontWeight.bold),
              ))
        ],
      ),
    ));
  }
}
