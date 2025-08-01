import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_lms_flutter/components/custom_app_bar.dart';
import 'package:get_lms_flutter/components/custom_button.dart';
import 'package:get_lms_flutter/core/helper/route_helper.dart';
import 'package:get_lms_flutter/utils/dimensions.dart';
import 'package:get_lms_flutter/utils/images.dart';
import 'package:get_lms_flutter/utils/styles.dart';

class NotLoggedInScreen extends StatelessWidget {
  final String fromPage;
  const NotLoggedInScreen({Key? key, required this.fromPage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: fromPage,),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(Images.guest,
              width: MediaQuery.of(context).size.height*0.25,
              height: MediaQuery.of(context).size.height*0.25,
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.01),
            Text('sorry'.tr,
              style: ubuntuBold.copyWith(fontSize: MediaQuery.of(context).size.height*0.023, color: Theme.of(context).colorScheme.primary),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.01),
            Text('you_are_not_logged_in'.tr,
              style: ubuntuRegular.copyWith(fontSize: MediaQuery.of(context).size.height*0.0175, color: Theme.of(context).disabledColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.04),
            SizedBox(width: 200,
              child: CustomButton(buttonText: 'login_to_continue'.tr, height: 40, onPressed: () {
                Get.toNamed(RouteHelper.getSignInRoute(RouteHelper.main));
              }),
            ),

          ]),
        ),
      ),
    );
  }
}
