import 'package:flutter/material.dart';
import 'package:flutter_draggable_gridview/flutter_draggable_gridview.dart';

class CustomTwoDraggable extends StatelessWidget {
  const CustomTwoDraggable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 15),
      margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              blurRadius: 2,
              spreadRadius: 0.5,
              color: Colors.black12,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Match the picture to the definition',
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: DraggableGridViewBuilder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 3),
                    ),
                    children: [
                      DraggableGridItem(
                          isDraggable: true,
                          child: Container(
                            margin: const EdgeInsets.only(
                                top: 15, left: 15, right: 15),
                            decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 0.5,
                                    color: Colors.black12,
                                  )
                                ]),
                            width: 200,
                            height: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                "https://i.guim.co.uk/img/media/20491572b80293361199ca2fc95e49dfd85e1f42/0_236_5157_3094/master/5157.jpg?width=620&quality=85&auto=format&fit=max&s=4f5c56d9bbc92d672fbb6c17283fcde4",
                                fit: BoxFit.fill,
                              ),
                            ),
                          )),
                      DraggableGridItem(
                        isDraggable: true,
                        child: Container(
                          margin: const EdgeInsets.only(
                              top: 15, left: 15, right: 15),
                          decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 0.5,
                                  color: Colors.black12,
                                )
                              ]),
                          width: 200,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              "https://thumbs.dreamstime.com/b/generative-ai-fruits-vegetables-arranged-heart-shape-healthy-food-nutrition-concept-isolated-business-generative-ai-315051475.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      DraggableGridItem(
                          isDraggable: true,
                          child: Container(
                            margin: const EdgeInsets.only(
                                top: 15, left: 15, right: 15),
                            decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 0.5,
                                    color: Colors.black12,
                                  )
                                ]),
                            width: 200,
                            height: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                "https://motosloan.com/attachments/shop_images/1702782838/Elite_BLACK.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          )),
                      DraggableGridItem(
                          isDraggable: true,
                          child: Container(
                            margin: const EdgeInsets.only(
                                top: 15, left: 15, right: 15),
                            decoration: BoxDecoration(
                                color: Theme.of(context).cardColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 0.5,
                                    color: Colors.black12,
                                  )
                                ]),
                            width: 200,
                            height: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                "https://static.vecteezy.com/system/resources/thumbnails/019/900/152/small_2x/old-book-watercolor-illustration-png.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          )),
                    ],
                    isOnlyLongPress: false,
                    dragCompletion: (List<DraggableGridItem> list,
                        int beforeIndex, int afterIndex) {
                      DraggableGridItem(child: const Text('data'));
                      print('onDragAccept: $beforeIndex -> $afterIndex');
                    },
                    dragFeedback: (List<DraggableGridItem> list, int index) {
                      return SizedBox(
                        width: 200,
                        height: 150,
                        child: list[index].child,
                      );
                    },
                    dragPlaceHolder: (List<DraggableGridItem> list, int index) {
                      return PlaceHolderWidget(
                        child: Container(
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: DraggableGridViewBuilder(
                    physics: const NeverScrollableScrollPhysics(),
                    primary: false,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 3),
                    ),
                    children: [
                      DraggableGridItem(
                        isDraggable: false,
                        child: const SizedBox(
                          width: 200,
                          height: 150,
                          child: Center(
                            child: Text(
                              'The thing for health',
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                      ),
                      DraggableGridItem(
                        isDraggable: false,
                        child: const SizedBox(
                          width: 200,
                          height: 100,
                          child: Center(child: Text('The thing we can eat')),
                        ),
                      ),
                      DraggableGridItem(
                        isDraggable: false,
                        child: const SizedBox(
                          width: 200,
                          height: 150,
                          child: Center(child: Text('The thing we can touch')),
                        ),
                      ),
                      DraggableGridItem(
                        isDraggable: false,
                        child: const SizedBox(
                          width: 200,
                          height: 150,
                          child: Center(child: Text('The thing for study')),
                        ),
                      ),
                    ],
                    isOnlyLongPress: false,
                    dragCompletion: (List<DraggableGridItem> list,
                        int beforeIndex, int afterIndex) {
                      print('onDragAccept: $beforeIndex -> $afterIndex');
                    },
                    dragFeedback: (List<DraggableGridItem> list, int index) {
                      return SizedBox(
                        width: 200,
                        height: 150,
                        child: list[index].child,
                      );
                    },
                    dragPlaceHolder: (List<DraggableGridItem> list, int index) {
                      return PlaceHolderWidget(
                        child: Container(
                          color: Colors.white,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
