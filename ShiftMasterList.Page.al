page 50104 "Shift Master List"
{
    PageType = List;
    SourceTable = "Shift Master";
    Caption = 'Shift Master';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Shift Code"; Rec."Shift Code")
                {
                    ApplicationArea = All;
                }

                field("Shift Name"; Rec."Shift Name")
                {
                    ApplicationArea = All;
                }

                field("Start Time"; Rec."Start Time")
                {
                    ApplicationArea = All;
                }

                field("End Time"; Rec."End Time")
                {
                    ApplicationArea = All;
                }

                field("Lunch Break (Minutes)"; Rec."Lunch Break (Minutes)")
                {
                    ApplicationArea = All;
                }

                field("Grace Period (Minutes)"; Rec."Grace Period (Minutes)")
                {
                    ApplicationArea = All;
                }

                field("Standard Working Hours"; Rec."Standard Working Hours")
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