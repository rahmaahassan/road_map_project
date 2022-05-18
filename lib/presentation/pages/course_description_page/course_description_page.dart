import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:road_map_project/presentation/theme/fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../helpers/presentation_helpers.dart';
import '../../theme/colors.dart';
import '../shared_widgets/shared_widgets.dart';
import 'widgets/widgets.dart';

class CourseDescriptionPage extends StatelessWidget {
  static const routeName = '/course-description-page';

  const CourseDescriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationAppBar(
        title: ApplicationTextValue.COURSE_NAME,
        widget: Padding(
          padding: EdgeInsets.only(left: 13.w),
          child: const ApplicationBackButton(
            boxColor: ApplicationColor.navDisActiveBottom,
            arrowColor: ApplicationColor.primaryColor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.r),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ApplicationTextValue.HEADER_TEXT,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: ApplicationFont.regular,
                  color: ApplicationColor.textSubTitleColor,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              TileList()
            ],
          ),
        ),
      ),
    );
  }
}