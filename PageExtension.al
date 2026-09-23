pageextension 50100 "Employee Card Ext" extends "Employee Card"
{
    layout
    {
        addlast(General)
        {
            group("HR Management")
            {
                Caption = 'HR Management';

                field("Department Code"; Rec."Department Code")
                {
                    ApplicationArea = All;
                }

                field("Designation Code"; Rec."Designation Code")
                {
                    ApplicationArea = All;
                }

                field("Shift Code"; Rec."Shift Code")
                {
                    ApplicationArea = All;
                }

                field("Reporting Manager No."; Rec."Reporting Manager No.")
                {
                    ApplicationArea = All;
                }

                field("Employment Type"; Rec."Employment Type")
                {
                    ApplicationArea = All;
                }

                field("Employment Status"; Rec."Employment Status")
                {
                    ApplicationArea = All;
                }

                field("Confirmation Date"; Rec."Confirmation Date")
                {
                    ApplicationArea = All;
                }

                field("Basic Salary"; Rec."Basic Salary")
                {
                    ApplicationArea = All;
                }

                field("HRA"; Rec.HRA)
                {
                    ApplicationArea = All;
                }

                field("Medical Allowance"; Rec."Medical Allowance")
                {
                    ApplicationArea = All;
                }

                field("Travel Allowance"; Rec."Travel Allowance")
                {
                    ApplicationArea = All;
                }

                field("Special Allowance"; Rec."Special Allowance")
                {
                    ApplicationArea = All;
                }

                field("Casual Leave Balance"; Rec."Casual Leave Balance")
                {
                    ApplicationArea = All;
                }

                field("Sick Leave Balance"; Rec."Sick Leave Balance")
                {
                    ApplicationArea = All;
                }

                field("Earned Leave Balance"; Rec."Earned Leave Balance")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}