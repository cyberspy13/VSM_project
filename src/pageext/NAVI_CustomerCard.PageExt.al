pageextension 52000 NAVI_CustomerCard extends "Customer Card"
{
    actions
    {
        addlast(processing)
        {
            action(VehicleList)
            {
                Caption = 'Vehicle List';
                Image = List;
                ApplicationArea = All;
                RunObject = page 52003;
                RunPageLink = "Customer No." = field("No.");
            }
        }
    }
}
