unit uLeap;

interface

type
  TYear = record
    class function IsLeap(Year: Integer): Boolean; static;
  end;

implementation

class function TYear.IsLeap(Year: Integer): Boolean;
begin
  Result := (Year mod 400 = 0) or
            ((Year mod 4 = 0) and (Year mod 100 <> 0));
end;

end.
