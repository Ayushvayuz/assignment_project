import 'package:assignment_project/Core/custom_appstrings.dart';
import 'package:assignment_project/Core/custom_colors.dart';
import 'package:assignment_project/Core/custom_gap.dart';
import 'package:assignment_project/Core/custom_textstyle.dart';
import 'package:assignment_project/features/dashboard_screen/data/model/categories_model.dart';
import 'package:assignment_project/features/dashboard_screen/data/model/recently_taken_model.dart';
import 'package:assignment_project/features/dashboard_screen/data/model/top_picks_model.dart';
import 'package:assignment_project/features/dashboard_screen/data/repository/category.dart';
import 'package:assignment_project/features/dashboard_screen/data/repository/recently_taken.dart';
import 'package:assignment_project/features/dashboard_screen/data/repository/top_picks.dart';
import 'package:assignment_project/features/dashboard_screen/presentation/widgets/custom_appbar.dart';
import 'package:assignment_project/features/dashboard_screen/presentation/widgets/custom_category.dart';
import 'package:assignment_project/features/dashboard_screen/presentation/widgets/custom_recent.dart';
import 'package:assignment_project/features/dashboard_screen/presentation/widgets/custom_top_picks.dart';
import 'package:assignment_project/features/dashboard_screen/presentation/widgets/header_text_widget.dart';
import 'package:assignment_project/features/dashboard_screen/presentation/widgets/recently_taken.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<CategoryModel> categoryList = [];
  List<TopPicksModel> topPicksList = [];
  List<RecentlyTakenModel> recentTakenModel = [];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    final categoryRepository = CategoryRepository();
    final topPicksRepository = TopPicksRepository();
    final recentlyTakenRepo = RecentlyTakenRapo();
    topPicksList = topPicksRepository.fetchTopPicks();
    categoryList = categoryRepository.fetchCategories();
    recentTakenModel = recentlyTakenRepo.fetchRecentlyData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: CustomAppBar(
        title: appbarTitle,
        actionButtons: [
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.question_circle_fill,
                  color: CustomColors.blue63)),
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.house_fill,
                  color: CustomColors.blue63))
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: gapH15, right: gapH15),
              child: CustomHeaderTexts(
                  discriptionText: headerNameText, nameText: discriptionText),
            ),
            Padding(
              padding: const EdgeInsets.only(top: gapH60),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: gapH40),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(gapH40)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: gapH60,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only( left: gapH20, right: gapH20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    categories,
                                    style: CustomTextStyle.poppins15.copyWith(
                                      fontSize: gapH13,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Text(
                                    viewAll,
                                    style: CustomTextStyle.poppins15.copyWith(
                                      fontSize: gapH10,
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: gapH18),
                            Padding(
                              padding: const EdgeInsets.only( left: gapH20, right: gapH20),
                              child: SizedBox(
                                height: gapH100,
                                child: ListView.builder(
                                    padding: const EdgeInsets.all(0),
                                    itemCount: categoryList.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, int index) {
                                      final category = categoryList[index];
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(right: gapH40),
                                        child: CategoriesWidget(
                                          image: category.image.toString(),
                                          subtitle: category.subtitle.toString(),
                                          title: category.title.toString(),
                                        ),
                                      );
                                    }),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only( left: gapH20, right: gapH20),
                              child: Text(
                                topPick,
                                textAlign: TextAlign.start,
                                style: CustomTextStyle.poppins15.copyWith(
                                    fontSize: gapH15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: gapH24,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: gapH20),
                              child: CarouselSlider.builder(
                                  itemCount: topPicksList.length,
                                  options: CarouselOptions(
                                      autoPlay: false,
                                      viewportFraction: 0.8,
                                      padEnds: false,
                                      autoPlayCurve: Curves.fastOutSlowIn,
                                      enlargeCenterPage: false,
                                      enableInfiniteScroll: false,
                                      aspectRatio: 16 / 4,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          _currentIndex = index;
                                        });
                                      },
                                      initialPage: 0),
                                  itemBuilder: (BuildContext context, int index,
                                      int pageViewIndex) {
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                        right: gapH15,
                                      ),
                                      child: TopPicksWidget(
                                        imagePath:
                                            topPicksList[index].imagePath,
                                        time: topPicksList[index].time,
                                        title: topPicksList[index].title,
                                        subtitle: topPicksList[index].subtitle,
                                      ),
                                    );
                                  }),
                            ),
                            const SizedBox(height: gapH10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                topPicksList.length,
                                (index) => AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  height: 4.0,
                                  width: _currentIndex == index ? 16.0 : 8.0,
                                  decoration: BoxDecoration(
                                    color: _currentIndex == index
                                        ? Colors.blue
                                        : Colors.grey,
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: gapH30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only( left: gapH20, right: gapH20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    recentlyTaken,
                                    textAlign: TextAlign.start,
                                    style: CustomTextStyle.poppins15.copyWith(
                                        fontSize: gapH15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    viewAll,
                                    style: CustomTextStyle.poppins15.copyWith(
                                      fontSize: gapH10,
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: gapH24,
                            ),
                            CarouselSlider.builder(
                                itemCount: recentTakenModel.length,
                                options: CarouselOptions(
                                  autoPlay: false,
                                  height: 200,
                                  viewportFraction: 0.4,
                                  padEnds: false,
                                  autoPlayCurve: Curves.fastOutSlowIn,
                                  enlargeCenterPage: false,
                                  enableInfiniteScroll: false,
                                  aspectRatio: 0.5,
                                ),
                                itemBuilder: (BuildContext context, int index,
                                    int pageViewIndex) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                      right: gapH15,
                                    ),
                                    child: RecentlyTakenWidget(
                                      imagePath:
                                          recentTakenModel[index].imagePath,
                                      tests: recentTakenModel[index].tests,
                                      title: recentTakenModel[index].title,
                                    ),
                                  );
                                }),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: gapH35, right: gapH35),
                    child: RecentWidget(
                      subTitle: selfDiscovery,
                      title: recentText,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
