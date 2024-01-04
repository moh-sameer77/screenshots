import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zajel_app1/src/View/on_board/widgets/on_boarding_text_widget.dart';
import 'package:zajel_app1/src/config/theme/sizes.dart';


class LoginExternal extends StatelessWidget {
  const LoginExternal({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 120.w,
            ),
            SvgPicture.asset("assets/Google.svg"),
            SizedBox(
              width: 0.2 * context.screenWidth,
            ),
            SvgPicture.asset("assets/Apple.svg"),
          ],
        )
        
      ],
    );
  }
}
