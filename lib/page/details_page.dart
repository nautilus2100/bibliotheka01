import 'package:flutter/material.dart';
import 'package:bibliotheka/core/color.dart';
import 'package:bibliotheka/core/space.dart';
import 'package:bibliotheka/core/text_style.dart';
import 'package:bibliotheka/model/model.dart';

class DetailsPage extends StatefulWidget {
  final Model model;
  const DetailsPage({Key? key, required this.model}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int selectIndex = 0;
  int qty = 1;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: black,
          ),
        ),
        centerTitle: true,
        title: Text(
          widget.model.category,
          style: itemCardHeading,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: height / 1.7,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: height / 10.0,
                  child: Container(
                    width: 60.0,
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: black.withOpacity(0.3),
                          offset: const Offset(5, 5),
                          blurRadius: 10.0,
                        ),
                      ],
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < widget.model.image.length; i++)
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectIndex = i;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              margin: const EdgeInsets.symmetric(vertical: 5.0),
                              child: Image.asset(widget.model.image[i]),
                            ),
                          )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      widget.model.image[selectIndex],
                      fit: BoxFit.cover,
                      width: height / 2.8,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.model.name,
                      style: heading.copyWith(fontSize: 28.0),
                    ),
                    Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: gray,
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            MaterialButton(
                              minWidth: 10,
                              onPressed: () {
                                setState(() {
                                  qty++;
                                });
                              },
                              child: Text(
                                '+',
                                style:
                                    itemCardHeading.copyWith(color: lightBlack),
                              ),
                            ),
                            Text(
                              '$qty',
                              style:
                                  itemCardHeading.copyWith(color: lightBlack),
                            ),
                            MaterialButton(
                              minWidth: 10,
                              onPressed: () {
                                if (qty > 1) {
                                  setState(() {
                                    qty--;
                                  });
                                }
                              },
                              child: Text(
                                '-',
                                style:
                                    itemCardHeading.copyWith(color: lightBlack),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SpaceVH(height: 20.0),
                Text(
                  widget.model.description,
                  style: itemCardDes,
                ),
                const SpaceVH(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        const TextSpan(
                          text: 'Total Price\n',
                          style: subHeading,
                        ),
                        TextSpan(
                          text: widget.model.price,
                          style: itemCardHeading,
                        ),
                      ]),
                    ),
                    Container(
                      height: 40.0,
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Center(
                        child: Text(
                          'Buy Now',
                          style: itemCardHeading.copyWith(color: white),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
