import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/helper/show_dialog.dart';
import 'package:salam_hack/core/widgets/custom_dialog.dart';
import 'package:salam_hack/core/widgets/custom_drop_down_menu.dart';
import 'package:salam_hack/core/widgets/loading.dart';
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
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Add Post',
            style: TextStyles.font20RedBold.copyWith(color: Colors.black),
          ),
          centerTitle: true,
          ),
      // const Color.fromRGBO(231, 225, 225, 1),

      body:
          BlocListener<PostCubit, PostState>(
            listener: (context, state) {
              if (state is addNewPost) {
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(
                //     content: Text('Post added successfully ✅'),
                //   ),
                // );
                 setState(() {
              isLoading = false;
            });

            showCustomDialog(
              context,
              title: '${state.post.type} Post Generated Successfully ✅',
              description: '',
              isSuccess: true,
            );

              } else if (state is Error) {
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(
                //     content: Text('Something went wrong ❌'),
                //   ),
                // );
                 setState(() {
              isLoading = false;
            });

                showCustomDialog(
              context,
              title: 'Error Generating your post',
              description: state.error,
              isSuccess: false,
            );
              }else if(state is Loading){
                 setState(() {
              isLoading = true;
            });
              }
            },
            child:
          SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 15,
          ),
          child: Form(
            key: formkeyresource,
            child: Stack(
              children:[ SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   // verticalPadding(10),
                
                   // CustomImageContainer(),
                
                    verticalPadding(
                      18,
                    ),
                
                    CustomDropdownMenu(
                      items: ['Offer', 'Request'],
                      hintText: 'Type',
                      onChanged: (value) {
                        context.read<PostCubit>().myType = value!;
                      },
                    ),
                
                    // verticalPadding(
                    //   18,
                    // ),
                
                    // CustomDropdownMenu(
                    //   items: ['High', 'Meduim', 'Low'],
                    //   hintText: 'Urgency',
                    //   onChanged: (value) {
                    //     context.read<PostCubit>().myUrgency = value!;
                    //   },
                    // ),
                
                    // verticalPadding(
                    //   18,
                    // ),
                
                    // CustomDropdownMenu(
                    //   items: ['In Progress', 'Done'],
                    //   hintText: 'Status',
                    //   onChanged: (value) {
                    //     context.read<PostCubit>().myStatus = value!;
                    //   },
                    // ),
                
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
                      controller: context.read<PostCubit>().userDescriptionController,
                     //image: Image.asset('assets/icons/test_two.png',color: AppColors.primaryBlue,),
                    // onIconPressed: () {},
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.end,
                    //   children: [
                    //     Padding(
                    //       padding: EdgeInsets.only(
                    //         right: 10,
                    //         top: 5,
                    //       ),
                    //       child: Text(
                    //         'Generate post with AI',
                    //         style: TextStyles.font16GreyRegular,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  
                    // AppTextFormField(
                    //   hintText: 'title',
                    //   validator: (value) {
                    //     // if (value == null || value.isEmpty) {
                    //     //   return 'This field is required';
                    //     // }
                    //     return null;
                    //   },
                    //   controller: context.read<PostCubit>().titleController,
                    // ),
                   // verticalPadding(
                    //  18,
                    //),
                
                    // AppTextFormField(
                    //   hintText: 'quantity',
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'This field is required';
                    //     }
                    //     return null;
                    //   },
                    //   //controller: context.read<HomeCubit>().locationController,
                    // ),
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
                     controller: context.read<PostCubit>().phoneController,
                    ),
                    verticalPadding(
                      18,
                    ),
                
                    AppTextFormField(
                      hintText: 'city',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                      controller: context.read<PostCubit>().locationController,
                    ),
                   
                    verticalPadding(29),
                
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 15,
                      ),
                      child: MaterialButton(
                        height: 60,
                        minWidth: double.infinity,
                        color: Colors.blue,
                        textColor: Colors.white,
                        onPressed: () {
                          if (formkeyresource.currentState!.validate()) {
                            context.read<PostCubit>().emitAddNewPost();
                            //sendShelterToServer();
                          }
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Text(
                          '✨ Generate Post',
                          style: TextStyles.font18WhiteBold.copyWith(fontSize: 24,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                if (isLoading) LoadingPage(),

              ],
            ),
          ),
        ),
      ),
    ),
    );
  }
}
