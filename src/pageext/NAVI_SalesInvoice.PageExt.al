pageextension 52003 NAVI_SalesInvoice extends "Sales Invoice"
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
