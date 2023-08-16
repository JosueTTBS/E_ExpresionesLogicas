table 50113 Personas
{
    Caption = 'Personas';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Nombre; Text[50])
        {
            Caption = 'Nombre';
        }
        field(2; apellido; Text[50])
        {
            Caption = 'apellido';
        }
        field(3; RangoEdad; Enum EdadesRangos)
        {
            Caption = 'RangoEdad';
        }
        field(4; Domicilio; Text[50])
        {
            Caption = 'Domicilio';
        }
        field(5; agregado; DateTime)
        {
            Caption = 'agregado';
            Editable = false;
        }
        field(6; modificado; DateTime)
        {
            Caption = 'modificado';
            Editable = false;
        }
    }
    keys
    {
        key(PK; Nombre)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        myInt: Integer;
    begin
        Pagregado();
    end;

    trigger OnModify()
    var
        myInt: Integer;
    begin
        Pmodificado();
    end;


    trigger OnDelete()
    var
        myInt: Integer;
    begin

    end;

    trigger OnRename()
    var
        myInt: Integer;
    begin
        Pmodificado();
    end;

    protected procedure Pagregado()
    begin
        "agregado" := CurrentDateTime();
        // "Last Date Modified" := Today();
        // OnAfterSetLastModifiedDateTime(Rec);
    end;

    protected procedure Pmodificado()
    begin
        "modificado" := CurrentDateTime();
    end;

    var

}
