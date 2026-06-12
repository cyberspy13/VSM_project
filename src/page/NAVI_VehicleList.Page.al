page 52003 NAVI_VehicleList
{
    ApplicationArea = All;
    Caption = 'Vehicle';
    PageType = List;
    SourceTable = NAVI_Vehicle;
    UsageCategory = Lists;
    CardPageId = 52002;

    layout
    {
        area(Content)
        {
            repeater
            (General)
            {
                Caption = 'General';
                field("Vehicle VIN No."; Rec."Vehicle VIN No.")
                {
                    Tooltip = 'Vehicle VIN No.';
                }
                field("Customer No."; Rec."Customer No.")
                {
                    Tooltip = 'Customer No.';
                    TableRelation = Customer."No.";
                }
                field("Make Code"; Rec."Make")
                {
                    Tooltip = 'Make Code';
                }
                field("Model Code"; Rec."Model")
                {
                    Tooltip = 'Model Code';
                }
                field("Registration No."; Rec."Registration No.")
                {
                    Tooltip = 'Registration No.';
                }
                field("Next Service Date"; Rec."Next Service Date")
                {
                    Tooltip = 'Next Service Date';
                }
            }
        }
    }
}
