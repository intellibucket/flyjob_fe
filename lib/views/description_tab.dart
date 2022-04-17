import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import '../models/company.dart';
import '../widgets/basic_company_card.dart';
import '../widgets/simple_company_card.dart';
class DescriptionTab extends StatelessWidget {
  final Company? company;
  DescriptionTab({this.company});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          SizedBox(height: 25.0),
          Text(
            "About the Opportunity",
            style: kTitleStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15.0),
          Text(
            company!.jobOpportunity!,
            style: kSubtitleStyle.copyWith(
              fontWeight: FontWeight.w300,
              height: 1.5,
              color: Color(0xFF5B5B5B),
            ),
          ),
          SizedBox(height: 25.0),
          Text(
            "Job Responsbilities",
            style: kTitleStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15.0),
          Column(
            children: company!.jobResponsbilities!
                .map(
                  (e) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "•  ",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 35.0),
                      ),
                      Expanded(
                        child: Text(
                          "$e\n",
                          style: kSubtitleStyle.copyWith(
                            fontWeight: FontWeight.w300,
                            height: 1.5,
                            color: Color(0xFF5B5B5B),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
