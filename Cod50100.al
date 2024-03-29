codeunit 50100 "Find Same Lot No"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Create Put-away", 'OnFindBinContent', '', true, true)]
    local procedure FindSameLotNo(PostedWhseReceiptLine: Record "Posted Whse. Receipt Line"; PutAwayTemplateLine: Record "Put-away Template Line"; var BinContent: Record "Bin Content")
    begin
        with BinContent do begin
            if PutAwayTemplateLine."Find Same Lot No." then
                SetRange("Lot No.", PostedWhseReceiptLine."Lot No.")
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Create Put-away", 'OnBeforeCreateNewWhseActivity', '', true, true)]
    local procedure LotNo2BinContent(PostedWhseRcptLine: Record "Posted Whse. Receipt Line")
    var
        BinContent: Record "Bin Content";
    begin
        with PostedWhseRcptLine do
            if BinContent.Get("Location Code", "Bin Code", "Item No.", "Variant Code", "Unit of Measure Code") then begin
                BinContent."Lot No." := PostedWhseRcptLine."Lot No.";
                BinContent.Modify();
            end;
    end;
}