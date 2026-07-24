page 50100 "HR Setup"
{
    PageType = Card;
    SourceTable = "HR Setup";
    Caption = 'HR Setup';
    ApplicationArea = All;
    UsageCategory = Administration;
    editable = true;

    layout
    {
        area(Content)
        {
            group(NumberSeries)
            {
                Caption = 'Number Series';

                field("Employee Nos."; Rec."Employee Nos")
                {
                    ApplicationArea = All;
                }

                field("Leave Request Nos."; Rec."Leave Request Nos.")
                {
                    ApplicationArea = All;
                }

                field("Payroll Nos."; Rec."Payroll Nos.")
                {
                    ApplicationArea = All;
                }
            }

            group(Defaults)
            {
                Caption = 'Default Values';

                field("Standard Working Hours"; Rec."Standard Working Hours")
                {
                    ApplicationArea = All;
                }

                field("Default Casual Leave"; Rec."Default Casual Leave")
                {
                    ApplicationArea = All;
                }

                field("Default Sick Leave"; Rec."Default Sick Leave")
                {
                    ApplicationArea = All;
                }

                field("Default Earned Leave"; Rec."Default Earned Leave")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger

    OnOpenPage()
    var
        HRSetupManagement: Codeunit "HR Setup Management";
    begin
        HRSetupManagement.GetHRSetup(Rec);
    end;

}
