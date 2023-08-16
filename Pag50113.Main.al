page 50113 Main
{
    ApplicationArea = All;
    Caption = 'Main';
    PageType = List;
    SourceTable = Personas;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Nombre; Rec.Nombre)
                {
                    ToolTip = 'Specifies the value of the Nombre field.';
                }
                field(RangoEdad; Rec.RangoEdad)
                {
                    ToolTip = 'Specifies the value of the RangoEdad field.';
                }
                field(Domicilio; Rec.Domicilio)
                {
                    ToolTip = 'Specifies the value of the Domicilio field.';
                }
                field(apellido; Rec.apellido)
                {
                    ToolTip = 'Specifies the value of the apellido field.';
                }
                field(agregado; Rec.agregado)
                {
                    ToolTip = 'Specifies the value of the agregado field.';

                }
                field(modificado; Rec.modificado)
                {
                    ToolTip = 'Specifies the value of the modificado field.';

                }
            }
        }
    }
}
