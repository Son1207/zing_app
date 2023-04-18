import 'package:flutter/material.dart';
import 'package:zing_app/page/follow/components/image_view.dart';

class PostsLayout extends StatelessWidget {
  const PostsLayout({
    super.key,
    required this.pictures,
  });

  final List pictures;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
        child: pictures.length == 1
            ? GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ImageView(pictures: pictures),
              ),
            );
          },
              child: SizedBox(
          child: Image.network(
              pictures[0],
              fit: BoxFit.cover,
          ),
        ),
            ) : pictures.length == 2
            ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageView(pictures: pictures,initialIndex: pictures.indexOf(pictures[0])),
                  ),
                );
              },
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Image.network(
                    pictures[0],
                    height: 300,
                    width: MediaQuery.of(context).size.width / 2 - 5,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageView(pictures: pictures,initialIndex: pictures.indexOf(pictures[1])),
                  ),
                );
              },
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Image.network(
                    pictures[1],
                    height: 300,
                    width: MediaQuery.of(context).size.width / 2 - 5,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ) : pictures.length == 3
            ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children:[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageView(pictures: pictures,initialIndex: pictures.indexOf(pictures[0])),
                      ),
                    );
                  },
                  child: SizedBox(
                    child: Image.network(
                      pictures[0],
                      height: 145,
                      width: 190,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageView(pictures: pictures,initialIndex: pictures.indexOf(pictures[1])),
                      ),
                    );
                  },
                  child: SizedBox(
                    child: Image.network(
                      pictures[1],
                      height: 145,
                      width: 190,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 10,),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageView(pictures: pictures,initialIndex: pictures.indexOf(pictures[2])),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Image.network(
                  pictures[2],
                  height: 300,
                  width: MediaQuery.of(context).size.width / 2 - 5,
                  fit: BoxFit.cover,
                ),
              ),
            ),

          ],
        ): pictures.length == 4
            ? Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageView(pictures: pictures,initialIndex: pictures.indexOf(pictures[0])),
                      ),
                    );
                  },
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: SizedBox(
                        height: 150,
                        width: MediaQuery.of(context).size.width / 2 - 5,
                        child: Image.network(
                          pictures[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageView(pictures: pictures,initialIndex: pictures.indexOf(pictures[1])),
                      ),
                    );
                  },
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: SizedBox(
                        height: 150,
                        width: MediaQuery.of(context).size.width / 2 - 5,
                        child: Image.network(
                          pictures[1],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageView(pictures: pictures, initialIndex: pictures.indexOf(pictures[2])),
                      ),
                    );
                  },
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: SizedBox(
                        height: 150,
                        width: MediaQuery.of(context).size.width / 2 - 5,
                        child: Image.network(
                          pictures[2],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageView(pictures: pictures,initialIndex: pictures.indexOf(pictures[3])),
                      ),
                    );
                  },
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: SizedBox(
                        height: 150,
                        width: MediaQuery.of(context).size.width / 2 - 5,
                        child: Image.network(
                          pictures[3],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ) : pictures.length == 5
            ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children:[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageView(pictures: pictures,initialIndex: pictures.indexOf(pictures[0])),
                      ),
                    );
                  },
                  child: SizedBox(
                    height: 150,
                    child: Image.network(
                      pictures[0],
                      height: 145,
                      width: MediaQuery.of(context).size.width / 2 - 5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageView(pictures: pictures,initialIndex: pictures.indexOf(pictures[1])),
                      ),
                    );
                  },
                  child: SizedBox(
                    height: 150,
                    child: Image.network(
                      pictures[1],
                      height: 145,
                      width: MediaQuery.of(context).size.width / 2 - 5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageView(pictures: pictures,initialIndex: pictures.indexOf(pictures[2])),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Image.network(
                      pictures[2],
                      height: 97,
                      width: MediaQuery.of(context).size.width / 2 - 5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageView(pictures: pictures,initialIndex: pictures.indexOf(pictures[3])),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Image.network(
                      pictures[3],
                      height: 98,
                      width: MediaQuery.of(context).size.width / 2 - 5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ImageView(pictures: pictures,initialIndex: pictures.indexOf(pictures[4])),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Image.network(
                      pictures[4],
                      height: 97,
                      width: MediaQuery.of(context).size.width / 2 - 5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )
          ],
        ) : Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Image.network(
                      pictures[0],
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Image.network(
                      pictures[1],
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Image.network(
                      pictures[2],
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Image.network(
                      pictures[3],
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Image.network(
                      pictures[4],
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }
}
