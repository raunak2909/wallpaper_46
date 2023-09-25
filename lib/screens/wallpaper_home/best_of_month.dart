import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/wallceno_bloc.dart';
import 'wallpaper_screens.dart';

class Best_Of_Month extends StatefulWidget {
  @override
  State<Best_Of_Month> createState() => _Best_Of_MonthState();
}

class _Best_Of_MonthState extends State<Best_Of_Month> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<WallcenoBloc>().add(GetTradingWallpaper());
  }

  // List<dynamic> bestofmonth;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WallcenoBloc, WallcenoState>(
      builder: (context, state) {
        if (state is WallcenoLodingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is WallcenoErrorState) {
          return Center(
            child: Text(state.errorMes),
          );
        } else if (state is WallcenoLodadeState) {
          return SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: state.mdata.photos!.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WallpaperScreen(
                              img: state.mdata.photos![index].src!.portrait!),
                        ));
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                state.mdata.photos![index].src!.portrait!),
                            fit: BoxFit.fill),
                       
                        borderRadius: BorderRadius.circular(10)),
                  ),
                );
              },
            ),
          );
        }
        return Container();
      },
    );
  }
}
