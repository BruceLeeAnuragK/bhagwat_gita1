import 'package:bhagwat_gita1/provider/GitaProvider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChaptersPage extends StatefulWidget {
  const ChaptersPage({Key? key}) : super(key: key);

  @override
  State<ChaptersPage> createState() => _ChaptersPageState();
}

class _ChaptersPageState extends State<ChaptersPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<GitaProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              provider.isDark
                  ? Icon(
                      Icons.dark_mode_sharp,
                      size: 40,
                      color: Colors.black,
                    )
                  : Icon(
                      Icons.sunny,
                      size: 40,
                      color: Colors.white,
                    ),
              SizedBox(
                width: 20,
              ),
            ],
            centerTitle: true,
            backgroundColor: Colors.brown,
            title: Text(
              "Text Format",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: provider.isDark ? Colors.black : Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: CarouselSlider(
                  items: provider.imageList.map((i) {
                    return Container(
                      height: 250,
                      width: double.infinity,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(i),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    autoPlay: true,
                    height: 250,
                    aspectRatio: 1.0,
                    enableInfiniteScroll: true,
                    onPageChanged: (index, reason) =>
                        provider.changeCurrentPageIndex(index),
                  ),
                ),
              ),
              DotsIndicator(
                dotsCount: provider.imageList.length,
                position: provider.currentIndex,
                decorator: DotsDecorator(
                  color: Colors.grey,
                  activeColor: Color(0xff4a384d),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 300,
                  child: ListView.builder(
                    itemCount: provider.allchapter.length,
                    itemBuilder: (context, index) => Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).pushNamed("slok_detail_page");
                        },
                        title: Text(
                          provider.allchapter[index].name,
                          style: TextStyle(
                            color:
                                provider.isDark ? Colors.white : Colors.brown,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          provider.allAuthors[index].name,
                          style: TextStyle(
                            color:
                                provider.isDark ? Colors.white : Colors.brown,
                          ),
                        ),
                        leading: Text(
                            "Ch:${provider.allchapter[index].chapter_number}"),
                        trailing: Icon(
                          Icons.navigate_next,
                          color: provider.isDark ? Colors.white : Colors.brown,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
