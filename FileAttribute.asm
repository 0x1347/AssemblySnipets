.code
	mov ah,43h	;call the function Get/Set file attribute.
	mov al,1	;set file attribute
	mov cx,3	;hidden,read only
	mov dx,offset filename
	int 21h
	jc display_error
.data
	filename db "test.text",0
;===============================================================	
;	Function 			Description
;	1Ah		 			Set disk transfer address.
;	3Ch 				Create file. Create a new file or set the length of
;							an existing file to 0 bytes.
;	3Dh 				Open file. Open an existing file for input,
;							output, or input-output.
;	3Eh 				Close file handle.
;	3Fh 				Read from file or device. Read a predetermined
;							number of bytes from a file into an input buffer.
;	40h 				Write to file or device. Write a predetermined
;							number of bytes from memory to a file.
;	41h 				Delete file.
;	42h					Move file pointer. Position the file pointer before
;							reading or writing to a file.
;	43h 				Get/Set file attribute.
;	4Eh 				Find first matching file.
;	4Fh 				Find next matching file.
;	56h	 				Rename file.
;	57h 				Get/set file date and time.
;-----------------------------------------------------------------
;	Attribute			 				    Value
;	Normal file							    00
;	Read-only file						  01
;	Hidden file							    02
;	Hidden, read-only file			03
;	System file							    04
;	Hidden, system, read-only file		07
