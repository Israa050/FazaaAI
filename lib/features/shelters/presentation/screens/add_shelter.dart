import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/themes/styles.dart';
import 'package:salam_hack/features/auth/widgets/custom_text_button.dart';
import 'package:salam_hack/features/auth/widgets/custom_text_form_field.dart';
import 'package:salam_hack/features/shelters/logic/cubit/shelter_cubit.dart';
import 'package:salam_hack/features/shelters/logic/cubit/shelter_state.dart';

class AddShelterScreen extends StatefulWidget {
  const AddShelterScreen({super.key});

  @override
  State<AddShelterScreen> createState() => _AddShelterScreenState();
}

class _AddShelterScreenState extends State<AddShelterScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //  const Color.fromRGBO(231, 228, 228, 1),
      body: BlocListener<ShelterCubit, ShelterState>(
        listener: (context, state) {
          if (state is AddNewShelter) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Shelter added successfully ✅'),
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
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            //color: Colors.grey,
            child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Add A New Shelter',
                      style: TextStyles.font20RedBold
                          .copyWith(color: Colors.black),
                      //  TextStyle(
                      //   fontSize: 30,
                      //   fontWeight: FontWeight.normal,
                      // ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20.0),

                    AppTextFormField(
                      hintText: 'name',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                           return 'This field is required';
                         }
                         return null;
                      },
                      controller: context.read<ShelterCubit>().nameController,
                    ),

                    // TextFormField(
                    //   controller: context.read<ShelterCubit>().nameController,
                    //   decoration: const InputDecoration(
                    //       hintText: 'Name',
                    //       filled: true,
                    //       fillColor: Colors.white,
                    //       border: OutlineInputBorder(
                    //           borderSide: BorderSide(color: Colors.white),
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(20.0)))),
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please enter a name';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    const SizedBox(height: 16.0),
                    AppTextFormField(
                      hintText: 'location',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                           return 'This field is required';
                         }
                         return null;
                      },
                      controller:
                          context.read<ShelterCubit>().locationController,
                    ),
                    // TextFormField(
                    //   controller:
                    //       context.read<ShelterCubit>().locationController,
                    //   decoration: const InputDecoration(
                    //       hintText: 'Location',
                    //       filled: true,
                    //       fillColor: Colors.white,
                    //       border: OutlineInputBorder(
                    //           borderSide: BorderSide(color: Colors.white),
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(20.0)))),
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please enter a location';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    const SizedBox(height: 16.0),
                    AppTextFormField(
                      hintText: 'facilities',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                           return 'This field is required';
                         }
                         return null;
                      },
                      controller:
                          context.read<ShelterCubit>().facilitiesController,
                    ),
                    // TextFormField(
                    //   controller:
                    //       context.read<ShelterCubit>().facilitiesController,
                    //   decoration: const InputDecoration(
                    //       labelText: 'Facilities',
                    //       filled: true,
                    //       fillColor: Colors.white,
                    //       border: OutlineInputBorder(
                    //           borderSide: BorderSide(color: Colors.white),
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(20.0)))),
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please enter facilities';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    const SizedBox(height: 16.0),
                    // TextFormField(
                    //   decoration: const InputDecoration(
                    //       labelText: 'Accessibility',
                    //       filled: true,
                    //       fillColor: Colors.white,
                    //       border: OutlineInputBorder(
                    //           borderSide: BorderSide(color: Colors.white),
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(20.0)))),
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please enter accessibility information';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    // const SizedBox(height: 16.0),
                    AppTextFormField(
                      hintText: 'capacity',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                           return 'This field is required';
                         }
                         return null;
                      },
                      controller:
                          context.read<ShelterCubit>().capacityController,
                    ),
                    // TextFormField(
                    //   controller:
                    //       context.read<ShelterCubit>().capacityController,
                    //   decoration: const InputDecoration(
                    //       labelText: 'Capacity',
                    //       filled: true,
                    //       fillColor: Colors.white,
                    //       border: OutlineInputBorder(
                    //           borderSide: BorderSide(color: Colors.white),
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(20.0)))),
                    //   keyboardType: TextInputType.number,
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please enter capacity';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    const SizedBox(height: 16.0),
                    AppTextFormField(
                      hintText: 'current occupancy',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                           return 'This field is required';
                         }
                         return null;
                      },
                      controller: context
                          .read<ShelterCubit>()
                          .currentOccupancyController,
                    ),
                    // TextFormField(
                    //   controller: context
                    //       .read<ShelterCubit>()
                    //       .currentOccupancyController,
                    //   decoration: const InputDecoration(
                    //       labelText: 'Current Occupancy',
                    //       filled: true,
                    //       fillColor: Colors.white,
                    //       border: OutlineInputBorder(
                    //           borderSide: BorderSide(color: Colors.white),
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(20.0)))),
                    //   keyboardType: TextInputType.number,
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please enter current occupancy';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    const SizedBox(height: 16.0),
                    AppTextFormField(
                      hintText: 'phone',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                           return 'This field is required';
                         }
                         return null;
                      },
                      controller: context.read<ShelterCubit>().nameController,
                    ),
                    // TextFormField(
                    //   controller:
                    //       context.read<ShelterCubit>().contactInfoController,
                    //   decoration: const InputDecoration(
                    //       hintText: 'Phone',
                    //       filled: true,
                    //       fillColor: Colors.white,
                    //       border: OutlineInputBorder(
                    //           borderSide: BorderSide(color: Colors.white),
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(20.0)))),
                    //   keyboardType: TextInputType.phone,
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please enter a phone number';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    const SizedBox(height: 16.0),
                    // TextFormField(
                    //   decoration: const InputDecoration(
                    //       labelText: 'Map Link',
                    //       // labelStyle: TextStyle(color: Colors.black),
                    //       filled: true,
                    //       fillColor: Colors.white,
                    //       border: OutlineInputBorder(
                    //           borderSide: BorderSide(color: Colors.white),
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(20.0)))),
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please enter a map link';
                    //     }
                    //     return null;
                    //   },
                    // ),
                    const SizedBox(height: 30.0),
                    AppTextButton(
                      buttonText: 'Submit',
                      textStyle: TextStyles.font18BlackSemiBold
                          .copyWith(color: Colors.white),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<ShelterCubit>().emitAddNewShelter();
                        }
                      },
                    ),
                    // MaterialButton(
                    //   height: 50,
                    //   minWidth: 300,
                    //   color: Colors.blue,
                    //   textColor: Colors.white,
                    //   onPressed: () {
                    //     if(_formKey.currentState!.validate()){

                    //     }
                    //     // Navigator.of(context).pushReplacement(
                    //     //   MaterialPageRoute(
                    //     //     builder: (ctx) => Homepage(),
                    //     //   ),
                    //     // );
                    //   },
                    //   child: const Text(
                    //     'Post',
                    //     style: TextStyle(fontSize: 20),
                    //   ),
                    // ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
