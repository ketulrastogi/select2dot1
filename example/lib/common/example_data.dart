import 'package:flutter/material.dart';
import 'package:select2dot1/select2dot1.dart';

class ExampleData {
  static const List<SingleCategoryModel> exampleData1 = [
    SingleCategoryModel(
      nameCategory: 'Team Leader',
      singleItemCategoryList: [
        Choice(
          text: 'David Eubanks',
          extraInfoSingleItem: 'Full time',
          avatarSingleItem: CircleAvatar(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/images/avatar1.jpg'),
          ),
        ),
        Choice(
          text: 'Stuart Resch',
          extraInfoSingleItem: 'Part time',
          avatarSingleItem: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('SR', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    ),
    SingleCategoryModel(
      nameCategory: 'Programmer',
      singleItemCategoryList: [
        Choice(
          text: 'David Eubanks',
          extraInfoSingleItem: 'Full time',
          avatarSingleItem: CircleAvatar(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/images/avatar1.jpg'),
          ),
        ),
        Choice(
          text: 'Manuel Eyre',
          extraInfoSingleItem: 'Full time',
          avatarSingleItem: CircleAvatar(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/images/avatar2.jpg'),
          ),
        ),
        Choice(
          text: 'Robert Keller',
          extraInfoSingleItem: 'Part time',
          avatarSingleItem: CircleAvatar(
            backgroundColor: Colors.brown,
            child: Text('RK', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    ),
    SingleCategoryModel(
      nameCategory: 'UX Designer',
      singleItemCategoryList: [
        Choice(
          text: 'Shirley Stark',
          extraInfoSingleItem: 'Part time',
          avatarSingleItem: CircleAvatar(
            backgroundColor: Colors.purple,
            child: Text('SS', style: TextStyle(color: Colors.white)),
          ),
        ),
        Choice(
          text: 'Wendy Cangelosi',
          extraInfoSingleItem: 'Part time',
          avatarSingleItem: CircleAvatar(
            backgroundColor: Colors.green,
            child: Text('WC', style: TextStyle(color: Colors.white)),
          ),
        ),
        Choice(
          text: 'Antoinette Herbert',
          extraInfoSingleItem: 'Full time',
          avatarSingleItem: CircleAvatar(
            backgroundColor: Colors.orange,
            child: Text('AH', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    ),
  ];

  static const List<SingleCategoryModel> exampleData2 = [
    SingleCategoryModel(
      nameCategory: 'Alaskan/Hawaiian Time Zone',
      singleItemCategoryList: [
        Choice(
          text: 'Alaska',
          extraInfoSingleItem: '1395 Lincoln Street',
        ),
        Choice(
          text: 'Hawaii',
          extraInfoSingleItem: '4880 Michigan Avenue',
        ),
      ],
    ),
    SingleCategoryModel(
      nameCategory: 'Pacific Time Zone',
      singleItemCategoryList: [
        Choice(
          text: 'California',
          extraInfoSingleItem: '3878 Chapel Street',
        ),
        Choice(
          text: 'Nevada',
          extraInfoSingleItem: '4045 Lucy Lane',
        ),
        Choice(
          text: 'Oregon',
          extraInfoSingleItem: '83 Kenwood Place',
        ),
        Choice(
          text: 'Washington',
          extraInfoSingleItem: '3573 Pallet Street',
        ),
      ],
    ),
    SingleCategoryModel(
      nameCategory: 'Mountain Time Zone',
      singleItemCategoryList: [
        Choice(
          text: 'Arizona',
          extraInfoSingleItem: '4473 Prospect Street',
        ),
        Choice(
          text: 'Colorado',
          extraInfoSingleItem: '2247 Nuzum Court',
        ),
        Choice(
          text: 'Idaho',
          extraInfoSingleItem: '1182 Bailey Drive',
        ),
        Choice(
          text: 'Montana',
          extraInfoSingleItem: '4530 Elk City Road',
        ),
        Choice(
          text: 'Nebraska',
          extraInfoSingleItem: '2012 Armbrester Drive',
        ),
        Choice(
          text: 'New Mexico',
          extraInfoSingleItem: '2393 Wines Lane',
        ),
        Choice(
          text: 'North Dakota',
          extraInfoSingleItem: '4190 Don Jackson Lane',
        ),
        Choice(
          text: 'Utah',
          extraInfoSingleItem: '468 Green Acres Road',
        ),
        Choice(
          text: 'Wyoming',
          extraInfoSingleItem: '1898 Sardis Sta',
        ),
      ],
    ),
    SingleCategoryModel(
      nameCategory: 'Central Time Zone',
      singleItemCategoryList: [
        Choice(
          text: 'Alabama',
          extraInfoSingleItem: '4446 Jarvisville Road',
        ),
        Choice(
          text: 'Arkansas',
          extraInfoSingleItem: '4111 Little Acres Lane',
        ),
        Choice(
          text: 'Illonois',
          extraInfoSingleItem: '3444 Clark Street',
        ),
        Choice(
          text: 'Iowa',
          extraInfoSingleItem: '4610 Lucy Lane',
        ),
        Choice(
          text: 'Kansas',
          extraInfoSingleItem: '323 Stratford Drive',
        ),
        Choice(
          text: 'Kentucky',
          extraInfoSingleItem: '3631 Vine Street',
        ),
        Choice(
          text: 'Louisiana',
          extraInfoSingleItem: '3283 Godfrey Street',
        ),
        Choice(
          text: 'Minnesota',
          extraInfoSingleItem: '4838 Ridenour Street',
        ),
        Choice(
          text: 'Mississippi',
          extraInfoSingleItem: '38 Ray Court',
        ),
        Choice(
          text: 'Missouri',
          extraInfoSingleItem: '1360 Bingamon Road',
        ),
        Choice(
          text: 'Oklahoma',
          extraInfoSingleItem: '1636 Sundown Lane',
        ),
        Choice(
          text: 'South Dakota',
          extraInfoSingleItem: '1091 Elm Drive',
        ),
        Choice(
          text: 'Texas',
          extraInfoSingleItem: '4764 Bond Street',
        ),
        Choice(
          text: 'Tennessee',
          extraInfoSingleItem: '4540 Oakmound Road',
        ),
      ],
    ),
    SingleCategoryModel(
      nameCategory: 'Eastern Time Zone',
      singleItemCategoryList: [
        Choice(
          text: 'Connecticut',
          extraInfoSingleItem: '695 Center Avenue',
        ),
        Choice(
          text: 'Massechusetts',
          extraInfoSingleItem: '2085 Heron Way',
        ),
        Choice(
          text: 'North Carolina',
          extraInfoSingleItem: '1034 Conference Center Way',
        ),
        Choice(
          text: 'South Carolina',
          extraInfoSingleItem: '3865 Hickory Street',
        ),
        Choice(
          text: 'Vermont',
          extraInfoSingleItem: '3159 Sumner Street',
        ),
        Choice(
          text: 'West Virginia',
          extraInfoSingleItem: '2506 Hall Street',
        ),
      ],
    ),
  ];

  static const List<SingleCategoryModel> exampleData3 = [
    SingleCategoryModel(
      singleItemCategoryList: [
        Choice(text: 'Alabama', value: 'Alabama1'),
        Choice(text: 'Alabama', value: 'Alabama2'),
        Choice(text: 'Arkansas'),
        Choice(text: 'Illonois'),
        Choice(text: 'Iowa'),
        Choice(text: 'Kansas'),
        Choice(text: 'Kentucky'),
        Choice(text: 'Louisiana'),
        Choice(text: 'Minnesota'),
        Choice(text: 'Mississippi'),
        Choice(text: 'Missouri'),
        Choice(text: 'Oklahoma'),
        Choice(text: 'South Dakota'),
        Choice(text: 'Texas'),
        Choice(text: 'Tennessee'),
      ],
    ),
  ];

  static const List<SingleCategoryModel> exampleData4 = [
    SingleCategoryModel(
      singleItemCategoryList: [
        Choice(text: 'Alabama'),
        Choice(text: 'Arkansas'),
        Choice(text: 'Illonois'),
        Choice(text: 'Iowa'),
        Choice(text: 'Kansas'),
        Choice(text: 'Kentucky'),
        Choice(text: 'Louisiana'),
        Choice(text: 'Minnesota'),
        Choice(text: 'Mississippi'),
        Choice(text: 'Missouri'),
        Choice(text: 'Oklahoma'),
        Choice(text: 'South Dakota'),
        Choice(text: 'Texas'),
        Choice(text: 'Tennessee'),
      ],
    ),
  ];
}
