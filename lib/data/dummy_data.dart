import '../shared/resources/assets_manager.dart';
import 'models/category.dart';
import 'models/citys.dart';
import 'models/subcategory.dart';
import 'models/subsubcategory.dart';

final List<Category> categories = [
  Category(
    title: 'Gym',
    iconPath: ImageAssets.gym,
    numberOfMerchants: 10,
    subcategories: [
      Subcategory(
        title: 'Burgers',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.offerBack,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
      Subcategory(
        title: 'Pizza',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          ),
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          ),
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
      Subcategory(
        title: 'Sushi',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          ),
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          ),
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          ),
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
    ],
    popularityIndicator: 4.5,
  ),
  Category(
    title: 'Electrician',
    iconPath: ImageAssets.electrician,
    numberOfMerchants: 20,
    subcategories: [
      Subcategory(
        title: 'Men\'s Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
      Subcategory(
        title: 'Women\'s Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
      Subcategory(
        title: 'Kids\' Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
    ],
    popularityIndicator: 3.8,
  ),
  Category(
    title: 'Hotels',
    iconPath: ImageAssets.hotels,
    numberOfMerchants: 20,
    subcategories: [
      Subcategory(
        title: 'Men\'s Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
      Subcategory(
        title: 'Women\'s Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
      Subcategory(
        title: 'Kids\' Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
    ],
    popularityIndicator: 3.8,
  ),
  Category(
    title: 'Car Services',
    iconPath: ImageAssets.carServices,
    numberOfMerchants: 20,
    subcategories: [
      Subcategory(
        title: 'Men\'s Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
      Subcategory(
        title: 'Women\'s Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
      Subcategory(
        title: 'Kids\' Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
    ],
    popularityIndicator: 3.8,
  ),
  Category(
    title: 'Beauty',
    iconPath: ImageAssets.beauty,
    numberOfMerchants: 20,
    subcategories: [
      Subcategory(
        title: 'Men\'s Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
      Subcategory(
        title: 'Women\'s Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
      Subcategory(
        title: 'Kids\' Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
    ],
    popularityIndicator: 3.8,
  ),
  Category(
    title: 'Clothing',
    iconPath: ImageAssets.clothing,
    numberOfMerchants: 20,
    subcategories: [
      Subcategory(
        title: 'Men\'s Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
      Subcategory(
        title: 'Women\'s Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
      Subcategory(
        title: 'Kids\' Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
    ],
    popularityIndicator: 3.8,
  ),
];

final List<Category> popularCategories = [
  Category(
    title: 'Food',
    numberOfMerchants: 10,
    iconPath: ImageAssets.food,
    subcategories: [
      Subcategory(
        title: 'Burgers',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Fresh Direct',
            iconPath: ImageAssets.freshDirect1,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.offerBack,
                percentage: 'Available from 05:00 PM - 50:00 AM',
                available: true,
              ),
              Citys(
                title: 'Irbed',
                iconPath: ImageAssets.offerBackused,
                percentage: 'Available from 05:00 PM - 50:00 AM',
                available: false,
              ),
            ],
          ),
          Subsubcategory(
            title: 'BJ\'C',
            iconPath: ImageAssets.bjc,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          ),
          Subsubcategory(
            title: 'Vica Cost',
            iconPath: ImageAssets.vicaCost1,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          ),
          Subsubcategory(
            title: 'Fresh Direct',
            iconPath: ImageAssets.freshDirect,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          ),
          Subsubcategory(
            title: 'BJ\'C',
            iconPath: ImageAssets.bjc1,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          ),
          Subsubcategory(
            title: 'Vica Cost',
            iconPath: ImageAssets.vicaCost,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          ),
        ],
      ),
      Subcategory(
        title: 'Coffee',
        iconPath: ImageAssets.coffee,
        subsubcategories: [
          Subsubcategory(
            title: 'Fresh Direct',
            iconPath: ImageAssets.freshDirect1,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          ),
        ],
      ),
      Subcategory(
        title: 'Shawerma',
        iconPath: ImageAssets.shawerma,
        subsubcategories: [
          Subsubcategory(
            title: 'Vica Cost',
            iconPath: ImageAssets.bjc,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
      Subcategory(
        title: 'Burgers',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Fresh Direct',
            iconPath: ImageAssets.freshDirect1,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          ),
          Subsubcategory(
            title: 'BJ\'C',
            iconPath: ImageAssets.bjc,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          ),
          Subsubcategory(
            title: 'Vica Cost',
            iconPath: ImageAssets.vicaCost1,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          ),
          Subsubcategory(
            title: 'Fresh Direct',
            iconPath: ImageAssets.freshDirect,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          ),
          Subsubcategory(
            title: 'BJ\'C',
            iconPath: ImageAssets.bjc1,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          ),
          Subsubcategory(
            title: 'Vica Cost',
            iconPath: ImageAssets.vicaCost,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          ),
        ],
      ),
    ],
    popularityIndicator: 4.5,
  ),
  Category(
    title: 'Toys and Games',
    iconPath: ImageAssets.toys,
    numberOfMerchants: 20,
    subcategories: [
      Subcategory(
        title: 'Men\'s Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
      Subcategory(
        title: 'Women\'s Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
      Subcategory(
        title: 'Kids\' Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
    ],
    popularityIndicator: 3.8,
  ),
  Category(
    title: 'Sports',
    iconPath: ImageAssets.sports,
    numberOfMerchants: 20,
    subcategories: [
      Subcategory(
        title: 'Men\'s Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
      Subcategory(
        title: 'Women\'s Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
      Subcategory(
        title: 'Kids\' Clothing',
        iconPath: ImageAssets.food,
        subsubcategories: [
          Subsubcategory(
            title: 'Food',
            iconPath: ImageAssets.food,
            backgroundImagePath: ImageAssets.backsecondary,
            subtitle: 'Canton-Amman',
            citys: [
              Citys(
                title: 'Amman',
                iconPath: ImageAssets.iconPrecentage,
                percentage: 'Available from 05:00 PM - 02:00 AM',
                available: true,
              ),
            ],
          )
        ],
      ),
    ],
    popularityIndicator: 3.8,
  ),
];
