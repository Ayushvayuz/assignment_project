import 'package:assignment_project/features/dashboard_screen/data/model/recently_taken_model.dart';

class RecentlyTakenRapo{
  List<RecentlyTakenModel> fetchRecentlyData (){
    return [
      RecentlyTakenModel(
        title: "Social",
        tests: "Anxiety Test",
        imagePath: "assets/images/unsplash_4WYdpGych4c (1).jpg",
      ),
      RecentlyTakenModel(
        title: "Psychopathy",
        tests: "Test",
        imagePath: "assets/images/unsplash_4WYdpGych4c.jpg",
      ),
      RecentlyTakenModel(
        title: "Postpartum",
        tests: "Test",
        imagePath: "assets/images/unsplash_4WYdpGych4c (1).jpg",
      ),
      RecentlyTakenModel(
        title: "Socio",
        tests: "Test",
        imagePath: "assets/images/unsplash_4WYdpGych4c.jpg",
      ),
    ];
  }
}