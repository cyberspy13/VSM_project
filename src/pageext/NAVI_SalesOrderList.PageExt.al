pageextension 52002 NAVI_SalesOrderList extends "Sales Order List"
{
    layout
    {
        addlast(control1)
        {
            field(VehicleNo; Rec."Vehicle No.")
            {
                ApplicationArea = All;
                Caption = 'Vehicle No.';
            }
        }
    }

}
