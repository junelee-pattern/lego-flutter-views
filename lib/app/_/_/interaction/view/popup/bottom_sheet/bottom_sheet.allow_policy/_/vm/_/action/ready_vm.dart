import 'package:flutter/material.dart';

import '../../../../../../../../../../../../util/start_app.dart';
import '../../../component/_/config/params.dart';
import '../util.dart';
import '../vm.dart';

Future<void> readyVMAction(BuildContext context, NewParams params,
    {String? tag}) async {
  NewVMUtil.registeredVM(params, tag: tag);
  NewVM viewModel = NewVMUtil.vm(tag: tag);

  // get information here that you need to get
  viewModel.ItemAllows = [];
  for (var i = 0; i < viewModel.itemCount; i++) {
    if (viewModel.totalAllow == true) {
      viewModel.ItemAllows.add(true);
    } else {
      viewModel.ItemAllows.add(false);
    }
  }

  viewModel.util.notify();
}
