table 50105 "Approval List"
{
    Caption = 'Approval List';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
        }

        field(2; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
        }

        field(3; "Employee Name"; Text[100])
        {
            Caption = 'Employee Name';
        }

        field(4; "Leave Type"; Text[50])
        {
            Caption = 'Leave Type';
        }

        field(5; "From Date"; Date)
        {
            Caption = 'From Date';
        }

        field(6; "To Date"; Date)
        {
            Caption = 'To Date';
        }

        field(7; Reason; Text[250])
        {
            Caption = 'Reason';
        }
        field(8; Status; Text[50])
        {
            Caption = 'Status';
        }

        field(18; Status1; Enum "Leave Status")
        {
            Caption = 'Status';
            InitValue = Pending;
        }

        field(9; "Manager Comment"; Text[250])
        {
            Caption = 'Manager Comment';
        }

        field(10; "Dataverse ID"; Guid)
        {
            Caption = 'Dataverse ID';
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}