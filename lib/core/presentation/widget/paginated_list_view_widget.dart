import 'dart:developer';

import 'package:clean_arc/core/presentation/util/app_dimensions.dart';
import 'package:flutter/material.dart';

class PaginatedListView extends StatefulWidget {
  final ScrollController scrollController;
  final Function(int? page) onPaginate;
  final int? totalSize;
  final int? from;
  final Widget itemView;
  final bool enabledPagination;
  final bool reverse;

  const PaginatedListView({
    super.key,
    required this.scrollController,
    required this.onPaginate,
    required this.totalSize,
    required this.from,
    required this.itemView,
    this.enabledPagination = true,
    this.reverse = false,
  });

  @override
  State<PaginatedListView> createState() => _PaginatedListViewState();
}

class _PaginatedListViewState extends State<PaginatedListView> {
  int? _offset;
  late List<int?> _offsetList;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    _offset = 1;
    _offsetList = [1];

    widget.scrollController.addListener(() {
      if (widget.scrollController.position.pixels ==
              widget.scrollController.position.maxScrollExtent &&
          widget.totalSize != null &&
          !_isLoading &&
          widget.enabledPagination) {
        if (mounted) {
          _paginate();
        }
      }
    });
  }

  void _paginate() async {
    int pageSize = (widget.totalSize! / 10).ceil();
    log("====>offset==> $_offset/ $pageSize");
    if (_offset! < pageSize && !_offsetList.contains(_offset! + 1)) {
      setState(() {
        _offset = _offset! + 1;
        _offsetList.add(_offset);
        _isLoading = true;
      });
      await widget.onPaginate(_offset);
      setState(() {
        _isLoading = false;
      });
    } else {
      if (_isLoading) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    log("offset777==>${widget.from}");
    if (widget.from != null) {
      log("offset88==>${widget.from}");
      _offset = widget.from;
      _offsetList = [];
      for (int index = 1; index <= widget.from!; index++) {
        _offsetList.add(index);
      }
    }

    return Column(children: [
      widget.reverse ? const SizedBox() : widget.itemView,
      ((widget.totalSize == null ||
              _offset! >= (widget.totalSize! / 10).ceil() ||
              _offsetList.contains(_offset! + 1)))
          ? const SizedBox()
          : Center(
              child: Padding(
                  padding: (_isLoading)
                      ? const EdgeInsets.all(AppDimensions.paddingSizeSmall)
                      : EdgeInsets.zero,
                  child: _isLoading
                      ? const CircularProgressIndicator()
                      : const SizedBox())),
      widget.reverse ? widget.itemView : const SizedBox(),
    ]);
  }
}
