tableextension 50100 "Employee Ext" extends Employee
{
    fields
    {
        field(50100; "Department Code"; Code[20])
        {
            Caption = 'Department';
            DataClassification = CustomerContent;
            TableRelation = Department WHERE(Blocked = CONST(false));
        }

        field(50101; "Designation Code"; Code[20])
        {
            Caption = 'Designation';
            DataClassification = CustomerContent;
            TableRelation = Designation WHERE(Blocked = CONST(false));
        }

        field(50102; "Shift Code"; Code[20])
        {
            Caption = 'Shift';
            DataClassification = CustomerContent;
            TableRelation = "Shift Master" WHERE(Blocked = CONST(false));
        }

        field(50103; "Reporting Manager No."; Code[20])
        {
            Caption = 'Reporting Manager';
            DataClassification = CustomerContent;
            TableRelation = Employee."No.";
        }

        field(50104; "Employment Type"; Enum "Employment Type")
        {
            Caption = 'Employment Type';
            DataClassification = CustomerContent;
        }

        field(50105; "Employment Status"; Enum "Employment Status")
        {
            Caption = 'Employment Status';
            DataClassification = CustomerContent;
        }

        field(50106; "Confirmation Date"; Date)
        {
            Caption = 'Confirmation Date';
            DataClassification = CustomerContent;
        }

        field(50107; "Basic Salary"; Decimal)
        {
            Caption = 'Basic Salary';
            DataClassification = CustomerContent;
            DecimalPlaces = 2 : 2;
        }

        field(50108; "HRA"; Decimal)
        {
            Caption = 'HRA';
            DataClassification = CustomerContent;
            DecimalPlaces = 2 : 2;
        }

        field(50109; "Medical Allowance"; Decimal)
        {
            Caption = 'Medical Allowance';
            DataClassification = CustomerContent;
            DecimalPlaces = 2 : 2;
        }

        field(50110; "Travel Allowance"; Decimal)
        {
            Caption = 'Travel Allowance';
            DataClassification = CustomerContent;
            DecimalPlaces = 2 : 2;
        }

        field(50111; "Special Allowance"; Decimal)
        {
            Caption = 'Special Allowance';
            DataClassification = CustomerContent;
            DecimalPlaces = 2 : 2;
        }

        field(50112; "Casual Leave Balance"; Decimal)
        {
            Caption = 'Casual Leave Balance';
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 2;
            Editable = false;
        }

        field(50113; "Sick Leave Balance"; Decimal)
        {
            Caption = 'Sick Leave Balance';
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 2;
            Editable = false;
        }

        field(50114; "Earned Leave Balance"; Decimal)
        {
            Caption = 'Earned Leave Balance';
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 2;
            Editable = false;
        }
    }
}