tableextension 52000 NAVI_VehicleSalesHeader extends "Sales Header"
{
    fields
    {
        field(52000; "Vehicle No."; Code[20])
        {
            Caption = 'Vehicle No.';
            //DataClassification = ToBeClassified;
            //TableRelation = NAVI_Vehicle."Vehicle VIN No." where("Customer No." = field("Sell-to Customer No."));
            FieldClass = FlowField;
            CalcFormula = Lookup(NAVI_Vehicle."Vehicle VIN No." where("Customer No." = field("Sell-to Customer No.")));
        }
    }
}
