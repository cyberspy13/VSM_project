codeunit 52001 CalculateNextServiceDate
{
    procedure CalculateNextServiceDate(LastServiceRec: Record NAVI_VehicleServiceLedgerEntry; LastServiceDate: Date; ServiceIntervalDays: Integer)
    var
        NewServiceDate: Date;
        VehicleRec: Record NAVI_Vehicle;
    begin
        NewServiceDate := LastServiceDate + ServiceIntervalDays;
        VehicleRec.SetRange("Vehicle VIN No.", LastServiceRec."Vehicle VIN No.");
        if VehicleRec.FindFirst() then begin
            VehicleRec.Validate("Next Service Date", NewServiceDate);
        end else
            Error('VIN No. does not exist');
    end;
}
