import 'package:bookly/Core/widgets/Custom_ErrMessage.dart';
import 'package:bookly/Core/widgets/Custom_Loading_Indicator.dart';
import 'package:bookly/Features/Home/presentation/Widgets/Custom_bookCard.dart';
import 'package:bookly/Features/manager/Featured_Books/feattured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Custom_ListView extends StatelessWidget {
  const Custom_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatturedBooksCubit, FeatturedBooksState>(
      builder: (context, state) {
        if (state is FeatturedBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(top: 21),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .25,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: BookCard(
                      Image: state.Books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is FeatturedBooksFailure) {
          return ErrMessage(ErrorMessage: state.ErrorMessage);
        } else {
          return const Loading_Indicator();
        }
      },
    );
  }
}
