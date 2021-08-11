import 'package:flutter/material.dart';
import 'package:trading_application/constants/constants.dart';
import 'package:trading_application/helper/data_loder.dart';
import 'package:trading_application/model/datum.dart';

class MarketWatch extends StatefulWidget {
  const MarketWatch({Key? key}) : super(key: key);

  @override
  _MarketWatchState createState() => _MarketWatchState();
}

class _MarketWatchState extends State<MarketWatch> {

  // late List<Datum> dataList;

  Future getData() async{
    List<Datum> dataList = await loadStockData();
    return dataList;
  }

  Widget _buildMarketWatch(BuildContext context,int index){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 200,
        color: black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Market Watch',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),),
              Text('View all', style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.bold, color: primary),),
            ],
          ),
          SizedBox(height: appPadding / 2,),
          FutureBuilder(
            future: getData(),
              builder: (context, snapshot) {
            if (snapshot.data == null) {
              return Text('No data');
            }
            else {
              return ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data.length,
                itemBuilder: (context,index){
                  return _buildMarketWatch(context,index);
                },
              );
            }
          })
        ],
      ),
    );
  }
}
