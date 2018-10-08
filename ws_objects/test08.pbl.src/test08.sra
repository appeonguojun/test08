$PBExportHeader$test08.sra
$PBExportComments$Generated MDI Application Object
forward
global type test08 from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type test08 from application
string appname = "test08"
end type
global test08 test08

on test08.create
appname="test08"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on test08.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;//*-----------------------------------------------------------------*/
//*    open:  Application Open Script:
//*            1) Instantiate a connection object
//*            2) Populate SQLCA and Connect to the database
//*            3) Open frame window
//*-----------------------------------------------------------------*/
n_test08_connectservice lnv_connectserv

soapconnection soap
soap = create soapconnection
messagebox('',soap.classname( ))

/*  This prevents double toolbar  */
this.ToolBarFrameTitle = "MDI Application Toolbar"
this.ToolBarSheetTitle = "MDI Application Toolbar"

lnv_connectserv = Create using "n_test08_connectservice"

If lnv_connectserv.of_ConnectDB ( ) = 0 Then
	/*  Open MDI frame window  */
	Open ( w_test08_frame )
End if

Destroy lnv_connectserv
end event

event close;//*-----------------------------------------------------------------*/
//*    close:  Application Close Script:
//*            1) Instantiate a connection object
//*            2) Disconnect from the database
//*-----------------------------------------------------------------*/
n_test08_connectservice lnv_connectserv 

lnv_connectserv = Create using "n_test08_connectservice"

lnv_connectserv.of_DisconnectDB ( )

Destroy lnv_connectserv 
// 
end event

