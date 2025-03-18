import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/helper/show_dialog.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/core/widgets/loading.dart';
import 'package:salam_hack/features/crisis/logic/cubit/crisis_cubit.dart';
import 'package:salam_hack/features/crisis/logic/cubit/crisis_state.dart';

class AddCrisisScreen extends StatefulWidget {
  const AddCrisisScreen({Key? key}) : super(key: key);

  @override
  _AddCrisisScreenState createState() => _AddCrisisScreenState();
}

class _AddCrisisScreenState extends State<AddCrisisScreen> {
  bool isResolved = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Crisis", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: BlocListener<CrisisCubit, CrisisState>(
        listener: (context, state) {
          if (state is CrisisAdded) {
            setState(() {
              isLoading = false;
            });
            print('Crisis Added');
            showCustomDialog(
              context,
              title: '${state.crisis.type} Crisis Generated Successfully',
              description: '',
              isSuccess: true,
            );
          } else if (state is CrisisError) {
            setState(() {
              isLoading = false;
            });
            showCustomDialog(
              context,
              title: 'Error Generating your Crisis',
              description: state.error,
              isSuccess: false,
            );
          } else if (state is Loading) {
            setState(() {
              isLoading = true;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDescriptionField(),
                  const SizedBox(height: 12),
                  _buildTextField(
                      context.read<CrisisCubit>().locationController,
                      "Location"),
                  const SizedBox(height: 40),
                  _buildSubmitButton(),
                ],
              ),
              if (isLoading) LoadingPage(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDescriptionField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: context.read<CrisisCubit>().descriptionController,
            maxLines: 3,
            decoration: InputDecoration(
              hintText: "Description",
              border: InputBorder.none,
            ),
          ),
          const SizedBox(height: 6),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     const SizedBox(width: 6),
          //     IconButton(
          //       onPressed: () {
          //         context.read<CrisisCubit>().emitAddNewCrisis();
          //       },
          //       icon: Icon(
          //         Icons.smart_toy,
          //         color: AppColors.primaryBlue,
          //       ),
          //     ),
          //   ],
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     Text("Generate post with AI", style: TextStyle(fontSize: 12)),
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String hint) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildResolvedSwitch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Resolved",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        Switch(
          value: isResolved,
          activeColor: Colors.blue,
          onChanged: (value) {
            setState(() {
              isResolved = value;
              context.read<CrisisCubit>().isResolved = value;
            });
          },
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: () {
          // Implement submit action
          context.read<CrisisCubit>().emitAddNewCrisis();
        },
        child: Text(
          //"⚡️
          "✨ Generate Post",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
