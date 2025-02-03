import 'package:calculater/calculateerbottno.dart';
import 'package:calculater/statemanagenemt.dart';
import 'package:calculater/textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Calculater extends StatefulWidget {
  Calculater({super.key, this.callback});

  final Function? callback;

  @override
  State<Calculater> createState() => _CalculaterState();
}

class _CalculaterState extends State<Calculater> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.teal,
            height: 70,
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  "${Provider.of<StateManagenemt1>(context).histroy}",
                  style: TextStylee.txtstyle,
                ),
                Divider(
                  height: 1,
                  color: Colors.black,
                ),
                Text(
                  Provider.of<StateManagenemt1>(context).pex,
                  style: TextStylee.txtstyle,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Calculateerbottno(
                fex: 1,
                btntext: "Ac",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
              Calculateerbottno(
                fex: 1,
                btntext: "C",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
              Calculateerbottno(
                fex: 1,
                btntext: "/",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
              Calculateerbottno(
                fex: 1,
                btntext: "%",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Calculateerbottno(
                fex: 1,
                btntext: "1",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
              Calculateerbottno(
                fex: 1,
                btntext: "2",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
              Calculateerbottno(
                fex: 1,
                btntext: "3",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
              Calculateerbottno(
                fex: 1,
                btntext: "x",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Calculateerbottno(
                fex: 1,
                btntext: "4",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
              Calculateerbottno(
                fex: 1,
                btntext: "5",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
              Calculateerbottno(
                fex: 1,
                btntext: "6",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
              Calculateerbottno(
                fex: 1,
                btntext: "+",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Calculateerbottno(
                fex: 1,
                btntext: "7",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
              Calculateerbottno(
                fex: 1,
                btntext: "8",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
              Calculateerbottno(
                fex: 1,
                btntext: "9",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
              Calculateerbottno(
                fex: 1,
                btntext: "-",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Calculateerbottno(
                fex: 2,
                btntext: "0",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
              Calculateerbottno(
                fex: 1,
                btntext: ".",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
              Calculateerbottno(
                fex: 1,
                btntext: "=",
                function: Provider.of<StateManagenemt1>(context).callback!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
