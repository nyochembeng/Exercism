unit uResistorColor;

interface

const
  TColors: TArray<string> = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet',
  'grey', 'white'];

type
  TResistor = object
    class function colorCode(color: string): integer; static;
    class function Colors: TArray<string>; static;
  end;

implementation

class function TResistor.colorCode(color: string): integer;

var
  i: integer;

begin
  Result := -1;

  for i := Low(TColors) to High(TColors) do
  begin
    if TColors[i] = color then
    begin
      Result := i;
      Exit;
    end;

  end;

end;

class function TResistor.Colors: TArray<string>;
begin
  Result := TColors;
end;
end.