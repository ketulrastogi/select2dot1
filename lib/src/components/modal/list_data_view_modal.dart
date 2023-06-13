import 'package:flutter/material.dart';
import 'package:select2dot1/src/components/modal/category_item_modal.dart';
import 'package:select2dot1/src/components/modal/category_name_modal.dart';
import 'package:select2dot1/src/components/modal/loading_data_modal.dart';
import 'package:select2dot1/src/components/modal/search_empty_info_modal.dart';
import 'package:select2dot1/src/controllers/search_controller.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/models/single_category_model.dart';
import 'package:select2dot1/src/models/single_item_category_model.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/modal/category_item_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/category_name_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/list_data_view_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/loading_data_modal_settings.dart';
import 'package:select2dot1/src/settings/modal/search_empty_info_modal_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class ListDataViewModal extends StatefulWidget {
  final ScrollController scrollController;
  final SearchControllerSelect2dot1 searchController;
  final SelectDataController selectDataController;
  final LoadingDataModalBuilder? loadingDataModalBuilder;
  final LoadingDataModalSettings loadingDataModalSettings;
  final SearchEmptyInfoModalBuilder? searchEmptyInfoModalBuilder;
  final SearchEmptyInfoModalSettings searchEmptyInfoModalSettings;
  final ListDataViewModalBuilder? listDataViewModalBuilder;
  final ListDataViewModalSettings listDataViewModalSettings;
  final CategoryItemModalBuilder? categoryItemModalBuilder;
  final CategoryItemModalSettings categoryItemModalSettings;
  final CategoryNameModalBuilder? categoryNameModalBuilder;
  final CategoryNameModalSettings categoryNameModalSettings;
  final GlobalSettings globalSettings;

  const ListDataViewModal({
    super.key,
    required this.scrollController,
    required this.searchController,
    required this.selectDataController,
    required this.loadingDataModalBuilder,
    required this.loadingDataModalSettings,
    required this.searchEmptyInfoModalBuilder,
    required this.searchEmptyInfoModalSettings,
    required this.listDataViewModalBuilder,
    required this.listDataViewModalSettings,
    required this.categoryItemModalBuilder,
    required this.categoryItemModalSettings,
    required this.categoryNameModalBuilder,
    required this.categoryNameModalSettings,
    required this.globalSettings,
  });

  @override
  State<ListDataViewModal> createState() => _ListDataViewModalState();
}

class _ListDataViewModalState extends State<ListDataViewModal> {
  // It's okey.
  // ignore: avoid-late-keyword
  late Stream<List<Widget>> streamController = dataStreamFunc(isInit: true);

  @override
  void initState() {
    super.initState();
    widget.searchController.addListener(searchListener);
  }

  @override
  void dispose() {
    widget.searchController.removeListener(searchListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.listDataViewModalBuilder != null) {
      // This can't be null anyways.
      // ignore: avoid-non-null-assertion
      return widget.listDataViewModalBuilder!(
        context,
        ListDataViewModalDetails(
          scrollController: widget.scrollController,
          searchController: widget.searchController,
          selectDataController: widget.selectDataController,
          categoryNameModal: _categoryNameModal,
          categoryItemModal: _categoryItemModal,
          searchEmptyInfoModal: _searchEmptyInfoModal,
          loadingDataModal: _loadingDataModal,
          globalSettings: widget.globalSettings,
        ),
      );
    }

    return StreamBuilder<Object>(
      stream: streamController,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return LoadingDataModal(
            loadingDataModalBuilder: widget.loadingDataModalBuilder,
            loadingDataModalSettings: widget.loadingDataModalSettings,
            globalSettings: widget.globalSettings,
          );
        }

        if ((snapshot.data as List).isEmpty) {
          return SearchEmptyInfoModal(
            searchEmptyInfoModalBuilder: widget.searchEmptyInfoModalBuilder,
            searchEmptyInfoModalSettings: widget.searchEmptyInfoModalSettings,
            globalSettings: widget.globalSettings,
          );
        }

        return Container(
          margin: widget.listDataViewModalSettings.margin,
          padding: widget.listDataViewModalSettings.padding,
          child: CustomScrollView(
            shrinkWrap: true,
            controller: widget.scrollController,
            slivers: <SliverList>[
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => (snapshot.data as List<Widget>)[index],
                  childCount: (snapshot.data as List<Widget>).length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void searchListener() {
    if (mounted) {
      setState(() {
        streamController = dataStreamFunc();
      });
    }
  }

  Stream<List<Widget>> dataStreamFunc({bool isInit = false}) async* {
    var listDataViewChildren = await Future.wait([
      dataFuture(),
      if (!isInit)
        Future.delayed(
          widget.listDataViewModalSettings.minLoadDuration,
        ),
    ]);

    yield listDataViewChildren.first as List<Widget>;
  }

  Future<List<Widget>> dataFuture() async {
    List<Widget> listDataViewChildren = [];

    for (int indexCategory = 0;
        indexCategory < widget.searchController.getResults.length;
        indexCategory++) {
      listDataViewChildren.add(
        CategoryNameModal(
          singleCategory: widget.searchController.getResults[indexCategory],
          selectDataController: widget.selectDataController,
          categoryNameModalBuilder: widget.categoryNameModalBuilder,
          categoryNameModalSettings: widget.categoryNameModalSettings,
          globalSettings: widget.globalSettings,
        ),
      );
      for (int indexItem = 0;
          indexItem <
              widget.searchController.getResults[indexCategory]
                  .singleItemCategoryList.length;
          indexItem++) {
        listDataViewChildren.add(
          CategoryItemModal(
            singleItemCategory: widget.searchController
                .getResults[indexCategory].singleItemCategoryList[indexItem],
            selectDataController: widget.selectDataController,
            categoryItemModalBuilder: widget.categoryItemModalBuilder,
            categoryItemModalSettings: widget.categoryItemModalSettings,
            globalSettings: widget.globalSettings,
          ),
        );
      }
    }

    return listDataViewChildren;
  }

  Widget _categoryNameModal(SingleCategoryModel i) => CategoryNameModal(
        singleCategory: i,
        selectDataController: widget.selectDataController,
        categoryNameModalBuilder: widget.categoryNameModalBuilder,
        categoryNameModalSettings: widget.categoryNameModalSettings,
        globalSettings: widget.globalSettings,
      );

  Widget _categoryItemModal(Choice i) => CategoryItemModal(
        singleItemCategory: i,
        selectDataController: widget.selectDataController,
        categoryItemModalBuilder: widget.categoryItemModalBuilder,
        categoryItemModalSettings: widget.categoryItemModalSettings,
        globalSettings: widget.globalSettings,
      );

  Widget _searchEmptyInfoModal() => SearchEmptyInfoModal(
        searchEmptyInfoModalBuilder: widget.searchEmptyInfoModalBuilder,
        searchEmptyInfoModalSettings: widget.searchEmptyInfoModalSettings,
        globalSettings: widget.globalSettings,
      );

  Widget _loadingDataModal() => LoadingDataModal(
        loadingDataModalBuilder: widget.loadingDataModalBuilder,
        loadingDataModalSettings: widget.loadingDataModalSettings,
        globalSettings: widget.globalSettings,
      );
}
