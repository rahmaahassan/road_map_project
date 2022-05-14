import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:road_map_project/domain/news_model.dart';

import '../../../infrastructure/dio_helper.dart';
import 'states.dart';

class NewsCubit extends Cubit<NewsStates>
{
  NewsCubit() : super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  void getNews() async
  {
    emit(NewsLoadingState());

    List <NewsModel>? news = await DioHelper.getData();
    if (news != null) {
      emit(NewsSuccessState(news));
    } else {
      emit(NewsErrorState("error"));
    }

  //   DioHelper.getData(
  //     url: 'v2/top-headlines',
  //     query:
  //     {
  //       'country':'eg',
  //       'category':'technology',
  //       'apiKey':'7f8dbc3bbd5047eaa5d169c1a8dbcb0e',
  //     },
  //   ).then((value)
  //   {
  //     //print(value.data['articles'][0]['title']);
  //     news = value.data['articles'];
  //     print(news[0]['title']);
  //
  //     emit(NewsSuccessState());
  //   }).catchError((error){
  //     print(error.toString());
  //     emit(NewsErrorState(error.toString()));
  //   });
  }

}