import 'package:car_rental/core/utils/app_router.dart';
import 'package:car_rental/features/onboarding/data/models/onboarding_model.dart';
import 'package:car_rental/features/onboarding/presentation/view/widget/custom_elevated_botton.dart';
import 'package:car_rental/features/onboarding/presentation/view/widget/custom_slider.dart';
import 'package:car_rental/features/onboarding/presentation/view/widget/custom_text_button.dart';
import 'package:car_rental/features/onboarding/presentation/view/widget/onboarding_content.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController _pageController;
  int pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: onboardingList.length,
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    pageIndex = index;
                  });
                },
                itemBuilder: (context, index) => OnBoardingContent(
                  title: onboardingList[index].title,
                  image: onboardingList[index].image,
                  body: onboardingList[index].body,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onboardingList.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: CustomSlider(
                            isActive: index == pageIndex,
                          ),
                        )),
              ],
            ),
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomElevatedButton(onPressed: () {
                    pageIndex++;
                    if (pageIndex > onboardingList.length - 1) {
                      GoRouter.of(context).push(AppRouter.loginView);
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(microseconds: 300),
                        curve: Curves.ease,
                      );
                    }
                  }),
                  const CustomTextButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
