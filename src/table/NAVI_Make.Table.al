table 52001 NAVI_Make
{
    Caption = 'Make';
    DataClassification = ToBeClassified;
    LookupPageId = 52000;
    DrillDownPageId = 52000;

    fields
    {
        field(1; "No."; integer)
        {
            Caption = 'No.';
        }
        field(2; "Make Code"; Code[20])
        {
            Caption = 'Make Code';
        }
    }
    keys
    {
        key(PK; "No.", "Make Code")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Make Code")
        {
        }
    }
}
