import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingmodel/blocs/home.bloc.dart';
import 'package:shoppingmodel/ui/shared/widgets/category/category-list.widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeBloc>.value(
          value: HomeBloc(),
        ),
      ],
      child: Main(),
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Model',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = Provider.of<HomeBloc>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.account_circle,
          color: Colors.white,
          size: 55,
        ),
        title: Text(
          "Olá Nelson",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.black87,
              size: 35,
              semanticLabel: "Sair",
            ),
            onPressed: () {
              print("sair");
            },
          ),
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            displayAccoutList(),

            Text("Categorias",
                style: TextStyle(color: Colors.white, fontSize: 22)),
            SizedBox(
              height: 10,
            ),
            CategoryList(
              categories: bloc.categories,
            ),
            SizedBox(
              height: 10,
            ),
            // CardWidget(),
          ],
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   elevation: 0.0,
      //   child: Container(
      //     margin: EdgeInsets.symmetric(vertical: 20.0),
      //     child: Row(
      //       mainAxisSize: MainAxisSize.max,
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: <Widget>[
      //         FlatButton(
      //           padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 30.0),
      //           shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(0.0)),
      //           color: Color(0xFF015FFF),
      //           // borderSide: BorderSide(color: Color(0xFF015FFF), width: 1.0),
      //           onPressed: () {},
      //           child: Text("ACTIVITY"),
      //         ),
      //         OutlineButton(
      //           padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 28.0),
      //           shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(0.0)),
      //           borderSide: BorderSide(color: Color(0xFF015FFF), width: 1.0),
      //           onPressed: () {},
      //           child: Text("STATEMENTS"),
      //         ),
      //         OutlineButton(
      //           padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 28.0),
      //           shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(0.0)),
      //           borderSide: BorderSide(color: Color(0xFF015FFF), width: 1.0),
      //           onPressed: () {},
      //           child: Text("DETAILS"),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

displayAccoutList() {
  return Container(
    margin: EdgeInsets.all(2.0),
    child: Column(
      children: <Widget>[
        accountItems("Trevello App", r"+ $ 4,946.00", "28-04-16", "credit",
            oddColour: const Color(0xFFF7F7F9)),
        accountItems("Creative Studios", r"+ $ 5,428.00", "26-04-16", "credit"),
        accountItems("Amazon EU", r"+ $ 746.00", "25-04-216", "Payment",
            oddColour: const Color(0xFFF7F7F9)),
        accountItems(
            "Creative Studios", r"+ $ 14,526.00", "16-04-16", "Payment"),
        accountItems("Book Hub Society", r"+ $ 2,876.00", "04-04-16", "Credit",
            oddColour: const Color(0xFFF7F7F9)),
      ],
    ),
  );
}

Container accountItems(
        String item, String charge, String dateString, String type,
        {Color oddColour = Colors.white}) =>
    Container(
      decoration: BoxDecoration(
          color: oddColour, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(item, style: TextStyle(fontSize: 16.0)),
              Text(charge, style: TextStyle(fontSize: 16.0))
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(dateString,
                  style: TextStyle(color: Colors.grey, fontSize: 14.0)),
              Text(type, style: TextStyle(color: Colors.grey, fontSize: 14.0))
            ],
          ),
        ],
      ),
    );
