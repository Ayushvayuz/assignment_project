
import 'package:assignment_project/features/dashboard_screen/data/model/top_picks_model.dart';

class TopPicksRepository {
  List<TopPicksModel> fetchTopPicks() {
    return [
      TopPicksModel(
        title: "Personality Test",
        subtitle: "Discover your unique characteristics\n& understand yourself better.",
        imagePath: "assets/images/unsplash_4WYdpGych4c.jpg",
        time:"10 mins" ,
      ),
      TopPicksModel(
        title: "Personality Test",
        subtitle: "Discover your unique characteristics\n& understand yourself better.",
        imagePath: "assets/images/unsplash_4WYdpGych4c (1).jpg",
        time:"1 hr" ,
      ),
      TopPicksModel(
        title: "Personality Test",
        subtitle: "Discover your unique characteristics\n& understand yourself better.",
        imagePath: "assets/images/unsplash_4WYdpGych4c.jpg",
        time: "4 mins" ,
      ),
      TopPicksModel(
        title: "Personality Test",
        subtitle: "Discover your unique characteristics\n& understand yourself better.",
        imagePath: "assets/images/unsplash_4WYdpGych4c (1).jpg",
        time:"11 hrs" ,
      ),
    ];
  }
}
