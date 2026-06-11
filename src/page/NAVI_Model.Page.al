page 52001 NAVI_Model
{
    ApplicationArea = All;
    Caption = 'Model';
    PageType = List;
    SourceTable = NAVI_Model;
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
