codeunit 50100 "HR Setup Management"
{
    SingleInstance = true;
    Procedure GetHRSetup(var HRSetup: Record "HR Setup")
    begin
        if not HRSetup.Get('SETUP') then begin
            HRSetup.Init();
            HRSetup."Primary Key" := 'SETUP';
            HRSetup.Insert();
        end;
    end;
}