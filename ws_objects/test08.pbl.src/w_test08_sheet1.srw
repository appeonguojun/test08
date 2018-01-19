$PBExportHeader$w_test08_sheet1.srw
$PBExportComments$Generated MDI Sheet #1
forward
global type w_test08_sheet1 from w_test08_basesheet
end type
type uo_2 from uo_1 within w_test08_sheet1
end type
type st_1 from statictext within w_test08_sheet1
end type
end forward

global type w_test08_sheet1 from w_test08_basesheet
string tag = "Untitled for Sheet 1"
integer width = 1925
integer height = 1620
uo_2 uo_2
st_1 st_1
end type
global w_test08_sheet1 w_test08_sheet1

on w_test08_sheet1.create
int iCurrent
call super::create
this.uo_2=create uo_2
this.st_1=create st_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.uo_2
this.Control[iCurrent+2]=this.st_1
end on

on w_test08_sheet1.destroy
call super::destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.uo_2)
destroy(this.st_1)
end on

type uo_2 from uo_1 within w_test08_sheet1
integer x = 306
integer y = 480
integer taborder = 10
end type

on uo_2.destroy
call uo_1::destroy
end on

type st_1 from statictext within w_test08_sheet1
integer x = 411
integer y = 272
integer width = 1147
integer height = 76
integer textsize = -12
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

