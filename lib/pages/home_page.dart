import 'package:flutter/material.dart';
import 'package:hero/constants/images.dart';
import 'package:hero/pages/photo_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero'),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: ListTile(
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(width: .2),
                ),
                contentPadding: EdgeInsets.zero,
                title: Text('Item ${index + 1}'),
                leading: SizedBox(
                  height: double.maxFinite,
                  width: 100,
                  child: Hero(
                    tag: 'image$index',
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                            Images.images[index],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhotoPage(
                      index: index,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: Images.images.length,
      ),
    );
  }
}
