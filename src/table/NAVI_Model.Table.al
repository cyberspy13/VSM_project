table 52002 NAVI_Model
{
    Caption = 'Model';
    DataClassification = ToBeClassified;
    LookupPageId = 52001;
    DrillDownPageId = 52001;

    fields
    {
        field(1; "No."; integer)
        {
            Caption = 'No.';
        }
        field(2; "Make Code"; Code[20])
        {
            Caption = 'Make Code';
            TableRelation = NAVI_Make."Make Code";
        }

        field(3; Model; Code[20])
        {
            Caption = 'Model';
        }
    }
    keys
    {
        key(PK; "No.", "Make Code", Model)
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Make Code", Model)
        {
        }
    }
}
