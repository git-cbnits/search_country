import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/search_country/search_country_bloc.dart';
import '../../infrastructure/search_country/dtos/filer_model.dart';

class SelectLanguagePage extends StatelessWidget {
  const SelectLanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCountryBloc,SearchCountryState>(
      builder: (context,state){
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text('Select Language'),
          ),
          body: BlocBuilder<SearchCountryBloc,SearchCountryState>(
            builder: (context,state){
              return SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Filter by language",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                      physics: const ScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: state.filterList.length,
                      itemBuilder: (context,index){
                        FilterModel filter = state.filterList[index];
                        return Row(
                          children: [
                            Text(filter.name),
                            Checkbox(
                              value: filter.isSelected,
                              onChanged: (newValue) {
                                BlocProvider.of<SearchCountryBloc>(context).add(SearchCountryEvent.changeFilterCheckBox(index));
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                              activeColor: Colors.white,
                              checkColor: Colors.blue,
                              side: MaterialStateBorderSide.resolveWith((states) => const BorderSide(width: 2.0, color: Colors.blue),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              );
            },
          ),
          bottomSheet:  SizedBox(
            height: 40,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              child: const Text("Apply"),
              onPressed: (){
                if(state.filterList.indexWhere((element) => element.isSelected)>-1){
                  BlocProvider.of<SearchCountryBloc>(context).add(const SearchCountryEvent.filterCountryList());
                  Navigator.of(context).pop();
                }else{
                  var snackBar = const SnackBar(content: Text('Please select a language'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
            ),
          ),
        );
      },
    );
  }
}
