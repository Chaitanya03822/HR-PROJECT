page 50110 "Employee Leave History"
{
    PageType = List;
    SourceTable = "Approval List";
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Employee Leave History';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("Employee No."; Rec."Employee No.")
                {
                    ApplicationArea = All;
                }

                field("Employee Name"; Rec."Employee Name")
                {
                    ApplicationArea = All;
                }

                field("Leave Type"; Rec."Leave Type")
                {
                    ApplicationArea = All;
                }

                field("From Date"; Rec."From Date")
                {
                    ApplicationArea = All;
                }

                field("To Date"; Rec."To Date")
                {
                    ApplicationArea = All;
                }

                field(Reason; Rec.Reason)
                {
                    ApplicationArea = All;
                }

                field(Status1; Rec.Status1)
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("Manager Comment"; Rec."Manager Comment")
                {
                    ApplicationArea = All;
                }

                field("Dataverse ID"; Rec."Dataverse ID")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        Rec.SetFilter(Status1, '%1|%2',
            Rec.Status1::Approved,
            Rec.Status1::Rejected);
    end;
}