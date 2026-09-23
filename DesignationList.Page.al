page 50103 "Designation List"
{
    PageType = List;
    SourceTable = Designation;
    Caption = 'Designations';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Designation Code"; Rec."Designation Code")
                {
                    ApplicationArea = All;
                }

                field("Designation Name"; Rec."Designation Name")
                {
                    ApplicationArea = All;
                }

                field(Description; Rec.Description)
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