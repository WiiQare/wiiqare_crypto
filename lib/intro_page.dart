import 'package:flutter/material.dart';

import 'package:flutter/material.dart';


import 'package:wiiqare_crypto/app_colors.dart';
import 'package:wiiqare_crypto/text_styles.dart';



class IntroPage extends StatefulWidget {
  static const routeName = '/login';
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  get image => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.amberAccent,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [lightBlueStart, lightBlueEnd],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: MediaQuery.of(context).size.height / 1.10,
                  right: MediaQuery.of(context).size.width / 5,
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(45 / 360),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        color: rectColorLightBlue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height / 1.20,
                  right: MediaQuery.of(context).size.width / 13,
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(45 / 360),
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                        color: rectColorLightBlue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height / 1.4,
                  right: MediaQuery.of(context).size.width / 4.8,
                  child: RotationTransition(
                    turns: AlwaysStoppedAnimation(45 / 360),
                    child: Container(
                      width: 75,
                      height: 75,
                      decoration: const BoxDecoration(
                        color: rectColorLightBlue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.height / 2.4,
                  left: MediaQuery.of(context).size.width / 1.33,
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: rectColorLightBlue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(150),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  
                // Image.asset('assets/images/logo.svg'),
                 
                  SizedBox(height: 25),
                  Text('Welcome,', style: welcomeStyle),
                  Text('Start by creating your W-Crypto Wallet', style: welcomeSubStyle),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              decoration: const BoxDecoration(
                color: blueMain,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 
                 Container(
                    child: RaisedButton(
                      onPressed: () => {
                          Navigator.of(context).pushNamed('/create')
                               
                              },
                    
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [yellowStart, yellowEnd],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Create new wallet',
                            style: loginButtonLabel,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    child: RaisedButton(
                      onPressed: () => {
                          Navigator.of(context).pushNamed('/import')
                               
                              },
                     
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [yellowStart, yellowEnd],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Import wallet',
                            style: loginButtonLabel,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

