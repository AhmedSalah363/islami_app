import 'package:flutter/material.dart';
import 'package:islami_app/Utils/app_colors.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.04,
      ),
      child: Column(
        children: [
          TextField(
            style: TextStyle(color: AppColors.whiteColor),
            cursorColor: AppColors.primaryColor,
            decoration: InputDecoration(
              label: Text(
                'Sura Name',
                style: TextStyle(color: AppColors.primaryColor),
              ),
              hintText: 'Search',
              hintStyle: Theme.of(context).textTheme.headlineLarge,
              prefixIcon: Image.asset('assets/images/ic_search.png'),
              border: builtTextFieldBorder(),
              enabledBorder: builtTextFieldBorder(),
              focusedBorder: builtTextFieldBorder(),
            ),
          ),
        ],
      ),
    );
  }

  //----------------------------------------------------------------------
  OutlineInputBorder builtTextFieldBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
    );
  }
}
