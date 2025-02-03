import 'package:calculater/textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculateerbottno extends StatelessWidget {
  Calculateerbottno({super.key, required this.btntext, required this.function, this.fex });
  final Function function;
  final int? fex;

  String? btntext = '';

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: fex!,

      child: Container(
        margin: EdgeInsets.all(5),
        color: Colors.black,
        child: ElevatedButton(

          onPressed:()=>function(btntext),
          child: Text(
            btntext!,
            style: TextStylee.txtstyle,
          ),
        ),
      ),
    );
  }
}

/*


backapp(int sec){
  print("begin");
  sleep(Duration(seconds: sec));
  print("end")
  ;
}
//mothed snackbar button
ElevatedButton buildElevatedButtonSnackBar(BuildContext context) {
  return ElevatedButton(onPressed: (){
    final sn=SnackBar(content: Text("text massege "),
      duration: Duration(seconds: 10),
      backgroundColor: Colors.red,
      action: SnackBarAction(
          textColor: Colors.blueAccent,
          label: "undo!", onPressed: (){
        setState(() {
          str="appbar";
        });
      }),
    );

    ScaffoldMessenger.of(context).showSnackBar(sn);
  }, child:Text("show text "));
}

//mothed selectabletext
Column selectabletext() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const  SelectableText(

        "text widget cut name ",

        toolbarOptions:const ToolbarOptions(
            copy: true,
            cut: true
        ),
        showCursor: true,


      ),
      Container(
        child: Text("yyyyyyyyyy"),
      )
    ],
  );
}

// mothed buttonShowDialog
ElevatedButton buildElevatedButtonShowDialog(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      // AlertDialog alart = ;
      buildShowDialog(context);
    },
    child:const Text("click"),
  );
}

// mothed showDialog name masseg
Future<dynamic> buildShowDialog(BuildContext context) {
  return showDialog(
    barrierColor: Colors.deepPurpleAccent.withOpacity(0.4) ,
    barrierDismissible: false,
    context: context,
    builder: (ctx) {
      return AlertDialog(
        backgroundColor: Colors.red,
        title:const Text("dialogalert title "),
        content: Container(
          height: 100,
          child: Column(
            children: [
              const   Divider(
                color: Colors.black,
              ),
              const   Text("dailog alert show massag !"),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child:const Text("close")),
              )
            ],
          ),
        ),
      );
    },
  );
}

//mothed widget in custom useing on appbar
CustomScrollView buildCustomScrollView() {
  return CustomScrollView(
    slivers: [buildSliverAppBar(), buildSliverList()],
  );
}

//mothed widget sliverlist on body
SliverList buildSliverList() {
  return SliverList(
    delegate: SliverChildListDelegate([const Text("body")]),
  );
}

// mothed widget sliver appbar  use full appbar
SliverAppBar buildSliverAppBar() {
  return SliverAppBar(
    collapsedHeight: 100,
    centerTitle: true,
    flexibleSpace: Container(
      decoration:const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.deepPurpleAccent,
            Colors.pink,
            Colors.deepPurpleAccent
          ])),
    ),
    leading: Row(
      children: [
        Padding(
            padding:const EdgeInsets.only(left: 1),
            child: IconButton(
                onPressed: () {}, icon:const Icon(Icons.account_circle))),
        Expanded(
          child: Padding(
              padding:const EdgeInsets.only(left: 1),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.account_circle))),
        )
      ],
    ),
    title:const Text(
      "flutter damo",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    ),
    actions: [
      Padding(
          padding:const EdgeInsets.only(left: 1),
          child:
          IconButton(onPressed: () {}, icon:const Icon(Icons.account_circle))),
      Padding(
          padding:const  EdgeInsets.only(left: 1),
          child:
          IconButton(onPressed: () {}, icon:const Icon(Icons.account_circle))),
    ],
  );
}

// mothed botton widget and import mothed buildRichText
Widget buildElevatedButton() {
  return ElevatedButton(
    onPressed: () {
      Fluttertoast.showToast(
          msg: "This is Center Short Toast",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 10,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    },
    child: buildRichText(),
  );
}

//mothed and import widget buildtextSpan
Widget buildRichText() {
  return RichText(
    text: buildTextSpan(),
  );
}

//mothed and build widget textspan
TextSpan buildTextSpan() {
  return const TextSpan(children: [
    TextSpan(
        text: "pink",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.pinkAccent,
        )),
    TextSpan(
        text: "/",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.black,
        )),
    TextSpan(
        text: "amber",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.amber,
        ))
  ]);
}
*/
