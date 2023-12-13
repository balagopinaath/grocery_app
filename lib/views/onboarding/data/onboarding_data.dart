import 'package:grocery_app/core/constants/app_images.dart';
import 'package:grocery_app/views/onboarding/data/onboarding_model.dart';

class OnboardingData {
  static List<OnboardingModel> items = [
    OnboardingModel(
      imageUrl: AppImages.onboarding1,
      headline: 'Browse all the category',
      description:
          'In aliquip aute exercitation ut et nisi ut mollit. Deserunt dolor elit pariatur aute .',
    ),
    OnboardingModel(
      imageUrl: AppImages.onboarding2,
      headline: 'Amazing Discounts & Offers',
      description:
          'In aliquip aute exercitation ut et nisi ut mollit. Deserunt dolor elit pariatur aute .',
    ),
    OnboardingModel(
      imageUrl: AppImages.onboarding3,
      headline: 'Delivery in 30 Min',
      description:
          'In aliquip aute exercitation ut et nisi ut mollit. Deserunt dolor elit pariatur aute .',
    ),
  ];
}
