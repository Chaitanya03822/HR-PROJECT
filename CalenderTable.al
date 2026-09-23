table 50104 "Holiday Calendar"
{
    Caption = 'Holiday Calendar';
    DataClassification = CustomerContent;

    LookupPageId = "Holiday Calendar";
    DrillDownPageId = "Holiday Calendar";

    fields
    {
        field(1; "Holiday Date"; Date)
        {
            Caption = 'Holiday Date';
        }

        field(2; "Holiday Name"; Text[100])
        {
            Caption = 'Holiday Name';
        }

        field(3; "Holiday Type"; Enum "Holiday Type")
        {
            Caption = 'Holiday Type';
        }

        field(4; State; Text[50])
        {
            Caption = 'State';
        }

        field(5; Recurring; Boolean)
        {
            Caption = 'Recurring';
        }

        field(6; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
    }

    keys
    {
        key(PK; "Holiday Date")
        {
            Clustered = true;
        }
    }
}