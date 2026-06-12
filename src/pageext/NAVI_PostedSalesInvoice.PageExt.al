pageextension 52006 NAVI_PostedSalesInvoice extends "Posted Sales Invoice"
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
