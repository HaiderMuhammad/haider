

import 'package:flutter/material.dart';
import 'helper/sqldb.dart';


class Models extends StatefulWidget {
  const Models({Key? key}) : super(key: key);

  @override
  State<Models> createState() => _ModelsState();
}

class _ModelsState extends State<Models> {

  SqlDb sqlDb = SqlDb();

  Future<List<Map>> readData() async{
    List<Map> response = await sqlDb.readData("SELECT * FROM tableUser");
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(
          children: [
            FutureBuilder(
                future: readData(),
                builder: (BuildContext context ,AsyncSnapshot<List<Map>> snapshot){
                  if (snapshot .hasData){
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context , i){
                          return Text("${snapshot.data![i]}");

                        });
                  }
                  return const Center(child: CircularProgressIndicator());
                })
          ],
        ),
      ),
    );
  }
}
