tableextension 50100 "Find Bin with Lot No" extends "Put-away Template Line"
{
    fields
    {
        field(50100; "Find Same Lot No."; Boolean)
        {
            CaptionML = ENU = 'Find Same Lot No.', RUS = 'Найти такую же поставку';

            trigger OnValidate()
            begin
                if "Find Same Lot No." then begin
                    "Find Same Item" := false;
                    "Find Unit of Measure Match" := true;
                end;
            end;
        }
    }
}