pageextension 52004 NAVI_SalesInvoiceList extends "Sales Invoice List"
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
