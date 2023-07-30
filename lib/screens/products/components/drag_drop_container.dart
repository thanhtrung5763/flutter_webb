import 'package:cross_file/cross_file.dart';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webb/configs/app_colors.dart';
import 'package:flutter_webb/configs/app_sizes.dart';
import 'package:flutter_webb/widgets/custom_outlined_button.dart';
import 'package:flutter_webb/widgets/custom_text.dart';

class ExampleDragTarget extends StatefulWidget {
  const ExampleDragTarget({Key? key}) : super(key: key);

  @override
  _ExampleDragTargetState createState() => _ExampleDragTargetState();
}

class _ExampleDragTargetState extends State<ExampleDragTarget> {
  final List<XFile> _list = [];

  bool _dragging = false;

  @override
  Widget build(BuildContext context) {
    return DropTarget(
      onDragDone: (detail) {
        setState(() {
          _list.addAll(detail.files);
        });
      },
      onDragEntered: (detail) {
        setState(() {
          _dragging = true;
        });
      },
      onDragExited: (detail) {
        setState(() {
          _dragging = false;
        });
      },
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
                decoration: BoxDecoration(
                    color: _dragging ? AppColors.blue.withOpacity(0.2) : AppColors.whiteBackground,
                    borderRadius: BorderRadius.circular(8)),
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(8),
                  dashPattern: const [8, 6],
                  color: AppColors.blue.withOpacity(0.8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.image_outlined,
                        size: 120,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CustomText(text: "Drop your images here, or "),
                          CustomText(
                            text: "Browse",
                            color: AppColors.blue,
                            weight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
          const SizedBox(
            height: 16,
          ),
          buildFiles(),
          const SizedBox(
            height: 16,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CustomOutlinedButton(
              onPressed: () {},
              text: 'Clear',
              color: AppColors.red,
            ),
          ),
          // const SizedBox(
          //   height: 8,
          // ),
          // Align(
          //   alignment: Alignment.centerRight,
          //   child: ElevatedButton(
          //     onPressed: () {},
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: AppColors.blue,
          //       padding: const EdgeInsets.all(16),
          //       // side: BorderSide.none,
          //     ),
          //     child: const CustomText(
          //       text: 'Add Product',
          //       color: Colors.white,
          //       weight: FontWeight.bold,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

  Widget buildFiles() => Expanded(
        flex: 5,
        child: SingleChildScrollView(
          child: Column(children: _list.map(buildFile).toList()),
        ),
      );
  Widget buildFile(XFile file) {
    // return Image.network(file.path, width: 300, height: 300, fit: BoxFit.cover);
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 8),
      decoration:
          BoxDecoration(border: Border.all(color: AppColors.borderSideColor), borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.kSize8),
              child: Image.network(file.path, width: 40, height: 40, fit: BoxFit.cover)),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomText(text: 'Navy Blue Shoe 01.png'),
              CustomText(
                text: '512 KB',
                size: 12,
              ),
            ],
          ),
          const Spacer(),
          const Icon(Icons.delete_outline)
        ],
      ),
    );
    // return Container(
    //   margin: const EdgeInsets.only(bottom: 8),
    //   decoration: BoxDecoration(
    //       border: Border.all(color: const AppColors.borderSideColor, width: 1),
    //       borderRadius: BorderRadius.circular(8)),
    //   child: ListTile(
    //     contentPadding: EdgeInsets.zero,
    //     leading: ClipRRect(
    //         borderRadius: BorderRadius.circular(AppSizes.kSize8),
    //         child: Image.network(file.path, width: 40, height: 40, fit: BoxFit.cover)),
    //     subtitle: const CustomText(
    //       text: '512 KB',
    //       size: 12,
    //     ),
    //     title: const CustomText(text: 'Navy Blue Shoe 01.png'),
    //     trailing: const Icon(Icons.delete_outline),
    //   ),
    // );
  }
}
