if exists("b:current_syntax")
    finish
endif

syntax keyword cramelKeyword Si FinSi Entonces Importar Escritura Lectura
syntax keyword cramelKeyword FinProc FinProp OSi Proc Paso PorSiempre
syntax keyword cramelKeyword Prop ReDim Resultado SiNo Sección
highlight link cramelKeyword Keyword


syntax keyword cramelFunction Crear Destruir Constructor Destructor
syntax keyword cramelFunction Exportar EsteObjeto Prototipo
syntax match cramelFunction "\%(\.\)[A-z]*"
highlight link cramelFunction Function

syntax match cramelOperator "\v\="
syntax match cramelOperator "\v\*"
syntax match cramelOperator "\v/"
syntax match cramelOperator "\v\+"
syntax match cramelOperator "\v-"
syntax match cramelOperator "\v\?"
syntax match cramelOperator "\v\*\="
syntax match cramelOperator "\v/\="
syntax match cramelOperator "\v\+\="
syntax match cramelOperator "\v-\="
syntax match cramelOperator "\v\<"
syntax match cramelOperator "\v\>"
syntax match cramelOperator "\v\<>"
syntax match cramelOperator "\v\:"
syntax match cramelOperator "\v\^"
syntax keyword cramelOperator Shl Shr Rol Ror Not Neg And Y Or O Xor & @
highlight link cramelOperator Operator


syntax match cramelNumbers "[0-9]"
highlight link cramelNumbers Number


syntax region cramelString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link cramelString String


syntax keyword cramelType Var API Const Clase Devolver FinClase
syntax keyword cramelType Estruct NoResultado Nulo Referencia
syntax keyword cramelType Seleccionar Salir Unión Caso FinSeleccionar
syntax keyword cramelType Local Global Parámetro ClaseVar ClaseVarPriv
syntax keyword cramelType Booleano Byte Word Entero Real Cadena
highlight link cramelType Type


syntax keyword cramelLoop Contar Repetir FinMientras FinRepetir Seguir
highlight link cramelLopp Repeat

syntax match cramelComment "\%(\'\).*"
highligh link cramelComment Comment

let b:current_syntax = "cramel"
