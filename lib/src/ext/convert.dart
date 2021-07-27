part of vcl;

bool toBoolDef(dynamic val, bool def) =>
  tryToBool(val, def)!;

bool? tryToBool(dynamic val, [bool? def] )
{
  if(val==null)
    return def;
  if(val is bool)
    return val;
  if(val is int)
    return val!=0;
  if(val is String)
    return val=='1' || val=='true';
  return def;
}

int toIntDef(dynamic val, int def) =>
  tryToInt(val, def)!;

int? tryToInt(dynamic val, [int? def] )
{
  if(val==null)
    return def;
  if(val is int)
    return val;
  if(val is bool)
    return val? 1 : 0;
  if(val is String)
  {
    var res = int.tryParse(val);
    if(res!=null)
      return res;
  }
  return def;
}

double toDoubleDef(dynamic val, double def) =>
  tryToDouble(val, def)!;

double? tryToDouble(dynamic val, [double? def] )
{
  if(val==null)
    return def;
  if(val is int)
    return val.toDouble();
  if(val is bool)
    return val? 1 : 0;
  if(val is String)
  {
    var res = double.tryParse(val);
    if(res!=null)
      return res;
  }
  return def;
}

String? tryToString(dynamic val, [String? def] )
{
  if(val==null)
    return def;
  return val.toString();
}

String toStringDef(dynamic val, [String def=""] )
{
  if(val==null)
    return def;
  return val.toString();
}

TDateTime? toDateDef(dynamic val, [TDateTime? def] )
{
  if(val==null)
    return def;
  if(val is TDateTime)
    return val;
  if(val is int)
    return TDateTime.system(val);
  if(val is String)
  {
    int d = SysDate.atod(val);
    if(d != 0)
      return TDateTime.system(d);
    return def;
  }
  return def;
}


