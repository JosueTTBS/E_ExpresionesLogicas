page 50112 Ejemplo2
{
    /* */

    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Expressions Card';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Entradas';
                field(Value1; Value1)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter a value for Value1.';
                    Caption = 'Valor 1';
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        if Value1 > Value2 then
                            Result := true
                        else
                            Result := false;

                    end;
                }
                field(Value2; Value2)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter a value for Value2.';
                    Caption = 'Valor 2';
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        if Value1 > Value2 then
                            Result := true
                        else
                            Result := false;

                    end;
                }
            }
            group(Output)
            {
                Caption = 'Resultado';
                field(Result; Result)
                {
                    ApplicationArea = All;
                    ToolTip = 'The result of the operation in type boolean. si valor 1 es mayor que valor 2';
                    Caption = 'Result';
                    Editable = false;

                }
                field(Resultado1; Result1)
                {
                    ApplicationArea = All;
                    ToolTip = 'Aqui aparecera el resultado';
                    Caption = 'Resultado';
                    Editable = false;


                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                ApplicationArea = All;
                Caption = 'Execute';
                ToolTip = 'Click to calculate the result.';
                Image = ExecuteBatch;

                trigger OnAction()
                begin
                    Result := Value1 > Value2;
                end;
            }
            action(Suma)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Result1 := Value1 + Value2;
                end;
            }
            action(Resta)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Result1 := Value1 - Value2;
                end;
            }
            action(Multiplicacion)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Result1 := Value1 * Value2;
                end;
            }
        }
    }

    var
        Value1: Integer;
        Value2: Integer;
        Result: Boolean;

        Result1: Integer;
}