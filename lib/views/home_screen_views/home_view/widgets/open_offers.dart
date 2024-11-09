import 'package:flutter/material.dart';
import 'package:kaala_mandi/view_models/home_vm/home_vm.dart';

import 'offer_widget.dart';

class OpenOffers extends StatelessWidget {
  final HomeViewModel viewModel;
  final BoxConstraints constraints;
  const OpenOffers(
      {super.key, required this.viewModel, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: viewModel.categoryIcons.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                viewModel.gotoOfferDetails(viewModel.categoryIcons[index]);
              },
              child: Hero(
                  tag: 'offerDetails$index',
                  child: OfferWidget(
                    constraints: constraints,
                    index: index,
                    viewModel: viewModel,
                  )),
            );
          }),
    );
  }
}
