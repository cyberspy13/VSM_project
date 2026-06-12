page 52000 NAVI_Make
{
    ApplicationArea = All;
    Caption = 'Make';
    PageType = List;
    SourceTable = NAVI_Make;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                }
                field("Make Code"; Rec."Make Code")
                {
                }
            }
        }
    }
    trigger OnNewRecord(BelowxRec: Boolean)
    var
        MakeModel: Record NAVI_Model;
    begin
        if Rec."No." = 0 then begin
            MakeModel.LockTable(true);
            if MakeModel.FindLast() then
                Rec."No." := MakeModel."No." + 1
            else
                Rec."No." := 1;
        end;
    end;
}
