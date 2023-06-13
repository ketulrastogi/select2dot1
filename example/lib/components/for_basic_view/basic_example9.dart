import 'package:example/common/example_data.dart';
import 'package:flutter/material.dart';
import 'package:select2dot1/select2dot1.dart';

class BasicExample9 extends StatelessWidget {
  final ScrollController scrollController;

  const BasicExample9({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Select2dot1(
            selectDataController: SelectDataController(
              data: ExampleData.exampleData2,
              initSelected: const [
                Choice(
                  text: 'Alabama',
                ),
                Choice(
                  text: 'Arkansas',
                ),
                Choice(
                  text: 'Illonois',
                ),
                Choice(
                  text: 'Iowa',
                ),
                Choice(
                  text: 'Kansas',
                ),
                Choice(
                  text: 'Kentucky',
                ),
                Choice(
                  text: 'Louisiana',
                ),
                Choice(
                  text: 'Minnesota',
                ),
                Choice(
                  text: 'Mississippi',
                ),
                Choice(
                  text: 'Missouri',
                ),
                Choice(
                  text: 'Oklahoma',
                ),
                Choice(
                  text: 'South Dakota',
                ),
                Choice(
                  text: 'Texas',
                ),
                Choice(
                  text: 'Tennessee',
                ),
                Choice(
                  text: 'Arizona',
                ),
                Choice(
                  text: 'Colorado',
                ),
                Choice(
                  text: 'Idaho',
                ),
                Choice(
                  text: 'Montana',
                ),
                Choice(
                  text: 'Nebraska',
                ),
                Choice(
                  text: 'New Mexico',
                ),
                Choice(
                  text: 'North Dakota',
                ),
                Choice(
                  text: 'Utah',
                ),
                Choice(
                  text: 'Wyoming',
                ),
              ],
            ),
            scrollController: scrollController,
            pillboxTitleSettings:
                const PillboxTitleSettings(title: 'Example 9'),
            titleModalSettings: const TitleModalSettings(title: 'Example 9'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text('Description: Wrap layout'),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey,
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
