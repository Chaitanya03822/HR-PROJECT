page 50108 "Approval List"
{
    PageType = List;
    SourceTable = "Approval List";
    ApplicationArea = All;
    UsageCategory = Lists;
    Caption = 'Approval List';

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
                }

                field("Manager Comment"; Rec."Manager Comment")
                {
                    ApplicationArea = All;
                }

                field("Dataverse ID"; Rec."Dataverse ID")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Approve)
            {
                Caption = 'Approve';
                ApplicationArea = All;
                Image = Approve;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    if Rec.Status1 <> Rec.Status1::Pending then
                        Error('Only pending requests can be approved.');

                    if Confirm('Do you want to approve this request?') then begin
                        Rec.Status1 := Rec.Status1::Approved;
                        Rec.Modify(true);

                        CurrPage.Update(false);

                        Message('Request approved successfully.');
                    end;
                end;
            }

            action(Reject)
            {
                Caption = 'Reject';
                ApplicationArea = All;
                Image = Reject;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    if Rec.Status1 <> Rec.Status1::Pending then
                        Error('Only pending requests can be rejected.');

                    if Confirm('Do you want to reject this request?') then begin
                        Rec.Status1 := Rec.Status1::Rejected;
                        Rec.Modify(true);

                        CurrPage.Update(false);

                        Message('Request rejected successfully.');
                    end;
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.SetRange(Status1, Rec.Status1::Pending);
    end;
}