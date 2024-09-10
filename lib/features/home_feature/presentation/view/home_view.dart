import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/auth_feature/view/Cart/Cart_view.dart';
import 'package:clean_arc/features/home_feature/presentation/view/componant.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const path = '/HomeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.whiteColor,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.notifications_outlined),
                  onPressed: () {},
                ),
                IconButton(
                  icon: AppImages.images.core.svg.shoppingCart.svg(),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartView()));
                  },
                ),
              ],
            ),
          ],
          title: Container(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                prefixIcon: Icon(Icons.search),
                hintText: context.translate.search,
              ),
            ),
          )),
      body: ListView(
        children: [
          Container(
            height: 220,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                PageView(
                  controller: _pageController,
                  children: [
                    Image.asset(
                      AppImages.images.core.svg.im1.path,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      AppImages.images.core.svg.im22.path,
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      AppImages.images.core.svg.im3.path,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Positioned(
                  bottom: 30,
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Colors.orange,
                      dotColor: Colors.grey,
                      dotHeight: 8,
                      dotWidth: 8,
                      spacing: 5.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Text("التصنيفات", style: TextStyle(color: Colors.black)),
              ),
              TextButton(
                onPressed: () {},
                child: Text("الكل", style: TextStyle(color: Colors.grey)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildCategoryItem(
                        AppImages.images.core.svg.home.svg(), 'نقالات'),
                    SizedBox(width: 20),
                    _buildCategoryItem(
                        AppImages.images.core.svg.clothes.svg(), 'الملابس'),
                    SizedBox(width: 20),
                    _buildCategoryItem(
                        AppImages.images.core.svg.mobile.svg(), 'نقالات'),
                    SizedBox(width: 20),
                    _buildCategoryItem(
                        AppImages.images.core.svg.gift.svg(), 'الهدايا'),
                    SizedBox(width: 20),
                    _buildCategoryItem(
                        AppImages.images.core.svg.mobile.svg(), 'نقالات'),
                    SizedBox(width: 20),
                    _buildCategoryItem(
                        AppImages.images.core.svg.beuty.svg(), 'صحة وتجميل'),
                  ],
                ),
              ),
            ),
          ),

          // Promotions section
          _buildPromotionItem(AppImages.images.core.svg.watch.path),

          _buildPromotionItem(
            AppImages.images.core.svg.a2.path,
          ),

          _buildPromotionItem(AppImages.images.core.svg.watch.path),

          // Product suggestions section
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('المتاجر المشتركة',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text('الكل',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildItem(AppImages.images.core.svg.afaar.image(), 'أقار'),
                _buildItem(AppImages.images.core.svg.gehad.image(), 'جهاد'),
                _buildItem(AppImages.images.core.svg.afaar.image(), 'أقار'),
                _buildItem(AppImages.images.core.svg.lemas.image(), 'ليماس'),
                _buildItem(AppImages.images.core.svg.gehad.image(), 'جهاد'),
                _buildItem(AppImages.images.core.svg.afaar.image(), 'أقار'),
                _buildItem(AppImages.images.core.svg.gehad.image(), 'جهاد'),
              ],
            ),
          ),
          _buildPromotionItem(AppImages.images.core.svg.watch.path),

          _buildPromotionItem(
            AppImages.images.core.svg.a2.path,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 150,
                  child: ProductCard(
                    isFavorite: true,
                    imageUrl: AppImages.images.core.svg.phoneRate.path,
                    isAssetImage: true, // Indicate that this is an asset image
                    title: 'Product Title',
                    oldPrice: '120.00',
                    newPrice: '80.00',
                    rating: 5,
                    discount: '25%', onFavoriteToggle: () {},
                  ),
                ),
                Container(
                  width: 150,
                  child: ProductCard(
                    isFavorite: true,
                    imageUrl: AppImages.images.core.svg.lapTop.path,
                    isAssetImage: true, // Indicate that this is an asset image
                    title: ' Laptop ',
                    oldPrice: '120.00',
                    newPrice: '80.00',
                    rating: 4,
                    discount: '25%', onFavoriteToggle: () {},
                  ),
                ),
                Container(
                  width: 150,
                  child: ProductCard(
                    isFavorite: false,

                    imageUrl: AppImages.images.core.svg.lapTop.path,
                    isAssetImage: true, // Indicate that this is an asset image
                    title: 'Product Title',
                    oldPrice: '120.00',
                    newPrice: '80.00',
                    rating: 3.5,
                    discount: '25%', onFavoriteToggle: () {},
                  ),
                ),
              ],
            ),
          ),
          _buildPromotionItem(AppImages.images.core.svg.watch.path),

          _buildPromotionItem(
            AppImages.images.core.svg.a2.path,
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(Widget myicon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: context.color.grayColor!.withOpacity(.1),
          radius: 30,
          child: myicon,
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildItem(Widget myicon, String label) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: context.color.grayColor!.withOpacity(.8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3), // Changes position of shadow
                ),
              ],
            ),
            height: 120,
            width: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: myicon is Image
                  ? Image(
                      image: myicon.image,
                      fit: BoxFit.fill, // Ensure the image covers the container
                    )
                  : myicon,
            ),
          ),
          SizedBox(height: 8),
          Text(label, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildPromotionItem(String imagePath) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imagePath,
          height: 200,
          fit: BoxFit.fill,
          width: double.infinity,
        ),
      ],
    );
  }

  Widget _buildProductItem(String imagePath, String title, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(imagePath, width: 100, height: 100, fit: BoxFit.cover),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text(price, style: TextStyle(fontSize: 14, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
