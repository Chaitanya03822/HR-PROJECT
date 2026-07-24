page 50109 "Approval List API"
{
    PageType = API;

    APIPublisher = 'Chaitanya';
    APIGroup = 'hr';
    APIVersion = 'v1.0';

    EntityName = 'approval';
    EntitySetName = 'approvals';

    SourceTable = "Approval List";

    DelayedInsert = true;

    ODataKeyFields = SystemId;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(systemId; Rec.SystemId)
                {
                }

                field(entryNo; Rec."Entry No.")
                {
                }

                field(employeeNo; Rec."Employee No.")
                {
                }

                field(employeeName; Rec."Employee Name")
                {
                }

                field(leaveType; Rec."Leave Type")
                {
                }

                field(fromDate; Rec."From Date")
                {
                }

                field(toDate; Rec."To Date")
                {
                }

                field(reason; Rec.Reason)
                {
                }

                field(status; Rec.Status1)
                {
                }

                field(managerComment; Rec."Manager Comment")
                {
                }

                field(dataverseId; Rec."Dataverse ID")
                {
                }
            }
        }
    }
}