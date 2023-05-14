import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serach_country/application/search_country/search_country_bloc.dart';
import 'package:serach_country/infrastructure/search_country/dtos/country_dtos.dart';
import 'package:serach_country/presentation/routes/router.gr.dart';

class CountryList extends StatelessWidget {
  CountryList({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0.3,
          title: Container(
            height: 40,
            decoration: const BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.white30,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 0.0),
                ),
              ],
              color: Colors.white,
            ),
            child: TextField(
              controller: searchController,
              keyboardType: TextInputType.text,
              onChanged: (value){
                BlocProvider.of<SearchCountryBloc>(context).add(SearchCountryEvent.searchCountryList(value));
              },
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: "Search country",
                hintStyle: const TextStyle(color: Colors.black45,fontSize: 16),
                contentPadding: const EdgeInsets.only(top: 10,left: 16),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(3),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
        ),
      ),
      body: BlocBuilder<SearchCountryBloc,SearchCountryState>(
        builder: (context,state){
          return ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const ScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 10),
            children: [
              if(!state.isLoading && state.countryList.isNotEmpty)
                InkWell(
                  onTap: (){
                    searchController.clear();
                    FocusManager.instance.primaryFocus?.unfocus();
                    BlocProvider.of<SearchCountryBloc>(context).add(const SearchCountryEvent.searchCountryList(''));
                    context.router.pushNamed('selectLanguage');
                  },
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.only(bottom: 16),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black,width: 1),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.filter_list),
                      title: const Text('Filter By Language'),
                      trailing: state.isFilterApplied?
                      IconButton(
                        onPressed: (){
                          BlocProvider.of<SearchCountryBloc>(context).add(const SearchCountryEvent.clearFilterCheckBox());
                        },
                        icon: const Icon(Icons.clear),
                      ):const SizedBox(),
                    ),
                  ),
                ),
              if(state.isLoading)
                SizedBox(
                  height: MediaQuery.of(context).size.height/1.2,
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              if(state.isError)
                SizedBox(
                  height: MediaQuery.of(context).size.height/1.2,
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                    child: Text('Something went wrong please try again!'),
                  ),
                ),
              if(state.countryList.isEmpty && !state.isLoading)
                SizedBox(
                  height: MediaQuery.of(context).size.height/1.2,
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                    child: Text('No country found'),
                  ),
                ),
              if(state.countryListForSearch.isEmpty && state.isSearching)
                SizedBox(
                  height: MediaQuery.of(context).size.height/1.2,
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                    child: Text('No country found'),
                  ),
                ),
              ListView.builder(
                physics: const ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: state.isSearching? state.countryListForSearch.length: state.isFilterApplied? state.countryListForFilter.length :state.countryList.length,
                itemBuilder: (context,index){
                  CountryDto country = state.isSearching? state.countryListForSearch[index] : state.isFilterApplied? state.countryListForFilter[index] :state.countryList[index];
                  return ListTile(
                    onTap: (){
                      context.router.push(CountryDetailsRoute(details: country));
                    },
                    leading: Text(country.emoji),
                    title: Text(country.name),
                    subtitle: Text(country.language.isNotEmpty?country.language[0].name:""),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
