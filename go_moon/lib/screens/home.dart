import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          // color: Colors.blue[200],
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _text(),
                  _bookRide(),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _astroImage(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _dropDownWidget() {
    return CustomDropDownButton(
      values: const [
        'Nasa Space Station',
        'James Webb Station',
        'International Space Station',
    ], 
    width: _deviceWidth,
    );
  }

  Widget _travellersInformation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownButton(
          values: const ['1','2','3','4',], 
          width: _deviceWidth * 0.45,
        ),
        CustomDropDownButton(
          values: const ['Economy','Business','First','Private'], 
          width: _deviceWidth * 0.40,
        ),
      ],
    );
  }

  Widget _text() {
    return const Text(
      '#GoMoon',
      style: TextStyle(
          fontSize: 70, color: Colors.white, fontWeight: FontWeight.w800),
    );
  }

  Widget _astroImage() {
    return Container(
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage("assets/images/astro_moon.png"),
      ),),
    );
  }

  Widget _bookRide() {
    return SizedBox(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _dropDownWidget(), 
          _travellersInformation(), 
          _rideButton(),
        ],
      ),
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      width: _deviceHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "Book Ride!",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
