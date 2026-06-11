table 52002 NAVI_Model
{
    Caption = 'Model';
    DataClassification = ToBeClassified;

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
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        MakeModel: Record NAVI_Model;
    begin
        if Rec."No." = 0 then begin
            MakeModel.LockTable(true);
            if MakeModel.FindLast() then
                Rec."No." := MakeModel."No." + 1
            else
                Rec."No." := 1;
        end;
    end;
}
