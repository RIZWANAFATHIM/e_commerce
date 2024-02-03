import 'package:e_commerce/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:flutter/material.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: Text("4.1", style: Theme.of(context).textTheme.displayLarge,)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingProgressIndicator(value: 1, text: '0.3',),
              RatingProgressIndicator(value: 2, text: '0.2',),
              RatingProgressIndicator(value: 3, text: '0.2',),
              RatingProgressIndicator(value: 4, text: '1.1',),
              RatingProgressIndicator(value: 5, text: '0.8',),
            ],
          ),
        )
      ],
    );
  }
}