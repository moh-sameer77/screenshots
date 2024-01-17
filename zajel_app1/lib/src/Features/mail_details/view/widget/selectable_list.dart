import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../config/theme/theme.dart';

class SelectableList<T> extends StatelessWidget {
  final List<T> items;
  final Function(T) onItemSelected;
  final List<T> selectedItems;

  const SelectableList({super.key, 
    required this.items,
    required this.onItemSelected,
    required this.selectedItems,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          title: Container(
            color: selectedItems.contains(item)
                ? Colors.blue.withOpacity(0.3)
                : null,
            height: 50,
            width: 130,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                item.toString(),
                style: GoogleFonts.poppins(
                  color: AppTheme.lightAppColors.mainTextcolor,
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          onTap: () {
            onItemSelected(item);
          },
        );
      },
    );
  }
}
