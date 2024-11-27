import 'package:flutter/material.dart';

import '../../../../../view_models/create_sell_ad/create_sell_ad_vm.dart';

void showCarInfoPicker(
    {required BuildContext context,
    required List categoryList,
    required CreateSellAdViewModel viewModel}) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Select Car Info',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: categoryList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(categoryList[index]),
                    onTap: () {
                      viewModel.selectedCategory.value = categoryList[index];
                      print("Clicked on ${categoryList[index]}");
                      Navigator.pop(context); // Close the modal
                    },
                  );
                },
              ),
            ),
          ],
        ),
      );
    },
  );
}
