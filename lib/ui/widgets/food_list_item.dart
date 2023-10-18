part of 'widgets.dart';

class FoodListItem extends StatelessWidget {
  final Food food;
  final double itemWidth;

  const FoodListItem({
    super.key,
    required this.food,
    required this.itemWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          margin: const EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: NetworkImage(food.picturePath), fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          width: itemWidth - 182, // (60 + 12 + 110)
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                food.name,
                style: blackFontStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w400),
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
              Text(
                NumberFormat.currency(
                  symbol: 'IDR ',
                  decimalDigits: 0,
                  locale: 'id-ID',
                ).format(food.price),
                style: greyFontStyle.copyWith(
                    fontSize: 13, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        RatingStars(rate: food.rate),
      ],
    );
  }
}
