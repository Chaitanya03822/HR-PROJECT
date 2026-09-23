page 50105 "Holiday Calendar"
{
    PageType = List;
    SourceTable = "Holiday Calendar";

    Caption = 'Holiday Calendar';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Holiday Date"; Rec."Holiday Date")
                {
                    ApplicationArea = All;
                }

                field("Holiday Name"; Rec."Holiday Name")
                {
                    ApplicationArea = All;
                }

                field("Holiday Type"; Rec."Holiday Type")
                {
                    ApplicationArea = All;
                }

                field(State; Rec.State)
                {
                    ApplicationArea = All;
                }

                field(Recurring; Rec.Recurring)
                {
                    ApplicationArea = All;
                }

                field(Blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}