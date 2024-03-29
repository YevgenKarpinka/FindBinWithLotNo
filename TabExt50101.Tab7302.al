tableextension 50101 "Bin Content Ext." extends "Bin Content"
{
    fields
    {
        field(50100; "Lot No."; Code[50])
        {
            CaptionML = ENU = 'Lot No.', RUS = 'Номер поставки';
            Editable = false;
            // FieldClass = FlowField;
            // CalcFormula = max ("Warehouse Entry"."Lot No." WHERE ("Location Code" = FIELD ("Location Code"), "Bin Code" = FIELD ("Bin Code"), "Item No." = FIELD ("Item No."), "Variant Code" = FIELD ("Variant Code"), "Unit of Measure Code" = FIELD ("Unit of Measure Code"), "Lot No." = FIELD ("Lot No. Filter"), "Serial No." = FIELD ("Serial No. Filter"), "CD No." = FIELD ("CD No. Filter")));
            TableRelation = "Warehouse Entry"."Lot No." WHERE ("Location Code" = FIELD ("Location Code"), "Bin Code" = FIELD ("Bin Code"), "Item No." = FIELD ("Item No."), "Variant Code" = FIELD ("Variant Code"), "Unit of Measure Code" = FIELD ("Unit of Measure Code"), "Lot No." = FIELD ("Lot No. Filter"), "Serial No." = FIELD ("Serial No. Filter"), "CD No." = FIELD ("CD No. Filter"));
        }
    }
}