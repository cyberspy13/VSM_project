table 52003 "NAVI_VehicleServiceLedgerEntry"
{
    Caption = 'Vehicle Service Ledger Entry';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;
        }
        field(2; "Vehicle VIN No."; Code[20])
        {
            Caption = 'Vehicle VIN No.';
            TableRelation = NAVI_Vehicle."Vehicle VIN No.";
        }
        field(3; "Service Date"; Date)
        {
            Caption = 'Service Date';
        }
        field(4; "Service Description"; Text[100])
        {
            Caption = 'Service Description';
        }
        field(5; "Posted Document No."; Code[20])
        {
            Caption = 'Posted Document No.';
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}
