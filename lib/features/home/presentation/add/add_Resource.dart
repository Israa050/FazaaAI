import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/themes/styles.dart';
import '../../../../core/widgets/custom_image_container.dart';
import '../../../auth/widgets/custom_text_form_field.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';

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

      body: BlocListener<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state is addNewPost) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Post added successfully ✅'),
              ),
            );
          } else if (state is Error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Something went wrong ❌'),
              ),
            );
          }
        },
        child: SafeArea(
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    verticalPadding(10),

                    CustomImageContainer(),

                    verticalPadding(
                      15,
                    ),
                    AppTextFormField(
                      hintText: 'Title',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                      controller: context.read<HomeCubit>().titleController,
                    ),
                    verticalPadding(
                      15,
                    ),

                    AppTextFormField(
                      hintText: 'Description',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                      controller:
                          context.read<HomeCubit>().descriptionController,
                    ),
                    verticalPadding(
                      15,
                    ),

                    AppTextFormField(
                      hintText: 'Locaton',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                      controller: context.read<HomeCubit>().locationController,
                    ),
                    verticalPadding(
                      15,
                    ),

                    AppTextFormField(
                      hintText: 'Quantity',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                      controller: context.read<HomeCubit>().quantityController,
                    ),
                    verticalPadding(
                      15,
                    ),

                    AppTextFormField(
                      hintText: 'Phone',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                      controller: context.read<HomeCubit>().phoneController,
                    ),
                    verticalPadding(
                      15,
                    ),

                    AppTextFormField(
                      hintText: 'Type',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'This field is required';
                        }
                        return null;
                      },
                      controller: context.read<HomeCubit>().typeController,
                    ),
                    verticalPadding(
                      15,
                    ),

                    // // TextFormField(
                    // //  // controller: context.read<HomeCubit>().titleController,
                    // //   decoration: const InputDecoration(
                    // //       hintText: 'Title',
                    // //       filled: true,
                    // //       fillColor: Colors.white,
                    // //       border: OutlineInputBorder(
                    // //           borderSide:
                    // //               BorderSide(color: Colors.white, width: 40.0),
                    // //           borderRadius:
                    // //               BorderRadius.all(Radius.circular(20.0)))),
                    // //   validator: (value) {
                    // //     if (value == null || value.isEmpty) {
                    // //       return 'Please enter a title';
                    // //     }
                    // //     return null;
                    // //   },
                    // // ),
                    // verticalPadding(15),
                    // TextFormField(
                    //  // controller: context.read<HomeCubit>().descriptionController,
                    //   decoration: const InputDecoration(
                    //       hintText: 'Description',
                    //       filled: true,
                    //       fillColor: Colors.white,
                    //       border: OutlineInputBorder(
                    //           borderSide:
                    //               BorderSide(color: Colors.white, width: 40.0),
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(20.0)))),
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please enter a description';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    // verticalPadding(15),

                    // TextFormField(
                    // //  controller: context.read<HomeCubit>().locationController,
                    //   decoration: const InputDecoration(
                    //       hintText: 'Location',
                    //       filled: true,
                    //       fillColor: Colors.white,
                    //       border: OutlineInputBorder(
                    //           borderSide: BorderSide(color: Colors.white),
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(16.0)))),
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please enter a location';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    // verticalPadding(15),

                    // TextFormField(
                    //  // controller: context.read<HomeCubit>().quantityController,
                    //   decoration: const InputDecoration(
                    //     hintText: 'Quantity',
                    //     filled: true,
                    //     fillColor: Colors.white,
                    //     border: OutlineInputBorder(
                    //         borderSide: BorderSide(color: Colors.white),
                    //         borderRadius:
                    //             BorderRadius.all(Radius.circular(16.0))),
                    //   ),
                    //   keyboardType: TextInputType.number,
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please enter a quantity';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    // verticalPadding(15),

                    // TextFormField(
                    //  // controller: context.read<HomeCubit>().phoneController,
                    //   decoration: const InputDecoration(
                    //       hintText: 'Phone',
                    //       filled: true,
                    //       fillColor: Colors.white,
                    //       border: OutlineInputBorder(
                    //           borderSide: BorderSide(color: Colors.white),
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(16.0)))),
                    //   keyboardType: TextInputType.phone,
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please enter a phone number';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    // verticalPadding(15),

                    // TextFormField(
                    //   //controller: context.read<HomeCubit>().typeController,
                    //   decoration: const InputDecoration(
                    //       hintText: 'Type',
                    //       filled: true,
                    //       fillColor: Colors.white,
                    //       border: OutlineInputBorder(
                    //           borderSide: BorderSide(color: Colors.white),
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(16.0)))),
                    //   keyboardType: TextInputType.phone,
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please enter post\'s type';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    verticalPadding(15),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'status',
                              style: TextStyles.font16BlackSemiBold,
                            ),
                            verticalPadding(6),
                            Container(
                              height: 100,
                              width: 120,
                              child: DropdownButtonFormField<String>(
                                // isExpanded: true,
                                style: TextStyles.font14GreyRegular,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.blueGrey,
                                      width: 1.3,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  hintText: 'pending',
                                  filled: true,
                                  fillColor: AppColors.moreLightGray,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blueGrey, width: 20.0),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                ),
                                items: <String>[
                                  'pending ',
                                  'done'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedStatus = newValue;
                                    context.read<HomeCubit>().myStatus =
                                        newValue ?? 'pending';
                                  });
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please select a status';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'urgency',
                              style: TextStyles.font16BlackSemiBold,
                            ),
                            verticalPadding(6),
                            Container(
                              height: 100,
                              width: 110,
                              child: DropdownButtonFormField<String>(
                                isExpanded: true,
                                style: TextStyles.font14GreyRegular,
                                decoration: InputDecoration(
                                  hintText: 'High',
                                  filled: true,
                                  fillColor: AppColors.moreLightGray,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.blueGrey,
                                      width: 1.3,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blueGrey, width: 20.0),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                ),
                                items: <String>[
                                  'High',
                                  'Medium',
                                  'Low'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedUrgency = newValue;
                                    context.read<HomeCubit>().myUrgency =
                                        newValue ?? 'Low';
                                  });
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please select a urgency';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    verticalPadding(5),

                    // Column(
                    //   children: [
                    //     Text(
                    //       'Status',
                    //       style: TextStyle(fontSize: 30),
                    //     ),
                    //     Container(
                    //       height: 100,
                    //       width: 130,
                    //       child: DropdownButtonFormField<String>(
                    //         isExpanded: true,
                    //         decoration: const InputDecoration(
                    //           hintText: 'Available',
                    //           filled: true,
                    //           //  fillColor: Colors.grey,
                    //           border: OutlineInputBorder(
                    //             borderSide:
                    //                 BorderSide(color: Colors.grey, width: 10.0),
                    //             borderRadius:
                    //                 BorderRadius.all(Radius.circular(10.0)),
                    //           ),
                    //         ),
                    //         items: <String>['Available', 'Done']
                    //             .map<DropdownMenuItem<String>>((String value) {
                    //           return DropdownMenuItem<String>(
                    //             value: value,
                    //             child: Text(value),
                    //           );
                    //         }).toList(),
                    //         onChanged: (String? newValue) {
                    //           setState(() {
                    //             selectedStatus = newValue;
                    //           });
                    //         },
                    //         validator: (value) {
                    //           if (value == null || value.isEmpty) {
                    //             return 'Please select a status';
                    //           }
                    //           return null;
                    //         },
                    //       ),
                    //     ),
                    //   ],
                    // ),

                    verticalPadding(15),

                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 15,
                      ),
                      child: MaterialButton(
                        height: 50,
                        minWidth: 400,
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
                          style: TextStyles.font18WhiteBold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
