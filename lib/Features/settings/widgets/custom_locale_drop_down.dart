import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiktok_flutter_clone/Core/Shared/cubit/locale/locale_manger_cubit.dart';

class CustomLocaleDropDown extends StatelessWidget {
  const CustomLocaleDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: const Text(
          "select Language",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        trailing: BlocBuilder<LocaleMangerCubit, LocaleMangerState>(
          builder: (context, state) {
            return DropdownButton(
                value: (state is LocaleSuccesState)
                    ? state.locale.languageCode
                    : null,
                items: [
                  "ar",
                  "en",
                  "hi",
                  "ja",
                ].map<DropdownMenuItem<String>>((String value) {
                  String languageName = "";

                  switch (value) {
                    case "ar":
                      languageName = "اللغة العربية";
                      break;
                    case "en":
                      languageName = "English";
                      break;
                    case "hi":
                      languageName = "हिन्दी";
                      break;
                    case "ja":
                      languageName = "日本語";
                      break;
                  }

                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      languageName,
                    ),
                  );
                }).toList(),
                onChanged: (val) {
                  if (val != null) {
                    BlocProvider.of<LocaleMangerCubit>(context)
                        .setCachLocal(val);
                  }
                });
          },
        ));
  }
}
