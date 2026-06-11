table 52001 NAVI_Make
{
    Caption = 'Make';
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
        MakeRec: Record NAVI_Make;
    begin
        if Rec."No." = 0 then begin
            MakeRec.LockTable(true);
            if MakeRec.FindLast() then
                Rec."No." := MakeRec."No." + 1
            else
                Rec."No." := 1;
        end;
    end;
}
