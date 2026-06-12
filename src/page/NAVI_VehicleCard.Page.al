page 52002 NAVI_VehicleCard
{
    ApplicationArea = All;
    Caption = 'Vehicle';
    PageType = Card;
    SourceTable = NAVI_Vehicle;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(General)
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
