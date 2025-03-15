import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/widgets/custom_drop_down_menu.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/themes/styles.dart';
import '../../../../core/widgets/custom_image_container.dart';
import '../../../auth/widgets/custom_text_form_field.dart';
import '../../logic/cubit/post_cubit.dart';
import '../../logic/cubit/post_state.dart';

class AddResourcePage extends StatefulWidget {
  const AddResourcePage({super.key});

  @override
  State<AddResourcePage> createState() => _AddresourceState();
}

class _AddresourceState extends State<AddResourcePage> {
  final formkeyresource = GlobalKey<FormState>();

  final descriptionController = TextEditingController();
  final locationController = TextEditingController();
  final quantityController = TextEditingController();
  final phoneController = TextEditingController();

  String? selectedType;
  String? selectedStatus;
  String? selectedUrgency;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // const Color.fromRGBO(231, 225, 225, 1),

      body:
          // BlocListener<HomeCubit, HomeState>(
          //   listener: (context, state) {
          //     if (state is addNewPost) {
          //       ScaffoldMessenger.of(context).showSnackBar(
          //         SnackBar(
          //           content: Text('Post added successfully ✅'),
          //         ),
          //       );
          //     } else if (state is Error) {
          //       ScaffoldMessenger.of(context).showSnackBar(
          //         SnackBar(
          //           content: Text('Something went wrong ❌'),
          //         ),
          //       );
          //     }
          //   },
          //   child:
          SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 15,
          ),
          child: Form(
            key: formkeyresource,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  verticalPadding(10),

                  CustomImageContainer(),

                  verticalPadding(
                    18,
                  ),

                  CustomDropdownMenu(
                    items: ['Offer', 'Request'],
                    hintText: 'Type',
                    onChanged: (value) {},
                  ),

                  verticalPadding(
                    18,
                  ),

                  CustomDropdownMenu(
                    items: ['High', 'Meduim', 'Low'],
                    hintText: 'Urgency',
                    onChanged: (value) {},
                  ),

                  verticalPadding(
                    18,
                  ),

                  CustomDropdownMenu(
                    items: ['In Progress', 'Done'],
                    hintText: 'Status',
                    onChanged: (value) {},
                  ),

                  verticalPadding(
                    18,
                  ),

                  AppTextFormField(
                    hintText: 'description',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                    minLines: 6,
                    maxLines: null,
                   image: Image.asset('assets/icons/test_two.png',color: AppColors.primaryBlue,),
                   onIconPressed: () {},
                    //controller: context.read<HomeCubit>().titleController,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                          top: 5,
                        ),
                        child: Text(
                          'Generate post with AI',
                          style: TextStyles.font16GreyRegular,
                        ),
                      ),
                    ],
                  ),
                  verticalPadding(
                    18,
                  ),
                  AppTextFormField(
                    hintText: 'title',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                    //controller: context.read<HomeCubit>().descriptionController,
                  ),
                  verticalPadding(
                    18,
                  ),

                  AppTextFormField(
                    hintText: 'quantity',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                    //controller: context.read<HomeCubit>().locationController,
                  ),
                  verticalPadding(
                    18,
                  ),

                  AppTextFormField(
                    hintText: 'phone',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                    //  controller: context.read<HomeCubit>().quantityController,
                  ),
                  verticalPadding(
                    18,
                  ),

                  AppTextFormField(
                    hintText: 'location',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                    //controller: context.read<HomeCubit>().phoneController,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      top: 5,
                    ),
                    child: Text(
                      'Country, City, Street',
                      style: TextStyles.font16GreyRegular,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      top: 2,
                    ),
                    child: Text(
                      'e.g: Eygpt, Cario, Al- Mu’izz',
                      style: TextStyles.font16GreyRegular,
                    ),
                  ),
                  verticalPadding(
                    27,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                          top: 2,
                        ),
                        child: Text(
                          'Auto-Match with nearby users',
                          style: TextStyles.font16GreyRegular
                              .copyWith(color: Colors.black),
                        ),
                      ),
                      Switch(
                        inactiveTrackColor: Colors.grey,
                        activeColor: Colors.blue,
                        value: true,
                        onChanged: (value) {

                        },
                      ),
                    ],
                  ),

                

                  verticalPadding(29),

                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 15,
                    ),
                    child: MaterialButton(
                      height: 60,
                      minWidth: double.infinity,
                      color: AppColors.primaryBlue,
                      textColor: Colors.white,
                      onPressed: () {
                        if (formkeyresource.currentState!.validate()) {
                          //context.read<HomeCubit>().emitAddNewPost();
                          //sendShelterToServer();
                        }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        'Post',
                        style: TextStyles.font18WhiteBold.copyWith(fontSize: 24,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
