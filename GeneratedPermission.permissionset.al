permissionset 50100 GeneratedPermission
{
    Assignable = true;
    Permissions = tabledata Department=RIMD,
        tabledata Designation=RIMD,
        tabledata "Holiday Calendar"=RIMD,
        tabledata "HR Setup"=RIMD,
        tabledata "Shift Master"=RIMD,
        table Department=X,
        table Designation=X,
        table "Holiday Calendar"=X,
        table "HR Setup"=X,
        table "Shift Master"=X,
        codeunit "HR Setup Management"=X,
        page "Department Card"=X,
        page "Department List"=X,
        page "Designation List"=X,
        page "Holiday Calendar"=X,
        page "HR Setup"=X,
        page "Shift Master List"=X;
}