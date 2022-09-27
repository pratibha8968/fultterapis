import 'package:flutter/material.dart';
import 'package:fristproject/apirespository.dart';
import 'package:fristproject/response_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ResponseModel ? productmodel;


  @override
  void initState() {

    super.initState();
    apicall();

  }
  apicall(){
    ApiRepository.getUser(id: '1').then((value) {
      productmodel = value;
      print("productmodel${productmodel?.toJson()}");
      if(mounted) setState((){});

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Column(
        children: [
        Text(
        "${productmodel?.total.toString()}",
    style: TextStyle(color: Colors.red),
    ),
    Expanded(
    child: ListView.builder(
    shrinkWrap: true,
    itemCount: productmodel?.products?.length ?? 0,
    itemBuilder: (context, index) {
    Products? item = productmodel?.products![index];

    return Column(
    children: [
    Text(
    "${item?.description ?? ""},",
    style: TextStyle(color: Colors.green),
    ),
    Container(
    height: 150.0,
    width: MediaQuery.of(context).size.width,
    child: ListView.builder(
        itemCount: item?.images?.length ?? 0,
        itemBuilder: (context, index1) {
          return Image.network(
              item?.images![index1] ?? "");
        }),
    )
    ],
    );
    }))
        ],
        ),
        ),

    );
  }
}
