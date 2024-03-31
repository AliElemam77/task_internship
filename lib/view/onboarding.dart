import 'package:flutter/material.dart';
import 'package:task/view/home_page.dart';
import 'package:task/widgets/onboarding_card.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  static final PageController _pageController = PageController(initialPage: 0);
  final List<Widget> _onBoardingPages = [
    OnBoardingCard(
      onTap: () {
        _pageController.animateToPage(1,
            duration: Durations.long1, curve: Curves.linear);
      },
      buttonText: 'التالي',
      image: 'assets/images/onboarding1.png',
      title: 'الصيدليات',
      subTitle:
          'خدمة عيادة توفرلك العديد من الصيدليات \nالتي يستطيع من خلالها المريض الشراء\nأو الأستعلام عن الدواء من خلال \nخدمة24 ساعة.  ',
    ),
    OnBoardingCard(
        onTap: () {
          _pageController.animateToPage(2,
              duration: Durations.long1, curve: Curves.linear);
        },
        buttonText: 'التالي',
        image: 'assets/images/onboarding2.png',
        title: 'المستلزمات الطبية',
        subTitle:
            'خدمة عيادة توفرلك العديد من المستلزمات\n التي يستطيع من خلالها المريض الشراء\n أو الأستعلام عنه من خلال خدمة\n 24 ساعة.  '),
    OnBoardingCard(
      onTap: () {
        _pageController.animateToPage(3,
            duration: Durations.long1, curve: Curves.linear);
      },
      buttonText: 'التالي',
      image: 'assets/images/onboarding3.png',
      title: 'حجز العيادات و المستشفيات',
      subTitle:
          'يوفر آلية تنفيذ الحجوزات بسلاسة شديدة،\nو ما يتبع الحجز من خطوات سواء لتأكيد \nالحجز. ',
    ),
    OnBoardingCard(
      onTap: () {
        _pageController.animateToPage(4,
            duration: Durations.long1, curve: Curves.linear);
      },
      buttonText: 'ابدأ التطبيق',
      image: 'assets/images/onboarding4.png',
      title: 'الطوارئ و الزيارة المنزلية',
      subTitle:
          'يوفر أبليكشن عيادة مرونة في الزيارات،\nو الحجوزات المنزلية،من حيث كل شيء\nو خدمة 24 ساعة.',
    ),
    OnBoardingCard(
      onTap: () {
        _pageController.animateToPage(5,
            duration: Durations.long1, curve: Curves.linear);
      },
      buttonText: 'التالي',
      image: 'assets/images/onboarding5.png',
      title: 'المنصة التعليمية الطبية',
      subTitle:
          'خدمة عيادة توفرلك العديد من\n الفيديوهات التعليمية التي تساعدك في\n تعلم كل ما هو مفيد في المجال الطبي.',
    ),
    const HomePage(),
  ];
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: _onBoardingPages,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
