import 'package:bookly/Features/Home/presentation/Widgets/BestSellerListview_Item.dart';
import 'package:flutter/widgets.dart';

class BestSellerListView_Builder extends StatelessWidget {
  const BestSellerListView_Builder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListView_Item(),
        );
      },
    );
  }
}
