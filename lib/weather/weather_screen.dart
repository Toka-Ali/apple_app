import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';


class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit2()
        ..getCurrentWeatherData(),
      child: BlocConsumer<AppCubit2, AppStates2>(
        listener: (context, state) {},
        builder: (context, state) {
          var width = MediaQuery.of(context).size.width;
          var height = MediaQuery.of(context).size.height;
          AppCubit2 cubit = AppCubit2.get(context);
          TextEditingController cityController = TextEditingController();
          return Scaffold(
              appBar: AppBar(
              backgroundColor: Color.fromRGBO(6, 31, 113, 1.0),
              title: const Text("Weather"),),
            body: state is! GetCurrentWeatherLoadingState
                ? Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: height * 0.35,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/1.jpg"),
                      colorFilter: ColorFilter.mode(
                          Colors.black38, BlendMode.darken),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.1,
                      ),
                      TextFormField(
                        controller: cityController,
                        onFieldSubmitted: (value) {
                          cubit.getCurrentWeatherData(city: value);
                        },
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: "Search",
                          labelStyle:
                          const TextStyle(color: Colors.white),
                          suffixIcon: IconButton(
                            onPressed: () {
                              cubit.getCurrentWeatherData(
                                  city: cityController.text);
                            },
                            icon: const Icon(
                              Icons.search_outlined,
                              color: Colors.white,
                            ),
                          ),
                          iconColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            const BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            const BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            const BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
                      ),
                      Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Text(
                                (cubit.currentWeatherModel!.name) != null
                                    ? cubit.currentWeatherModel!.name!
                                    .toUpperCase()
                                    : "",
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                DateFormat()
                                    .add_MMMMEEEEd()
                                    .format(DateTime.now()),
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Divider(),
                              SizedBox(
                                height: height * 0.03,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        (cubit.currentWeatherModel!
                                            .weather !=
                                            null)
                                            ? "${cubit.currentWeatherModel!.weather![0].description}"
                                            : "",
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption!
                                            .copyWith(
                                          fontSize: 22,
                                        ),
                                      ),
                                      Text(
                                        "${((cubit.currentWeatherModel!.main!.temp)! - 273.15).round()}\u2103",
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption!
                                            .copyWith(
                                            fontSize: 36,
                                            fontWeight:
                                            FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "min : ${((cubit.currentWeatherModel!.main!.tempMin)! - 273.15).round()}\u2103 / ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption!
                                                .copyWith(
                                              fontSize: 14,
                                            ),
                                          ),
                                          Text(
                                            "max : ${((cubit.currentWeatherModel!.main!.tempMax)! - 273.15).round()}\u2103",
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption!
                                                .copyWith(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/1.jpg",
                                        width: 100,
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        "wind : ${cubit.currentWeatherModel!.wind!.speed} km/h",
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption!
                                            .copyWith(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),

                      SizedBox(
                        height: height * 0.04,
                      ),
                      // ListView.separated(
                      //   scrollDirection: Axis.horizontal,
                      //     itemBuilder: (context,index)=>buildItem(),
                      //     separatorBuilder: (context,index)=>const VerticalDivider(),
                      //     itemCount: cubit.fiveCities.length,
                      // ),

                    ],
                  ),
                ),
              ],
            )
                : const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }

  Widget buildItem() => Container(
    width: 100,
    height: 100,
    color: Colors.red,
  );
}
