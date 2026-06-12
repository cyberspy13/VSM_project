codeunit 52000 VehicleServiceLedgerCdu
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterPostSalesDoc', '', false, false)]
    local procedure func_OnAfterPostSalesDoc(var SalesHeader: Record "Sales Header"; var GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line"; SalesShptHdrNo: Code[20]; RetRcpHdrNo: Code[20]; SalesInvHdrNo: Code[20]; SalesCrMemoHdrNo: Code[20]; CommitIsSuppressed: Boolean; InvtPickPutaway: Boolean; var CustLedgerEntry: Record "Cust. Ledger Entry"; WhseShip: Boolean; WhseReceiv: Boolean; PreviewMode: Boolean)
    var
        PostedSalesInvoice: Record "Sales Invoice Header";
        VehicleServiceLedgerEntry: Record NAVI_VehicleServiceLedgerEntry;
    begin
        PostedSalesInvoice.SetRange("Order No.", SalesHeader."No.");
        if PostedSalesInvoice.FindFirst() then begin
            if PostedSalesInvoice."Vehicle No." <> '' then begin
                PostedSalesInvoice.CalcFields("Vehicle No.");
                VehicleServiceLedgerEntry.Init();
                VehicleServiceLedgerEntry.Validate("Vehicle VIN No.", PostedSalesInvoice."Vehicle No.");
                VehicleServiceLedgerEntry.Validate("Posted Document No.", PostedSalesInvoice."No.");
                VehicleServiceLedgerEntry.Validate("Service Date", PostedSalesInvoice."Posting Date");
                VehicleServiceLedgerEntry.Validate("Service Description", StrSubstNo('Sales Invoice %1 ', PostedSalesInvoice."No."));
                VehicleServiceLedgerEntry.Insert();
            end else
                exit;
        end;
    end;
}
