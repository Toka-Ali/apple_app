import 'package:farghaly/weather/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../screens/bloc/states.dart';
import '../dio/dio_helper.dart';
import '../model.dart';


class AppCubit2 extends Cubit<AppStates2>{
  AppCubit2():super(InitState());

  static AppCubit2 get(context)=>BlocProvider.of(context);
  CurrentWeatherModel? currentWeatherModel;
  CurrentWeatherModel? currentWeatherModel2;
  List fiveCities=[];

  void getCurrentWeatherData({
    String city="beni suef",
  }){
    emit(GetCurrentWeatherLoadingState());
    DioHelper.getData(url: "/weather",
        query: {
          "q":city,
          "appid":"431e6803438bfa58110d09158e0e6987",
        }).then((value) {
      currentWeatherModel=CurrentWeatherModel.fromJson(value.data);
      print(currentWeatherModel!.name);

      emit(GetCurrentWeatherSuccessState());

    }).catchError((error){
      print(error.toString());
      emit(GetCurrentWeatherErrorState());

    });
  }

}