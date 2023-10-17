part of 'widgets.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 210,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(spreadRadius: 3, blurRadius: 15, color: Colors.black26),
        ],
      ),
      child: const Column(
        children: [
          RatingStars(
            rate: 3.3,
          ),
        ],
      ),
    );
  }
}
