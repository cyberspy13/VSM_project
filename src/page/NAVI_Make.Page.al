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
                field(Model; Rec.Model)
                {
                }
            }
        }
    }
}
