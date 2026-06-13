page 52006 NAVI_VehicleServLedgerEntryPag
{
    ApplicationArea = All;
    Caption = 'Vehicle Service Ledger Entry';
    PageType = List;
    SourceTable = NAVI_VehicleServiceLedgerEntry;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    Tooltip = 'Entry No.';
                }
                field("Vehicle VIN No."; Rec."Vehicle VIN No.")
                {
                    Tooltip = 'Vehicle VIN No.';
                }
                field("Service Date"; Rec."Service Date")
                {
                    Tooltip = 'Service Date.';
                }
                field("Description"; Rec."Service Description")
                {
                    Tooltip = 'Service Description.';
                }
                field("Posted Document No."; Rec."Posted Document No.")
                {
                    Tooltip = 'Posted Document No.';
                }
            }
        }
    }
    Actions
    {
        area(Processing)
        {
            action(CalculateNextServiceDate)
            {
                Caption = 'Calculate Next Service Date';
                Image = Calculate;
                trigger OnAction()
                var
                    NextServiceDate: Date;
                    CalculateNextServiseDateCdu: Codeunit 52001;
                begin
                    NextServiceDate := CalculateNextServiseDateCdu.CalculateNextServiceDate(Rec, Rec."Service Date", 365);
                    Message('The next service date is %1', NextServiceDate);
                end;
            }
        }
    }
}
