library demo;

import 'package:vcl/vcl.dart';

part 'TMainForm.dart';
part 'TUserDialog.dart';


void main() async
{
  var form = TMainForm()
    ..Caption = 'MainForm'
    ..SetClientSize((Screen.Width*0.6).truncate(), (Screen.Height*0.6).truncate());
  await form.ShowModal();
}
