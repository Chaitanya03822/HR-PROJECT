table 50103 "Shift Master"
{
    Caption = 'Shift Master';
    DataClassification = CustomerContent;
    LookupPageId = "Shift Master List";
    DrillDownPageId = "Shift Master List";

    fields
    {
        field(1; "Shift Code"; Code[20])
        {
            Caption = 'Shift Code';
            NotBlank = true;
        }

        field(2; "Shift Name"; Text[100])
        {
            Caption = 'Shift Name';
        }

        field(3; "Start Time"; Time)
        {
            Caption = 'Start Time';
        }

        field(4; "End Time"; Time)
        {
            Caption = 'End Time';
        }

        field(5; "Lunch Break (Minutes)"; Integer)
        {
            Caption = 'Lunch Break (Minutes)';
            InitValue = 60;
        }

        field(6; "Grace Period (Minutes)"; Integer)
        {
            Caption = 'Grace Period (Minutes)';
            InitValue = 15;
        }

        field(7; "Standard Working Hours"; Decimal)
        {
            Caption = 'Standard Working Hours';
            DecimalPlaces = 0 : 2;
            InitValue = 8;
        }

        field(8; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
    }

    keys
    {
        key(PK; "Shift Code")
        {
            Clustered = true;
        }

        key(Name; "Shift Name")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Shift Code", "Shift Name")
        {
        }
    }
}