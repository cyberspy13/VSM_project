table 52002 NAVI_Model
{
    Caption = 'Model';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; integer)
        {
            Caption = 'No.';
            AutoIncrement = true;
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
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}
