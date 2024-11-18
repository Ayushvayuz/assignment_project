import 'package:assignment_project/features/dashboard_screen/data/model/categories_model.dart';

class CategoryRepository {
  List<CategoryModel> fetchCategories() {
    return [
      CategoryModel(
        title: "Anxiety",
        subtitle: "3 quizes",
        image: "assets/images/add_reaction_24dp_63ABFD_FILL0_wght400_GRAD0_opsz24.svg",
      ),
      CategoryModel(
        title: "Depression",
        subtitle: "5 quizes",
        image: "assets/images/folded_hands_24dp_63ABFD_FILL0_wght400_GRAD0_opsz24.svg",
      ),
      CategoryModel(
        title: "ADHD",
        subtitle: "4 quizes",
        image: "assets/images/sentiment_dissatisfied_24dp_63ABFD_FILL0_wght400_GRAD0_opsz24.svg",
      ),
      CategoryModel(
        title: "Autism",
        subtitle: "10 quizes",
        image: "assets/images/thunderstorm_24dp_63ABFD_FILL0_wght400_GRAD0_opsz24.svg",
      ),
    ];
  }
}
