$PBExportHeader$w_test08_sheet2.srw
$PBExportComments$Generated MDI Sheet #2
forward
global type w_test08_sheet2 from w_test08_basesheet
end type
type st_1 from statictext within w_test08_sheet2
end type
end forward

global type w_test08_sheet2 from w_test08_basesheet
string tag = "Untitled for Sheet 2"
integer width = 2226
integer height = 1464
st_1 st_1
end type
global w_test08_sheet2 w_test08_sheet2

on w_test08_sheet2.create
int iCurrent
call super::create
this.st_1=create st_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_1
end on

on w_test08_sheet2.destroy
call super::destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.st_1)
end on

type st_1 from statictext within w_test08_sheet2
integer x = 297
integer y = 124
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "none321"
boolean focusrectangle = false
end type

