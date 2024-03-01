import 'package:flutter/material.dart';
import 'package:smartmediation/core/models/statusRequest.dart';

class HandlingDataView extends StatelessWidget {
  final StatuSRequest statuSRequest;
  final Widget widget;
  const HandlingDataView(
      {super.key, required this.statuSRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statuSRequest == StatuSRequest.ServerOffline
        ? Center(
            child: Text('ServerOffline'),
          )
        : statuSRequest == StatuSRequest.ServerFailure
            ? Center(
                child: Text('ServerFailure'),
              )
            : statuSRequest == StatuSRequest.Loading
                ? Center(
                    child: Text('Loading'),
                  )
                : widget;
  }
}

