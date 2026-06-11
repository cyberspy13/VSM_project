pageextension 52001 NAVI_SalesOrder extends "Sales Order"
{
    layout
    {
        addlast(General)
        {
            field(VehicleNo; Rec."Vehicle No.")
            {
                ApplicationArea = All;
                Caption = 'Vehicle No.';
            }
        }
    }

}
