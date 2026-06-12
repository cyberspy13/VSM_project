pageextension 52005 NAVI_PostedSalesShipment extends "Posted Sales Shipment"
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
