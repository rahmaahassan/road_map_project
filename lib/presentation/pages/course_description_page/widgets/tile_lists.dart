part of 'widgets.dart';

class TileList extends StatelessWidget {

  final CourseModel course = CourseModel(
      id: "1",
      title: ApplicationTextValue.STEP_TITLE,
      image: PresentationAssetPath.FLUTTER_IMAGE,
      categoryId: ApplicationTextValue.CATEGORY_NAME,
      description: ApplicationTextValue.HEADER_TEXT,
      steps: [
        StepModel(
          name: ApplicationTextValue.STEP_TITLE,
          id: "y",
          books: [LinkModel(
            title: ApplicationTextValue.BOOKS_LINK,
            url: "https://www.raywenderlich.com/books/dart-apprentice/v1.1",
          ),
          ],
          courses: [LinkModel(
            title: ApplicationTextValue.COURSE_LINK,
            url: "https://www.tutorialspoint.com/flutter/flutter_introduction_to_dart_programming.htm",
          ),
          ],
        ),
        StepModel(
          name: ApplicationTextValue.STEP_TITLE,
          id: "y",
          books: [LinkModel(
            title: ApplicationTextValue.BOOKS_LINK,
            url: "https://www.raywenderlich.com/books/dart-apprentice/v1.1",
          ),
          ],
          courses: [LinkModel(
            title: ApplicationTextValue.COURSE_LINK,
            url: "https://www.tutorialspoint.com/flutter/flutter_introduction_to_dart_programming.htm",
          ),
          ],
        ),
        StepModel(
          name: ApplicationTextValue.STEP_TITLE,
          id: "y",
          books: [LinkModel(
            title: ApplicationTextValue.BOOKS_LINK,
            url: "https://www.raywenderlich.com/books/dart-apprentice/v1.1",
          ),
          ],
          courses: [LinkModel(
            title: ApplicationTextValue.COURSE_LINK,
            url: "https://www.tutorialspoint.com/flutter/flutter_introduction_to_dart_programming.htm",
          ),
          ],
        ),
      ]
  );

  TileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) =>
          TimelineTile(
            isFirst: index == 0,
            isLast: index == course.steps.length - 1,
            indicatorStyle: IndicatorStyle(
              height: 50.h,
              width: 50.w,
              indicatorXY: 0.45,
              indicator: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ApplicationColor.primaryColor,
                    border: Border.all(color: ApplicationColor.primaryColor)),
                child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: ApplicationColor.textTitleColor)),
                    child: const Icon(Icons.apps,
                        color: ApplicationColor.textTitleColor)),
              ),
            ),
            endChild: ExpansionTile(
              trailing: const SizedBox(),
              title: Text(
                course.steps[index].name,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: ApplicationFont.bold,
                  color: ApplicationColor.textTitleColor,
                ),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0.w),
                  child: Column(
                    children: [
                      Container(
                        height: 149.h,
                        width: 266.w,
                        decoration: BoxDecoration(
                          color: ApplicationColor.buttonBorderColor,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ApplicationTextValue.COURSES_BOK,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: ApplicationFont.medium,
                                  color: ApplicationColor.textSubTitleColor,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                          children: course.steps![index].courses.map<Widget>((stepCourse) => InkWell(
                                            onTap: onCourseTapped,
                                            child: Text(
                                              stepCourse.title,
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: ApplicationFont
                                                    .regular,
                                                decoration: TextDecoration
                                                    .underline,
                                                color: ApplicationColor
                                                    .textSubTitleColor,
                                              ),
                                            ),
                                          )).toList(),
                                        ),

                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 9.0.h,
                      ),
                      Container(
                        height: 149.h,
                        width: 266.w,
                        decoration: BoxDecoration(
                          color: ApplicationColor.buttonBorderColor,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ApplicationTextValue.BOOKS_BOK,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: ApplicationFont.medium,
                                  color: ApplicationColor
                                      .textSubTitleColor,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: course.steps[index].books.map<Widget>((stepCourse) => InkWell(
                                    onTap: onCourseTapped,
                                    child: Text(
                                      stepCourse.title,
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: ApplicationFont
                                            .regular,
                                        decoration: TextDecoration
                                            .underline,
                                        color: ApplicationColor
                                            .textSubTitleColor,
                                      ),
                                    ),
                                  )).toList(),
                                ),

                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
      itemCount: course.steps.length,
    );
  }

  void onCourseTapped() {
    // return launch(
    //    "https://www.tutorialspoint.com/flutter/flutter_introduction_to_dart_programming.htm"
    //  );
  }

  /// TODO

  void onBookTapped() {}

  /// TODO

  void onPlaylistTapped() {}

/// TODO

}