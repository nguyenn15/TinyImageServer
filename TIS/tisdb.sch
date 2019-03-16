TABLE_(USERINFO)
	INT_    (ID) PRIMARY_KEY AUTO_INCREMENT
	STRING_ (EMAIL, 2000)
	STRING_ (PASSWORD, 2000)
 	INT_	(APIKEY)
 	INT_	(SESSION)
	STRING_	(FULLNAME, 2000)
	STRING_	(PHONE, 2000)
	STRING_	(DATEOFBIRTH,2000)
	INT		(STATUS)
	INT_ 	(ISADMIN)
END_TABLE


TABLE_(USERSETTING)
	INT    (ID) PRIMARY_KEY AUTO_INCREMENT
	INT_    (USERID) REFERENCES(USERINFO)
	INT_ 	(MAXFILESIZE)
	STRING_	(FILEEXTENSION,2000)
END_TABLE

TABLE_(ADMINSETTING)
	INT    (ID) PRIMARY_KEY AUTO_INCREMENT
	STRING_	(ROOTPATH,2000)
	STRING_	(STATICPATH,2000)
	STRING_	(IMAGEPATH,2000)
	STRING_	(BACKUPPATH,2000)
	STRING_	(SERVERPORT,2000)
	STRING_	(HOSTNAME,2000)
END_TABLE

TABLE_(IMAGEFILE)
	INT    (ID) PRIMARY_KEY AUTO_INCREMENT
	INT    (USERID) REFERENCES(USERINFO)
	STRING_	(FILENAME,2000)
	INT_	(MODIFIEDDATE)
	STRING_	(FILETYPE,2000)
	INT_	(FILESIZE)
	STRING_	(REALFILEPATH,2000)
	INT_	(WIDTH)
	INT_	(HEIGHT)
	STRING_	(TAG,1000)
	STRING_	(DESCRIPTION,2000)
	INT_	(STATUS)
END_TABLE

TABLE_(DAILYSUMMARY)
	INT    (ID) PRIMARY_KEY AUTO_INCREMENT
	INT    (USERID) REFERENCES(USERINFO)
	INT_	(LOGDATE)
	INT_	(NOOFUPLOADFILE)
	INT_	(NOOFDOWNLOADFILE)
	INT_	(TOTALUPLOADSIZE)
	INT_	(TOTALDOWNLOADSIZE)
END_TABLE

TABLE_(BACKUPRESTORETASK)
	INT    (ID) PRIMARY_KEY AUTO_INCREMENT
	INT    (USERID) REFERENCES(USERINFO)
	INT_	(ISBACKUPTASK)
	INT_	(CREATEDDATE)
	INT_	(FINISHDATE)
	STRING_	(SOURCEFOLDERPATH,2000)
	STRING_	(TARGETFOLDERPATH,2000)
	INT_	(PROCCESED)
	INT_	(TOTALFILES)
END_TABLE


TABLE_(TRANSFORMATIONSETTING)
	INT		(ID) PRIMARY_KEY AUTO_INCREMENT
	INT		(USERID) REFERENCES(USERINFO)
	INT_	(TRANSFORMTYPE)
	INT_	(DELETEDORIGINALFILE)
	INT_	(PROCCESSORDER)
END_TABLE

TABLE_(TRANSFORMATIONTASK)
	INT   (ID) PRIMARY_KEY AUTO_INCREMENT
	INT_    (TRANSFORMATIONSETTINGID) REFERENCES(TRANSFORMATIONSETTING)
	INT		(MODIFIEDDATE)
	STRING_	(FULLSOURCEFILEPATH,2000)
	STRING_	(FULLTARGETFILDEPATH,2000)
	INT	(STATUS)
END_TABLE