unit uGigasecond;

interface

uses
  system.DateUtils;

type
  TGigasecond = record
    class function Add(date: String): String; static;
  end;

implementation

class function TGigasecond.Add(date: String): String;
begin
  Result := DateToISO8601(IncSecond(ISO8601ToDate(date), 1000000000), False);
end;

end.
