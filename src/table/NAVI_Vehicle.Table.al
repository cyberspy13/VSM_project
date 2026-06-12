table 52000 NAVI_Vehicle
{
    Caption = 'Vehicle';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Vehicle VIN No."; Code[20])
        {
            Caption = 'Vehicle VIN No.';
        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer;
            trigger OnValidate()
            var
                VehicleRec: Record NAVI_Vehicle;
            begin
                if Rec."Customer No." <> '' then begin
                    VehicleRec.SetRange("Customer No.", Rec."Customer No.");
                    if not VehicleRec.IsEmpty() then
                        Error('This customer is already selected. Please choose another Customer.');
                end;
            end;
        }
        field(3; Make; Code[20])
        {
            Caption = 'Make';
            TableRelation = NAVI_Make."Make Code";
        }
        field(4; Model; Code[20])
        {
            Caption = 'Model';
            TableRelation = NAVI_Model.Model where("Make Code" = field("Make"));
        }
        field(5; "Registration No."; Code[20])
        {
            Caption = 'Registration No.';
        }
        field(6; "Next Service Date"; Date)
        {
            Caption = 'Next Service Date';
        }
    }
    keys
    {
        key(PK; "Vehicle VIN No.", "Registration No.")
        {
            Clustered = true;
        }
    }
}
