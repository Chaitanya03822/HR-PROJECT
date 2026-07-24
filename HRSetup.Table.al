table 50100 "HR Setup"
{
    Caption = 'HR Setup';
    dataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; code[10])
        {
            caption = 'Primary Key';
            DataClassification = SystemMetadata;
        }

        field(10; "Employee Nos"; Code[20])
        {
            Caption = 'Employee Nos';
            TableRelation = "No. Series";
        }
        field(20; "Leave Request Nos."; Code[20])
        {
            Caption = 'Leave Request Nos.';
            TableRelation = "No. Series";
        }
        field(30; "Payroll Nos."; Code[20])
        {
            Caption = 'Payroll Nos.';
            TableRelation = "No. Series";
        }
        field(40; "Standard Working Hours"; Decimal)
        {
            Caption = 'Standard Working Hours';
            DecimalPlaces = 0 : 2;
        }
        field(50; "Default Casual Leave"; Integer)
        {
            Caption = 'Default Casual Leave';
        }
        field(60; "Default Sick Leave"; Integer)
        {
            Caption = 'Default Sick Leave';
        }
        field(70; "Default Earned Leave"; Integer)
        {
            Caption = 'Default Earned Leave';
        }


    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}