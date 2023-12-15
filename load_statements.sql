DELETE
FROM Adventureworks_humanresources_department hd
WHERE (
		(hd.departmentid) IN (
			SELECT hd.departmentid
			FROM vw_stage_Adventureworks_humanresources_department vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_humanresources_department
		) > 0;

UPDATE Adventureworks_humanresources_department hd
SET departmentid = vws.departmentid
	,modifieddate = vws.modifieddate
	,name = vws.name
	,groupname = vws.groupname
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_humanresources_department vws
WHERE (hd.departmentid) = (vws.departmentid)
	AND (
		vws.modifieddate
		,vws.name
		,vws.groupname
		) != (
		hd.modifieddate
		,hd.name
		,hd.groupname
		);

INSERT INTO Adventureworks_humanresources_department (
	departmentid
	,modifieddate
	,name
	,groupname
	,source_file_name
	,source_file_timestamp
	)
SELECT departmentid
	,modifieddate
	,name
	,groupname
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_humanresources_department
WHERE (departmentid) NOT IN (
		SELECT departmentid
		FROM Adventureworks_humanresources_department
		);

DELETE
FROM Adventureworks_humanresources_employee hd
WHERE (
		(hd.businessentityid) IN (
			SELECT hd.businessentityid
			FROM vw_stage_Adventureworks_humanresources_employee vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_humanresources_employee
		) > 0;

UPDATE Adventureworks_humanresources_employee hd
SET businessentityid = vws.businessentityid
	,birthdate = vws.birthdate
	,hiredate = vws.hiredate
	,salariedflag = vws.salariedflag
	,vacationhours = vws.vacationhours
	,sickleavehours = vws.sickleavehours
	,currentflag = vws.currentflag
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,nationalidnumber = vws.nationalidnumber
	,loginid = vws.loginid
	,jobtitle = vws.jobtitle
	,maritalstatus = vws.maritalstatus
	,gender = vws.gender
	,organizationnode = vws.organizationnode
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_humanresources_employee vws
WHERE (hd.businessentityid) = (vws.businessentityid)
	AND (
		vws.birthdate
		,vws.hiredate
		,vws.salariedflag
		,vws.vacationhours
		,vws.sickleavehours
		,vws.currentflag
		,vws.rowguid
		,vws.modifieddate
		,vws.nationalidnumber
		,vws.loginid
		,vws.jobtitle
		,vws.maritalstatus
		,vws.gender
		,vws.organizationnode
		) != (
		hd.birthdate
		,hd.hiredate
		,hd.salariedflag
		,hd.vacationhours
		,hd.sickleavehours
		,hd.currentflag
		,hd.rowguid
		,hd.modifieddate
		,hd.nationalidnumber
		,hd.loginid
		,hd.jobtitle
		,hd.maritalstatus
		,hd.gender
		,hd.organizationnode
		);

INSERT INTO Adventureworks_humanresources_employee (
	businessentityid
	,birthdate
	,hiredate
	,salariedflag
	,vacationhours
	,sickleavehours
	,currentflag
	,rowguid
	,modifieddate
	,nationalidnumber
	,loginid
	,jobtitle
	,maritalstatus
	,gender
	,organizationnode
	,source_file_name
	,source_file_timestamp
	)
SELECT businessentityid
	,birthdate
	,hiredate
	,salariedflag
	,vacationhours
	,sickleavehours
	,currentflag
	,rowguid
	,modifieddate
	,nationalidnumber
	,loginid
	,jobtitle
	,maritalstatus
	,gender
	,organizationnode
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_humanresources_employee
WHERE (businessentityid) NOT IN (
		SELECT businessentityid
		FROM Adventureworks_humanresources_employee
		);

DELETE
FROM Adventureworks_humanresources_employeedepartmenthistory hd
WHERE (
		(
			hd.businessentityid
			,hd.departmentid
			,hd.shiftid
			,hd.startdate
			) IN (
			SELECT hd.businessentityid
				,hd.departmentid
				,hd.shiftid
				,hd.startdate
			FROM vw_stage_Adventureworks_humanresources_employeedepartmenthistory vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_humanresources_employeedepartmenthistory
		) > 0;

UPDATE Adventureworks_humanresources_employeedepartmenthistory hd
SET businessentityid = vws.businessentityid
	,departmentid = vws.departmentid
	,shiftid = vws.shiftid
	,startdate = vws.startdate
	,enddate = vws.enddate
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_humanresources_employeedepartmenthistory vws
WHERE (
		hd.businessentityid
		,hd.departmentid
		,hd.shiftid
		,hd.startdate
		) = (
		vws.businessentityid
		,vws.departmentid
		,vws.shiftid
		,vws.startdate
		)
	AND (
		vws.enddate
		,vws.modifieddate
		) != (
		hd.enddate
		,hd.modifieddate
		);

INSERT INTO Adventureworks_humanresources_employeedepartmenthistory (
	businessentityid
	,departmentid
	,shiftid
	,startdate
	,enddate
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT businessentityid
	,departmentid
	,shiftid
	,startdate
	,enddate
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_humanresources_employeedepartmenthistory
WHERE (
		businessentityid
		,departmentid
		,shiftid
		,startdate
		) NOT IN (
		SELECT businessentityid
			,departmentid
			,shiftid
			,startdate
		FROM Adventureworks_humanresources_employeedepartmenthistory
		);

DELETE
FROM Adventureworks_humanresources_employeepayhistory hd
WHERE (
		(
			hd.businessentityid
			,hd.ratechangedate
			) IN (
			SELECT hd.businessentityid
				,hd.ratechangedate
			FROM vw_stage_Adventureworks_humanresources_employeepayhistory vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_humanresources_employeepayhistory
		) > 0;

UPDATE Adventureworks_humanresources_employeepayhistory hd
SET businessentityid = vws.businessentityid
	,ratechangedate = vws.ratechangedate
	,rate = vws.rate
	,payfrequency = vws.payfrequency
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_humanresources_employeepayhistory vws
WHERE (
		hd.businessentityid
		,hd.ratechangedate
		) = (
		vws.businessentityid
		,vws.ratechangedate
		)
	AND (
		vws.rate
		,vws.payfrequency
		,vws.modifieddate
		) != (
		hd.rate
		,hd.payfrequency
		,hd.modifieddate
		);

INSERT INTO Adventureworks_humanresources_employeepayhistory (
	businessentityid
	,ratechangedate
	,rate
	,payfrequency
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT businessentityid
	,ratechangedate
	,rate
	,payfrequency
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_humanresources_employeepayhistory
WHERE (
		businessentityid
		,ratechangedate
		) NOT IN (
		SELECT businessentityid
			,ratechangedate
		FROM Adventureworks_humanresources_employeepayhistory
		);

DELETE
FROM Adventureworks_humanresources_jobcandidate hd
WHERE (
		(hd.jobcandidateid) IN (
			SELECT hd.jobcandidateid
			FROM vw_stage_Adventureworks_humanresources_jobcandidate vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_humanresources_jobcandidate
		) > 0;

UPDATE Adventureworks_humanresources_jobcandidate hd
SET jobcandidateid = vws.jobcandidateid
	,businessentityid = vws.businessentityid
	,resume = vws.resume
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_humanresources_jobcandidate vws
WHERE (hd.jobcandidateid) = (vws.jobcandidateid)
	AND (
		vws.businessentityid
		,vws.resume
		,vws.modifieddate
		) != (
		hd.businessentityid
		,hd.resume
		,hd.modifieddate
		);

INSERT INTO Adventureworks_humanresources_jobcandidate (
	jobcandidateid
	,businessentityid
	,resume
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT jobcandidateid
	,businessentityid
	,resume
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_humanresources_jobcandidate
WHERE (jobcandidateid) NOT IN (
		SELECT jobcandidateid
		FROM Adventureworks_humanresources_jobcandidate
		);

DELETE
FROM Adventureworks_humanresources_shift hd
WHERE (
		(hd.shiftid) IN (
			SELECT hd.shiftid
			FROM vw_stage_Adventureworks_humanresources_shift vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_humanresources_shift
		) > 0;

UPDATE Adventureworks_humanresources_shift hd
SET starttime = vws.starttime
	,shiftid = vws.shiftid
	,endtime = vws.endtime
	,modifieddate = vws.modifieddate
	,name = vws.name
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_humanresources_shift vws
WHERE (hd.shiftid) = (vws.shiftid)
	AND (
		vws.starttime
		,vws.endtime
		,vws.modifieddate
		,vws.name
		) != (
		hd.starttime
		,hd.endtime
		,hd.modifieddate
		,hd.name
		);

INSERT INTO Adventureworks_humanresources_shift (
	starttime
	,shiftid
	,endtime
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
	)
SELECT starttime
	,shiftid
	,endtime
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_humanresources_shift
WHERE (shiftid) NOT IN (
		SELECT shiftid
		FROM Adventureworks_humanresources_shift
		);

DELETE
FROM Adventureworks_person_address hd
WHERE (
		(hd.addressid) IN (
			SELECT hd.addressid
			FROM vw_stage_Adventureworks_person_address vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_person_address
		) > 0;

UPDATE Adventureworks_person_address hd
SET addressid = vws.addressid
	,stateprovinceid = vws.stateprovinceid
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,addressline2 = vws.addressline2
	,city = vws.city
	,postalcode = vws.postalcode
	,spatiallocation = vws.spatiallocation
	,addressline1 = vws.addressline1
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_person_address vws
WHERE (hd.addressid) = (vws.addressid)
	AND (
		vws.stateprovinceid
		,vws.rowguid
		,vws.modifieddate
		,vws.addressline2
		,vws.city
		,vws.postalcode
		,vws.spatiallocation
		,vws.addressline1
		) != (
		hd.stateprovinceid
		,hd.rowguid
		,hd.modifieddate
		,hd.addressline2
		,hd.city
		,hd.postalcode
		,hd.spatiallocation
		,hd.addressline1
		);

INSERT INTO Adventureworks_person_address (
	addressid
	,stateprovinceid
	,rowguid
	,modifieddate
	,addressline2
	,city
	,postalcode
	,spatiallocation
	,addressline1
	,source_file_name
	,source_file_timestamp
	)
SELECT addressid
	,stateprovinceid
	,rowguid
	,modifieddate
	,addressline2
	,city
	,postalcode
	,spatiallocation
	,addressline1
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_person_address
WHERE (addressid) NOT IN (
		SELECT addressid
		FROM Adventureworks_person_address
		);

DELETE
FROM Adventureworks_person_addresstype hd
WHERE (
		(hd.addresstypeid) IN (
			SELECT hd.addresstypeid
			FROM vw_stage_Adventureworks_person_addresstype vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_person_addresstype
		) > 0;

UPDATE Adventureworks_person_addresstype hd
SET addresstypeid = vws.addresstypeid
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,name = vws.name
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_person_addresstype vws
WHERE (hd.addresstypeid) = (vws.addresstypeid)
	AND (
		vws.rowguid
		,vws.modifieddate
		,vws.name
		) != (
		hd.rowguid
		,hd.modifieddate
		,hd.name
		);

INSERT INTO Adventureworks_person_addresstype (
	addresstypeid
	,rowguid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
	)
SELECT addresstypeid
	,rowguid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_person_addresstype
WHERE (addresstypeid) NOT IN (
		SELECT addresstypeid
		FROM Adventureworks_person_addresstype
		);

DELETE
FROM Adventureworks_person_businessentity hd
WHERE (
		(hd.businessentityid) IN (
			SELECT hd.businessentityid
			FROM vw_stage_Adventureworks_person_businessentity vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_person_businessentity
		) > 0;

UPDATE Adventureworks_person_businessentity hd
SET businessentityid = vws.businessentityid
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_person_businessentity vws
WHERE (hd.businessentityid) = (vws.businessentityid)
	AND (
		vws.rowguid
		,vws.modifieddate
		) != (
		hd.rowguid
		,hd.modifieddate
		);

INSERT INTO Adventureworks_person_businessentity (
	businessentityid
	,rowguid
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT businessentityid
	,rowguid
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_person_businessentity
WHERE (businessentityid) NOT IN (
		SELECT businessentityid
		FROM Adventureworks_person_businessentity
		);

DELETE
FROM Adventureworks_person_businessentityaddress hd
WHERE (
		(
			hd.businessentityid
			,hd.addressid
			,hd.addresstypeid
			) IN (
			SELECT hd.businessentityid
				,hd.addressid
				,hd.addresstypeid
			FROM vw_stage_Adventureworks_person_businessentityaddress vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_person_businessentityaddress
		) > 0;

UPDATE Adventureworks_person_businessentityaddress hd
SET businessentityid = vws.businessentityid
	,addressid = vws.addressid
	,addresstypeid = vws.addresstypeid
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_person_businessentityaddress vws
WHERE (
		hd.businessentityid
		,hd.addressid
		,hd.addresstypeid
		) = (
		vws.businessentityid
		,vws.addressid
		,vws.addresstypeid
		)
	AND (
		vws.rowguid
		,vws.modifieddate
		) != (
		hd.rowguid
		,hd.modifieddate
		);

INSERT INTO Adventureworks_person_businessentityaddress (
	businessentityid
	,addressid
	,addresstypeid
	,rowguid
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT businessentityid
	,addressid
	,addresstypeid
	,rowguid
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_person_businessentityaddress
WHERE (
		businessentityid
		,addressid
		,addresstypeid
		) NOT IN (
		SELECT businessentityid
			,addressid
			,addresstypeid
		FROM Adventureworks_person_businessentityaddress
		);

DELETE
FROM Adventureworks_person_businessentitycontact hd
WHERE (
		(
			hd.businessentityid
			,hd.personid
			,hd.contacttypeid
			) IN (
			SELECT hd.businessentityid
				,hd.personid
				,hd.contacttypeid
			FROM vw_stage_Adventureworks_person_businessentitycontact vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_person_businessentitycontact
		) > 0;

UPDATE Adventureworks_person_businessentitycontact hd
SET businessentityid = vws.businessentityid
	,personid = vws.personid
	,contacttypeid = vws.contacttypeid
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_person_businessentitycontact vws
WHERE (
		hd.businessentityid
		,hd.personid
		,hd.contacttypeid
		) = (
		vws.businessentityid
		,vws.personid
		,vws.contacttypeid
		)
	AND (
		vws.rowguid
		,vws.modifieddate
		) != (
		hd.rowguid
		,hd.modifieddate
		);

INSERT INTO Adventureworks_person_businessentitycontact (
	businessentityid
	,personid
	,contacttypeid
	,rowguid
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT businessentityid
	,personid
	,contacttypeid
	,rowguid
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_person_businessentitycontact
WHERE (
		businessentityid
		,personid
		,contacttypeid
		) NOT IN (
		SELECT businessentityid
			,personid
			,contacttypeid
		FROM Adventureworks_person_businessentitycontact
		);

DELETE
FROM Adventureworks_person_contacttype hd
WHERE (
		(hd.contacttypeid) IN (
			SELECT hd.contacttypeid
			FROM vw_stage_Adventureworks_person_contacttype vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_person_contacttype
		) > 0;

UPDATE Adventureworks_person_contacttype hd
SET contacttypeid = vws.contacttypeid
	,modifieddate = vws.modifieddate
	,name = vws.name
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_person_contacttype vws
WHERE (hd.contacttypeid) = (vws.contacttypeid)
	AND (
		vws.modifieddate
		,vws.name
		) != (
		hd.modifieddate
		,hd.name
		);

INSERT INTO Adventureworks_person_contacttype (
	contacttypeid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
	)
SELECT contacttypeid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_person_contacttype
WHERE (contacttypeid) NOT IN (
		SELECT contacttypeid
		FROM Adventureworks_person_contacttype
		);

DELETE
FROM Adventureworks_person_countryregion hd
WHERE (
		(hd.countryregioncode) IN (
			SELECT hd.countryregioncode
			FROM vw_stage_Adventureworks_person_countryregion vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_person_countryregion
		) > 0;

UPDATE Adventureworks_person_countryregion hd
SET modifieddate = vws.modifieddate
	,countryregioncode = vws.countryregioncode
	,name = vws.name
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_person_countryregion vws
WHERE (hd.countryregioncode) = (vws.countryregioncode)
	AND (
		vws.modifieddate
		,vws.name
		) != (
		hd.modifieddate
		,hd.name
		);

INSERT INTO Adventureworks_person_countryregion (
	modifieddate
	,countryregioncode
	,name
	,source_file_name
	,source_file_timestamp
	)
SELECT modifieddate
	,countryregioncode
	,name
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_person_countryregion
WHERE (countryregioncode) NOT IN (
		SELECT countryregioncode
		FROM Adventureworks_person_countryregion
		);

DELETE
FROM Adventureworks_person_emailaddress hd
WHERE (
		(
			hd.businessentityid
			,hd.emailaddressid
			) IN (
			SELECT hd.businessentityid
				,hd.emailaddressid
			FROM vw_stage_Adventureworks_person_emailaddress vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_person_emailaddress
		) > 0;

UPDATE Adventureworks_person_emailaddress hd
SET businessentityid = vws.businessentityid
	,emailaddressid = vws.emailaddressid
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,emailaddress = vws.emailaddress
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_person_emailaddress vws
WHERE (
		hd.businessentityid
		,hd.emailaddressid
		) = (
		vws.businessentityid
		,vws.emailaddressid
		)
	AND (
		vws.rowguid
		,vws.modifieddate
		,vws.emailaddress
		) != (
		hd.rowguid
		,hd.modifieddate
		,hd.emailaddress
		);

INSERT INTO Adventureworks_person_emailaddress (
	businessentityid
	,emailaddressid
	,rowguid
	,modifieddate
	,emailaddress
	,source_file_name
	,source_file_timestamp
	)
SELECT businessentityid
	,emailaddressid
	,rowguid
	,modifieddate
	,emailaddress
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_person_emailaddress
WHERE (
		businessentityid
		,emailaddressid
		) NOT IN (
		SELECT businessentityid
			,emailaddressid
		FROM Adventureworks_person_emailaddress
		);

DELETE
FROM Adventureworks_person_password hd
WHERE (
		(hd.businessentityid) IN (
			SELECT hd.businessentityid
			FROM vw_stage_Adventureworks_person_password vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_person_password
		) > 0;

UPDATE Adventureworks_person_password hd
SET businessentityid = vws.businessentityid
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,passwordhash = vws.passwordhash
	,passwordsalt = vws.passwordsalt
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_person_password vws
WHERE (hd.businessentityid) = (vws.businessentityid)
	AND (
		vws.rowguid
		,vws.modifieddate
		,vws.passwordhash
		,vws.passwordsalt
		) != (
		hd.rowguid
		,hd.modifieddate
		,hd.passwordhash
		,hd.passwordsalt
		);

INSERT INTO Adventureworks_person_password (
	businessentityid
	,rowguid
	,modifieddate
	,passwordhash
	,passwordsalt
	,source_file_name
	,source_file_timestamp
	)
SELECT businessentityid
	,rowguid
	,modifieddate
	,passwordhash
	,passwordsalt
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_person_password
WHERE (businessentityid) NOT IN (
		SELECT businessentityid
		FROM Adventureworks_person_password
		);

DELETE
FROM Adventureworks_person_person hd
WHERE (
		(hd.businessentityid) IN (
			SELECT hd.businessentityid
			FROM vw_stage_Adventureworks_person_person vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_person_person
		) > 0;

UPDATE Adventureworks_person_person hd
SET businessentityid = vws.businessentityid
	,namestyle = vws.namestyle
	,emailpromotion = vws.emailpromotion
	,additionalcontactinfo = vws.additionalcontactinfo
	,demographics = vws.demographics
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,persontype = vws.persontype
	,title = vws.title
	,firstname = vws.firstname
	,middlename = vws.middlename
	,lastname = vws.lastname
	,suffix = vws.suffix
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_person_person vws
WHERE (hd.businessentityid) = (vws.businessentityid)
	AND (
		vws.namestyle
		,vws.emailpromotion
		,vws.additionalcontactinfo
		,vws.demographics
		,vws.rowguid
		,vws.modifieddate
		,vws.persontype
		,vws.title
		,vws.firstname
		,vws.middlename
		,vws.lastname
		,vws.suffix
		) != (
		hd.namestyle
		,hd.emailpromotion
		,hd.additionalcontactinfo
		,hd.demographics
		,hd.rowguid
		,hd.modifieddate
		,hd.persontype
		,hd.title
		,hd.firstname
		,hd.middlename
		,hd.lastname
		,hd.suffix
		);

INSERT INTO Adventureworks_person_person (
	businessentityid
	,namestyle
	,emailpromotion
	,additionalcontactinfo
	,demographics
	,rowguid
	,modifieddate
	,persontype
	,title
	,firstname
	,middlename
	,lastname
	,suffix
	,source_file_name
	,source_file_timestamp
	)
SELECT businessentityid
	,namestyle
	,emailpromotion
	,additionalcontactinfo
	,demographics
	,rowguid
	,modifieddate
	,persontype
	,title
	,firstname
	,middlename
	,lastname
	,suffix
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_person_person
WHERE (businessentityid) NOT IN (
		SELECT businessentityid
		FROM Adventureworks_person_person
		);

DELETE
FROM Adventureworks_person_personphone hd
WHERE (
		(
			hd.businessentityid
			,hd.phonenumbertypeid
			,hd.phonenumber
			) IN (
			SELECT hd.businessentityid
				,hd.phonenumbertypeid
				,hd.phonenumber
			FROM vw_stage_Adventureworks_person_personphone vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_person_personphone
		) > 0;

UPDATE Adventureworks_person_personphone hd
SET businessentityid = vws.businessentityid
	,phonenumbertypeid = vws.phonenumbertypeid
	,modifieddate = vws.modifieddate
	,phonenumber = vws.phonenumber
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_person_personphone vws
WHERE (
		hd.businessentityid
		,hd.phonenumbertypeid
		,hd.phonenumber
		) = (
		vws.businessentityid
		,vws.phonenumbertypeid
		,vws.phonenumber
		)
	AND (vws.modifieddate) != (hd.modifieddate);

INSERT INTO Adventureworks_person_personphone (
	businessentityid
	,phonenumbertypeid
	,modifieddate
	,phonenumber
	,source_file_name
	,source_file_timestamp
	)
SELECT businessentityid
	,phonenumbertypeid
	,modifieddate
	,phonenumber
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_person_personphone
WHERE (
		businessentityid
		,phonenumbertypeid
		,phonenumber
		) NOT IN (
		SELECT businessentityid
			,phonenumbertypeid
			,phonenumber
		FROM Adventureworks_person_personphone
		);

DELETE
FROM Adventureworks_person_phonenumbertype hd
WHERE (
		(hd.phonenumbertypeid) IN (
			SELECT hd.phonenumbertypeid
			FROM vw_stage_Adventureworks_person_phonenumbertype vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_person_phonenumbertype
		) > 0;

UPDATE Adventureworks_person_phonenumbertype hd
SET phonenumbertypeid = vws.phonenumbertypeid
	,modifieddate = vws.modifieddate
	,name = vws.name
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_person_phonenumbertype vws
WHERE (hd.phonenumbertypeid) = (vws.phonenumbertypeid)
	AND (
		vws.modifieddate
		,vws.name
		) != (
		hd.modifieddate
		,hd.name
		);

INSERT INTO Adventureworks_person_phonenumbertype (
	phonenumbertypeid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
	)
SELECT phonenumbertypeid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_person_phonenumbertype
WHERE (phonenumbertypeid) NOT IN (
		SELECT phonenumbertypeid
		FROM Adventureworks_person_phonenumbertype
		);

DELETE
FROM Adventureworks_person_stateprovince hd
WHERE (
		(hd.stateprovinceid) IN (
			SELECT hd.stateprovinceid
			FROM vw_stage_Adventureworks_person_stateprovince vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_person_stateprovince
		) > 0;

UPDATE Adventureworks_person_stateprovince hd
SET stateprovinceid = vws.stateprovinceid
	,isonlystateprovinceflag = vws.isonlystateprovinceflag
	,territoryid = vws.territoryid
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,stateprovincecode = vws.stateprovincecode
	,countryregioncode = vws.countryregioncode
	,name = vws.name
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_person_stateprovince vws
WHERE (hd.stateprovinceid) = (vws.stateprovinceid)
	AND (
		vws.isonlystateprovinceflag
		,vws.territoryid
		,vws.rowguid
		,vws.modifieddate
		,vws.stateprovincecode
		,vws.countryregioncode
		,vws.name
		) != (
		hd.isonlystateprovinceflag
		,hd.territoryid
		,hd.rowguid
		,hd.modifieddate
		,hd.stateprovincecode
		,hd.countryregioncode
		,hd.name
		);

INSERT INTO Adventureworks_person_stateprovince (
	stateprovinceid
	,isonlystateprovinceflag
	,territoryid
	,rowguid
	,modifieddate
	,stateprovincecode
	,countryregioncode
	,name
	,source_file_name
	,source_file_timestamp
	)
SELECT stateprovinceid
	,isonlystateprovinceflag
	,territoryid
	,rowguid
	,modifieddate
	,stateprovincecode
	,countryregioncode
	,name
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_person_stateprovince
WHERE (stateprovinceid) NOT IN (
		SELECT stateprovinceid
		FROM Adventureworks_person_stateprovince
		);

DELETE
FROM Adventureworks_production_billofmaterials hd
WHERE (
		(hd.billofmaterialsid) IN (
			SELECT hd.billofmaterialsid
			FROM vw_stage_Adventureworks_production_billofmaterials vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_billofmaterials
		) > 0;

UPDATE Adventureworks_production_billofmaterials hd
SET billofmaterialsid = vws.billofmaterialsid
	,productassemblyid = vws.productassemblyid
	,componentid = vws.componentid
	,startdate = vws.startdate
	,enddate = vws.enddate
	,bomlevel = vws.bomlevel
	,perassemblyqty = vws.perassemblyqty
	,modifieddate = vws.modifieddate
	,unitmeasurecode = vws.unitmeasurecode
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_billofmaterials vws
WHERE (hd.billofmaterialsid) = (vws.billofmaterialsid)
	AND (
		vws.productassemblyid
		,vws.componentid
		,vws.startdate
		,vws.enddate
		,vws.bomlevel
		,vws.perassemblyqty
		,vws.modifieddate
		,vws.unitmeasurecode
		) != (
		hd.productassemblyid
		,hd.componentid
		,hd.startdate
		,hd.enddate
		,hd.bomlevel
		,hd.perassemblyqty
		,hd.modifieddate
		,hd.unitmeasurecode
		);

INSERT INTO Adventureworks_production_billofmaterials (
	billofmaterialsid
	,productassemblyid
	,componentid
	,startdate
	,enddate
	,bomlevel
	,perassemblyqty
	,modifieddate
	,unitmeasurecode
	,source_file_name
	,source_file_timestamp
	)
SELECT billofmaterialsid
	,productassemblyid
	,componentid
	,startdate
	,enddate
	,bomlevel
	,perassemblyqty
	,modifieddate
	,unitmeasurecode
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_billofmaterials
WHERE (billofmaterialsid) NOT IN (
		SELECT billofmaterialsid
		FROM Adventureworks_production_billofmaterials
		);

DELETE
FROM Adventureworks_production_culture hd
WHERE (
		(hd.cultureid) IN (
			SELECT hd.cultureid
			FROM vw_stage_Adventureworks_production_culture vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_culture
		) > 0;

UPDATE Adventureworks_production_culture hd
SET modifieddate = vws.modifieddate
	,cultureid = vws.cultureid
	,name = vws.name
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_culture vws
WHERE (hd.cultureid) = (vws.cultureid)
	AND (
		vws.modifieddate
		,vws.name
		) != (
		hd.modifieddate
		,hd.name
		);

INSERT INTO Adventureworks_production_culture (
	modifieddate
	,cultureid
	,name
	,source_file_name
	,source_file_timestamp
	)
SELECT modifieddate
	,cultureid
	,name
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_culture
WHERE (cultureid) NOT IN (
		SELECT cultureid
		FROM Adventureworks_production_culture
		);

DELETE
FROM Adventureworks_production_document hd
WHERE (
		(hd.documentnode) IN (
			SELECT hd.documentnode
			FROM vw_stage_Adventureworks_production_document vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_document
		) > 0;

UPDATE Adventureworks_production_document hd
SET OWNER = vws.OWNER
	,folderflag = vws.folderflag
	,changenumber = vws.changenumber
	,STATUS = vws.STATUS
	,document = vws.document
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,title = vws.title
	,filename = vws.filename
	,fileextension = vws.fileextension
	,revision = vws.revision
	,documentsummary = vws.documentsummary
	,documentnode = vws.documentnode
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_document vws
WHERE (hd.documentnode) = (vws.documentnode)
	AND (
		vws.OWNER
		,vws.folderflag
		,vws.changenumber
		,vws.STATUS
		,vws.document
		,vws.rowguid
		,vws.modifieddate
		,vws.title
		,vws.filename
		,vws.fileextension
		,vws.revision
		,vws.documentsummary
		) != (
		hd.OWNER
		,hd.folderflag
		,hd.changenumber
		,hd.STATUS
		,hd.document
		,hd.rowguid
		,hd.modifieddate
		,hd.title
		,hd.filename
		,hd.fileextension
		,hd.revision
		,hd.documentsummary
		);

INSERT INTO Adventureworks_production_document (
	OWNER
	,folderflag
	,changenumber
	,STATUS
	,document
	,rowguid
	,modifieddate
	,title
	,filename
	,fileextension
	,revision
	,documentsummary
	,documentnode
	,source_file_name
	,source_file_timestamp
	)
SELECT OWNER
	,folderflag
	,changenumber
	,STATUS
	,document
	,rowguid
	,modifieddate
	,title
	,filename
	,fileextension
	,revision
	,documentsummary
	,documentnode
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_document
WHERE (documentnode) NOT IN (
		SELECT documentnode
		FROM Adventureworks_production_document
		);

DELETE
FROM Adventureworks_production_illustration hd
WHERE (
		(hd.illustrationid) IN (
			SELECT hd.illustrationid
			FROM vw_stage_Adventureworks_production_illustration vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_illustration
		) > 0;

UPDATE Adventureworks_production_illustration hd
SET illustrationid = vws.illustrationid
	,diagram = vws.diagram
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_illustration vws
WHERE (hd.illustrationid) = (vws.illustrationid)
	AND (
		vws.diagram
		,vws.modifieddate
		) != (
		hd.diagram
		,hd.modifieddate
		);

INSERT INTO Adventureworks_production_illustration (
	illustrationid
	,diagram
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT illustrationid
	,diagram
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_illustration
WHERE (illustrationid) NOT IN (
		SELECT illustrationid
		FROM Adventureworks_production_illustration
		);

DELETE
FROM Adventureworks_production_location hd
WHERE (
		(hd.locationid) IN (
			SELECT hd.locationid
			FROM vw_stage_Adventureworks_production_location vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_location
		) > 0;

UPDATE Adventureworks_production_location hd
SET locationid = vws.locationid
	,costrate = vws.costrate
	,availability = vws.availability
	,modifieddate = vws.modifieddate
	,name = vws.name
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_location vws
WHERE (hd.locationid) = (vws.locationid)
	AND (
		vws.costrate
		,vws.availability
		,vws.modifieddate
		,vws.name
		) != (
		hd.costrate
		,hd.availability
		,hd.modifieddate
		,hd.name
		);

INSERT INTO Adventureworks_production_location (
	locationid
	,costrate
	,availability
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
	)
SELECT locationid
	,costrate
	,availability
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_location
WHERE (locationid) NOT IN (
		SELECT locationid
		FROM Adventureworks_production_location
		);

DELETE
FROM Adventureworks_production_product hd
WHERE (
		(hd.productid) IN (
			SELECT hd.productid
			FROM vw_stage_Adventureworks_production_product vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_product
		) > 0;

UPDATE Adventureworks_production_product hd
SET productid = vws.productid
	,makeflag = vws.makeflag
	,finishedgoodsflag = vws.finishedgoodsflag
	,safetystocklevel = vws.safetystocklevel
	,reorderpoint = vws.reorderpoint
	,standardcost = vws.standardcost
	,listprice = vws.listprice
	,weight = vws.weight
	,daystomanufacture = vws.daystomanufacture
	,productsubcategoryid = vws.productsubcategoryid
	,productmodelid = vws.productmodelid
	,sellstartdate = vws.sellstartdate
	,sellenddate = vws.sellenddate
	,discontinueddate = vws.discontinueddate
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,sizeunitmeasurecode = vws.sizeunitmeasurecode
	,name = vws.name
	,productnumber = vws.productnumber
	,color = vws.color
	,size = vws.size
	,weightunitmeasurecode = vws.weightunitmeasurecode
	,productline = vws.productline
	,class = vws.class
	,style = vws.style
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_product vws
WHERE (hd.productid) = (vws.productid)
	AND (
		vws.makeflag
		,vws.finishedgoodsflag
		,vws.safetystocklevel
		,vws.reorderpoint
		,vws.standardcost
		,vws.listprice
		,vws.weight
		,vws.daystomanufacture
		,vws.productsubcategoryid
		,vws.productmodelid
		,vws.sellstartdate
		,vws.sellenddate
		,vws.discontinueddate
		,vws.rowguid
		,vws.modifieddate
		,vws.sizeunitmeasurecode
		,vws.name
		,vws.productnumber
		,vws.color
		,vws.size
		,vws.weightunitmeasurecode
		,vws.productline
		,vws.class
		,vws.style
		) != (
		hd.makeflag
		,hd.finishedgoodsflag
		,hd.safetystocklevel
		,hd.reorderpoint
		,hd.standardcost
		,hd.listprice
		,hd.weight
		,hd.daystomanufacture
		,hd.productsubcategoryid
		,hd.productmodelid
		,hd.sellstartdate
		,hd.sellenddate
		,hd.discontinueddate
		,hd.rowguid
		,hd.modifieddate
		,hd.sizeunitmeasurecode
		,hd.name
		,hd.productnumber
		,hd.color
		,hd.size
		,hd.weightunitmeasurecode
		,hd.productline
		,hd.class
		,hd.style
		);

INSERT INTO Adventureworks_production_product (
	productid
	,makeflag
	,finishedgoodsflag
	,safetystocklevel
	,reorderpoint
	,standardcost
	,listprice
	,weight
	,daystomanufacture
	,productsubcategoryid
	,productmodelid
	,sellstartdate
	,sellenddate
	,discontinueddate
	,rowguid
	,modifieddate
	,sizeunitmeasurecode
	,name
	,productnumber
	,color
	,size
	,weightunitmeasurecode
	,productline
	,class
	,style
	,source_file_name
	,source_file_timestamp
	)
SELECT productid
	,makeflag
	,finishedgoodsflag
	,safetystocklevel
	,reorderpoint
	,standardcost
	,listprice
	,weight
	,daystomanufacture
	,productsubcategoryid
	,productmodelid
	,sellstartdate
	,sellenddate
	,discontinueddate
	,rowguid
	,modifieddate
	,sizeunitmeasurecode
	,name
	,productnumber
	,color
	,size
	,weightunitmeasurecode
	,productline
	,class
	,style
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_product
WHERE (productid) NOT IN (
		SELECT productid
		FROM Adventureworks_production_product
		);

DELETE
FROM Adventureworks_production_productcategory hd
WHERE (
		(hd.productcategoryid) IN (
			SELECT hd.productcategoryid
			FROM vw_stage_Adventureworks_production_productcategory vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_productcategory
		) > 0;

UPDATE Adventureworks_production_productcategory hd
SET productcategoryid = vws.productcategoryid
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,name = vws.name
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_productcategory vws
WHERE (hd.productcategoryid) = (vws.productcategoryid)
	AND (
		vws.rowguid
		,vws.modifieddate
		,vws.name
		) != (
		hd.rowguid
		,hd.modifieddate
		,hd.name
		);

INSERT INTO Adventureworks_production_productcategory (
	productcategoryid
	,rowguid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
	)
SELECT productcategoryid
	,rowguid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_productcategory
WHERE (productcategoryid) NOT IN (
		SELECT productcategoryid
		FROM Adventureworks_production_productcategory
		);

DELETE
FROM Adventureworks_production_productcosthistory hd
WHERE (
		(
			hd.productid
			,hd.startdate
			) IN (
			SELECT hd.productid
				,hd.startdate
			FROM vw_stage_Adventureworks_production_productcosthistory vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_productcosthistory
		) > 0;

UPDATE Adventureworks_production_productcosthistory hd
SET productid = vws.productid
	,startdate = vws.startdate
	,enddate = vws.enddate
	,standardcost = vws.standardcost
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_productcosthistory vws
WHERE (
		hd.productid
		,hd.startdate
		) = (
		vws.productid
		,vws.startdate
		)
	AND (
		vws.enddate
		,vws.standardcost
		,vws.modifieddate
		) != (
		hd.enddate
		,hd.standardcost
		,hd.modifieddate
		);

INSERT INTO Adventureworks_production_productcosthistory (
	productid
	,startdate
	,enddate
	,standardcost
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT productid
	,startdate
	,enddate
	,standardcost
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_productcosthistory
WHERE (
		productid
		,startdate
		) NOT IN (
		SELECT productid
			,startdate
		FROM Adventureworks_production_productcosthistory
		);

DELETE
FROM Adventureworks_production_productdescription hd
WHERE (
		(hd.productdescriptionid) IN (
			SELECT hd.productdescriptionid
			FROM vw_stage_Adventureworks_production_productdescription vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_productdescription
		) > 0;

UPDATE Adventureworks_production_productdescription hd
SET productdescriptionid = vws.productdescriptionid
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,description = vws.description
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_productdescription vws
WHERE (hd.productdescriptionid) = (vws.productdescriptionid)
	AND (
		vws.rowguid
		,vws.modifieddate
		,vws.description
		) != (
		hd.rowguid
		,hd.modifieddate
		,hd.description
		);

INSERT INTO Adventureworks_production_productdescription (
	productdescriptionid
	,rowguid
	,modifieddate
	,description
	,source_file_name
	,source_file_timestamp
	)
SELECT productdescriptionid
	,rowguid
	,modifieddate
	,description
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_productdescription
WHERE (productdescriptionid) NOT IN (
		SELECT productdescriptionid
		FROM Adventureworks_production_productdescription
		);

DELETE
FROM Adventureworks_production_productdocument hd
WHERE (
		(
			hd.productid
			,hd.documentnode
			) IN (
			SELECT hd.productid
				,hd.documentnode
			FROM vw_stage_Adventureworks_production_productdocument vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_productdocument
		) > 0;

UPDATE Adventureworks_production_productdocument hd
SET productid = vws.productid
	,modifieddate = vws.modifieddate
	,documentnode = vws.documentnode
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_productdocument vws
WHERE (
		hd.productid
		,hd.documentnode
		) = (
		vws.productid
		,vws.documentnode
		)
	AND (vws.modifieddate) != (hd.modifieddate);

INSERT INTO Adventureworks_production_productdocument (
	productid
	,modifieddate
	,documentnode
	,source_file_name
	,source_file_timestamp
	)
SELECT productid
	,modifieddate
	,documentnode
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_productdocument
WHERE (
		productid
		,documentnode
		) NOT IN (
		SELECT productid
			,documentnode
		FROM Adventureworks_production_productdocument
		);

DELETE
FROM Adventureworks_production_productinventory hd
WHERE (
		(
			hd.productid
			,hd.locationid
			) IN (
			SELECT hd.productid
				,hd.locationid
			FROM vw_stage_Adventureworks_production_productinventory vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_productinventory
		) > 0;

UPDATE Adventureworks_production_productinventory hd
SET productid = vws.productid
	,locationid = vws.locationid
	,bin = vws.bin
	,quantity = vws.quantity
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,shelf = vws.shelf
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_productinventory vws
WHERE (
		hd.productid
		,hd.locationid
		) = (
		vws.productid
		,vws.locationid
		)
	AND (
		vws.bin
		,vws.quantity
		,vws.rowguid
		,vws.modifieddate
		,vws.shelf
		) != (
		hd.bin
		,hd.quantity
		,hd.rowguid
		,hd.modifieddate
		,hd.shelf
		);

INSERT INTO Adventureworks_production_productinventory (
	productid
	,locationid
	,bin
	,quantity
	,rowguid
	,modifieddate
	,shelf
	,source_file_name
	,source_file_timestamp
	)
SELECT productid
	,locationid
	,bin
	,quantity
	,rowguid
	,modifieddate
	,shelf
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_productinventory
WHERE (
		productid
		,locationid
		) NOT IN (
		SELECT productid
			,locationid
		FROM Adventureworks_production_productinventory
		);

DELETE
FROM Adventureworks_production_productlistpricehistory hd
WHERE (
		(
			hd.productid
			,hd.startdate
			) IN (
			SELECT hd.productid
				,hd.startdate
			FROM vw_stage_Adventureworks_production_productlistpricehistory vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_productlistpricehistory
		) > 0;

UPDATE Adventureworks_production_productlistpricehistory hd
SET productid = vws.productid
	,startdate = vws.startdate
	,enddate = vws.enddate
	,listprice = vws.listprice
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_productlistpricehistory vws
WHERE (
		hd.productid
		,hd.startdate
		) = (
		vws.productid
		,vws.startdate
		)
	AND (
		vws.enddate
		,vws.listprice
		,vws.modifieddate
		) != (
		hd.enddate
		,hd.listprice
		,hd.modifieddate
		);

INSERT INTO Adventureworks_production_productlistpricehistory (
	productid
	,startdate
	,enddate
	,listprice
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT productid
	,startdate
	,enddate
	,listprice
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_productlistpricehistory
WHERE (
		productid
		,startdate
		) NOT IN (
		SELECT productid
			,startdate
		FROM Adventureworks_production_productlistpricehistory
		);

DELETE
FROM Adventureworks_production_productmodel hd
WHERE (
		(hd.productmodelid) IN (
			SELECT hd.productmodelid
			FROM vw_stage_Adventureworks_production_productmodel vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_productmodel
		) > 0;

UPDATE Adventureworks_production_productmodel hd
SET productmodelid = vws.productmodelid
	,catalogdescription = vws.catalogdescription
	,instructions = vws.instructions
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,name = vws.name
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_productmodel vws
WHERE (hd.productmodelid) = (vws.productmodelid)
	AND (
		vws.catalogdescription
		,vws.instructions
		,vws.rowguid
		,vws.modifieddate
		,vws.name
		) != (
		hd.catalogdescription
		,hd.instructions
		,hd.rowguid
		,hd.modifieddate
		,hd.name
		);

INSERT INTO Adventureworks_production_productmodel (
	productmodelid
	,catalogdescription
	,instructions
	,rowguid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
	)
SELECT productmodelid
	,catalogdescription
	,instructions
	,rowguid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_productmodel
WHERE (productmodelid) NOT IN (
		SELECT productmodelid
		FROM Adventureworks_production_productmodel
		);

DELETE
FROM Adventureworks_production_productmodelillustration hd
WHERE (
		(
			hd.productmodelid
			,hd.illustrationid
			) IN (
			SELECT hd.productmodelid
				,hd.illustrationid
			FROM vw_stage_Adventureworks_production_productmodelillustration vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_productmodelillustration
		) > 0;

UPDATE Adventureworks_production_productmodelillustration hd
SET productmodelid = vws.productmodelid
	,illustrationid = vws.illustrationid
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_productmodelillustration vws
WHERE (
		hd.productmodelid
		,hd.illustrationid
		) = (
		vws.productmodelid
		,vws.illustrationid
		)
	AND (vws.modifieddate) != (hd.modifieddate);

INSERT INTO Adventureworks_production_productmodelillustration (
	productmodelid
	,illustrationid
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT productmodelid
	,illustrationid
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_productmodelillustration
WHERE (
		productmodelid
		,illustrationid
		) NOT IN (
		SELECT productmodelid
			,illustrationid
		FROM Adventureworks_production_productmodelillustration
		);

DELETE
FROM Adventureworks_production_productmodelproductdescriptionculture hd
WHERE (
		(
			hd.productmodelid
			,hd.productdescriptionid
			,hd.cultureid
			) IN (
			SELECT hd.productmodelid
				,hd.productdescriptionid
				,hd.cultureid
			FROM vw_stage_Adventureworks_production_productmodelproductdescriptionculture vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_productmodelproductdescriptionculture
		) > 0;

UPDATE Adventureworks_production_productmodelproductdescriptionculture hd
SET productmodelid = vws.productmodelid
	,productdescriptionid = vws.productdescriptionid
	,modifieddate = vws.modifieddate
	,cultureid = vws.cultureid
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_productmodelproductdescriptionculture vws
WHERE (
		hd.productmodelid
		,hd.productdescriptionid
		,hd.cultureid
		) = (
		vws.productmodelid
		,vws.productdescriptionid
		,vws.cultureid
		)
	AND (vws.modifieddate) != (hd.modifieddate);

INSERT INTO Adventureworks_production_productmodelproductdescriptionculture (
	productmodelid
	,productdescriptionid
	,modifieddate
	,cultureid
	,source_file_name
	,source_file_timestamp
	)
SELECT productmodelid
	,productdescriptionid
	,modifieddate
	,cultureid
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_productmodelproductdescriptionculture
WHERE (
		productmodelid
		,productdescriptionid
		,cultureid
		) NOT IN (
		SELECT productmodelid
			,productdescriptionid
			,cultureid
		FROM Adventureworks_production_productmodelproductdescriptionculture
		);

DELETE
FROM Adventureworks_production_productphoto hd
WHERE (
		(hd.productphotoid) IN (
			SELECT hd.productphotoid
			FROM vw_stage_Adventureworks_production_productphoto vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_productphoto
		) > 0;

UPDATE Adventureworks_production_productphoto hd
SET productphotoid = vws.productphotoid
	,thumbnailphoto = vws.thumbnailphoto
	,largephoto = vws.largephoto
	,modifieddate = vws.modifieddate
	,thumbnailphotofilename = vws.thumbnailphotofilename
	,largephotofilename = vws.largephotofilename
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_productphoto vws
WHERE (hd.productphotoid) = (vws.productphotoid)
	AND (
		vws.thumbnailphoto
		,vws.largephoto
		,vws.modifieddate
		,vws.thumbnailphotofilename
		,vws.largephotofilename
		) != (
		hd.thumbnailphoto
		,hd.largephoto
		,hd.modifieddate
		,hd.thumbnailphotofilename
		,hd.largephotofilename
		);

INSERT INTO Adventureworks_production_productphoto (
	productphotoid
	,thumbnailphoto
	,largephoto
	,modifieddate
	,thumbnailphotofilename
	,largephotofilename
	,source_file_name
	,source_file_timestamp
	)
SELECT productphotoid
	,thumbnailphoto
	,largephoto
	,modifieddate
	,thumbnailphotofilename
	,largephotofilename
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_productphoto
WHERE (productphotoid) NOT IN (
		SELECT productphotoid
		FROM Adventureworks_production_productphoto
		);

DELETE
FROM Adventureworks_production_productproductphoto hd
WHERE (
		(
			hd.productid
			,hd.productphotoid
			) IN (
			SELECT hd.productid
				,hd.productphotoid
			FROM vw_stage_Adventureworks_production_productproductphoto vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_productproductphoto
		) > 0;

UPDATE Adventureworks_production_productproductphoto hd
SET productid = vws.productid
	,productphotoid = vws.productphotoid
	,PRIMARY = vws.PRIMARY
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_productproductphoto vws
WHERE (
		hd.productid
		,hd.productphotoid
		) = (
		vws.productid
		,vws.productphotoid
		)
	AND (
		vws.PRIMARY
		,vws.modifieddate
		) != (
		hd.PRIMARY
		,hd.modifieddate
		);

INSERT INTO Adventureworks_production_productproductphoto (
	productid
	,productphotoid
	,PRIMARY
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT productid
	,productphotoid
	,PRIMARY
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_productproductphoto
WHERE (
		productid
		,productphotoid
		) NOT IN (
		SELECT productid
			,productphotoid
		FROM Adventureworks_production_productproductphoto
		);

DELETE
FROM Adventureworks_production_productreview hd
WHERE (
		(hd.productreviewid) IN (
			SELECT hd.productreviewid
			FROM vw_stage_Adventureworks_production_productreview vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_productreview
		) > 0;

UPDATE Adventureworks_production_productreview hd
SET productreviewid = vws.productreviewid
	,productid = vws.productid
	,reviewdate = vws.reviewdate
	,rating = vws.rating
	,modifieddate = vws.modifieddate
	,reviewername = vws.reviewername
	,emailaddress = vws.emailaddress
	,comments = vws.comments
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_productreview vws
WHERE (hd.productreviewid) = (vws.productreviewid)
	AND (
		vws.productid
		,vws.reviewdate
		,vws.rating
		,vws.modifieddate
		,vws.reviewername
		,vws.emailaddress
		,vws.comments
		) != (
		hd.productid
		,hd.reviewdate
		,hd.rating
		,hd.modifieddate
		,hd.reviewername
		,hd.emailaddress
		,hd.comments
		);

INSERT INTO Adventureworks_production_productreview (
	productreviewid
	,productid
	,reviewdate
	,rating
	,modifieddate
	,reviewername
	,emailaddress
	,comments
	,source_file_name
	,source_file_timestamp
	)
SELECT productreviewid
	,productid
	,reviewdate
	,rating
	,modifieddate
	,reviewername
	,emailaddress
	,comments
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_productreview
WHERE (productreviewid) NOT IN (
		SELECT productreviewid
		FROM Adventureworks_production_productreview
		);

DELETE
FROM Adventureworks_production_productsubcategory hd
WHERE (
		(hd.productsubcategoryid) IN (
			SELECT hd.productsubcategoryid
			FROM vw_stage_Adventureworks_production_productsubcategory vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_productsubcategory
		) > 0;

UPDATE Adventureworks_production_productsubcategory hd
SET productsubcategoryid = vws.productsubcategoryid
	,productcategoryid = vws.productcategoryid
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,name = vws.name
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_productsubcategory vws
WHERE (hd.productsubcategoryid) = (vws.productsubcategoryid)
	AND (
		vws.productcategoryid
		,vws.rowguid
		,vws.modifieddate
		,vws.name
		) != (
		hd.productcategoryid
		,hd.rowguid
		,hd.modifieddate
		,hd.name
		);

INSERT INTO Adventureworks_production_productsubcategory (
	productsubcategoryid
	,productcategoryid
	,rowguid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
	)
SELECT productsubcategoryid
	,productcategoryid
	,rowguid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_productsubcategory
WHERE (productsubcategoryid) NOT IN (
		SELECT productsubcategoryid
		FROM Adventureworks_production_productsubcategory
		);

DELETE
FROM Adventureworks_production_scrapreason hd
WHERE (
		(hd.scrapreasonid) IN (
			SELECT hd.scrapreasonid
			FROM vw_stage_Adventureworks_production_scrapreason vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_scrapreason
		) > 0;

UPDATE Adventureworks_production_scrapreason hd
SET scrapreasonid = vws.scrapreasonid
	,modifieddate = vws.modifieddate
	,name = vws.name
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_scrapreason vws
WHERE (hd.scrapreasonid) = (vws.scrapreasonid)
	AND (
		vws.modifieddate
		,vws.name
		) != (
		hd.modifieddate
		,hd.name
		);

INSERT INTO Adventureworks_production_scrapreason (
	scrapreasonid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
	)
SELECT scrapreasonid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_scrapreason
WHERE (scrapreasonid) NOT IN (
		SELECT scrapreasonid
		FROM Adventureworks_production_scrapreason
		);

DELETE
FROM Adventureworks_production_transactionhistory hd
WHERE (
		(hd.transactionid) IN (
			SELECT hd.transactionid
			FROM vw_stage_Adventureworks_production_transactionhistory vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_transactionhistory
		) > 0;

UPDATE Adventureworks_production_transactionhistory hd
SET transactionid = vws.transactionid
	,productid = vws.productid
	,referenceorderid = vws.referenceorderid
	,referenceorderlineid = vws.referenceorderlineid
	,transactiondate = vws.transactiondate
	,quantity = vws.quantity
	,actualcost = vws.actualcost
	,modifieddate = vws.modifieddate
	,transactiontype = vws.transactiontype
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_transactionhistory vws
WHERE (hd.transactionid) = (vws.transactionid)
	AND (
		vws.productid
		,vws.referenceorderid
		,vws.referenceorderlineid
		,vws.transactiondate
		,vws.quantity
		,vws.actualcost
		,vws.modifieddate
		,vws.transactiontype
		) != (
		hd.productid
		,hd.referenceorderid
		,hd.referenceorderlineid
		,hd.transactiondate
		,hd.quantity
		,hd.actualcost
		,hd.modifieddate
		,hd.transactiontype
		);

INSERT INTO Adventureworks_production_transactionhistory (
	transactionid
	,productid
	,referenceorderid
	,referenceorderlineid
	,transactiondate
	,quantity
	,actualcost
	,modifieddate
	,transactiontype
	,source_file_name
	,source_file_timestamp
	)
SELECT transactionid
	,productid
	,referenceorderid
	,referenceorderlineid
	,transactiondate
	,quantity
	,actualcost
	,modifieddate
	,transactiontype
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_transactionhistory
WHERE (transactionid) NOT IN (
		SELECT transactionid
		FROM Adventureworks_production_transactionhistory
		);

DELETE
FROM Adventureworks_production_transactionhistoryarchive hd
WHERE (
		(hd.transactionid) IN (
			SELECT hd.transactionid
			FROM vw_stage_Adventureworks_production_transactionhistoryarchive vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_transactionhistoryarchive
		) > 0;

UPDATE Adventureworks_production_transactionhistoryarchive hd
SET transactionid = vws.transactionid
	,productid = vws.productid
	,referenceorderid = vws.referenceorderid
	,referenceorderlineid = vws.referenceorderlineid
	,transactiondate = vws.transactiondate
	,quantity = vws.quantity
	,actualcost = vws.actualcost
	,modifieddate = vws.modifieddate
	,transactiontype = vws.transactiontype
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_transactionhistoryarchive vws
WHERE (hd.transactionid) = (vws.transactionid)
	AND (
		vws.productid
		,vws.referenceorderid
		,vws.referenceorderlineid
		,vws.transactiondate
		,vws.quantity
		,vws.actualcost
		,vws.modifieddate
		,vws.transactiontype
		) != (
		hd.productid
		,hd.referenceorderid
		,hd.referenceorderlineid
		,hd.transactiondate
		,hd.quantity
		,hd.actualcost
		,hd.modifieddate
		,hd.transactiontype
		);

INSERT INTO Adventureworks_production_transactionhistoryarchive (
	transactionid
	,productid
	,referenceorderid
	,referenceorderlineid
	,transactiondate
	,quantity
	,actualcost
	,modifieddate
	,transactiontype
	,source_file_name
	,source_file_timestamp
	)
SELECT transactionid
	,productid
	,referenceorderid
	,referenceorderlineid
	,transactiondate
	,quantity
	,actualcost
	,modifieddate
	,transactiontype
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_transactionhistoryarchive
WHERE (transactionid) NOT IN (
		SELECT transactionid
		FROM Adventureworks_production_transactionhistoryarchive
		);

DELETE
FROM Adventureworks_production_unitmeasure hd
WHERE (
		(hd.unitmeasurecode) IN (
			SELECT hd.unitmeasurecode
			FROM vw_stage_Adventureworks_production_unitmeasure vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_unitmeasure
		) > 0;

UPDATE Adventureworks_production_unitmeasure hd
SET modifieddate = vws.modifieddate
	,unitmeasurecode = vws.unitmeasurecode
	,name = vws.name
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_unitmeasure vws
WHERE (hd.unitmeasurecode) = (vws.unitmeasurecode)
	AND (
		vws.modifieddate
		,vws.name
		) != (
		hd.modifieddate
		,hd.name
		);

INSERT INTO Adventureworks_production_unitmeasure (
	modifieddate
	,unitmeasurecode
	,name
	,source_file_name
	,source_file_timestamp
	)
SELECT modifieddate
	,unitmeasurecode
	,name
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_unitmeasure
WHERE (unitmeasurecode) NOT IN (
		SELECT unitmeasurecode
		FROM Adventureworks_production_unitmeasure
		);

DELETE
FROM Adventureworks_production_workorder hd
WHERE (
		(hd.workorderid) IN (
			SELECT hd.workorderid
			FROM vw_stage_Adventureworks_production_workorder vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_workorder
		) > 0;

UPDATE Adventureworks_production_workorder hd
SET workorderid = vws.workorderid
	,productid = vws.productid
	,orderqty = vws.orderqty
	,scrappedqty = vws.scrappedqty
	,startdate = vws.startdate
	,enddate = vws.enddate
	,duedate = vws.duedate
	,scrapreasonid = vws.scrapreasonid
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_workorder vws
WHERE (hd.workorderid) = (vws.workorderid)
	AND (
		vws.productid
		,vws.orderqty
		,vws.scrappedqty
		,vws.startdate
		,vws.enddate
		,vws.duedate
		,vws.scrapreasonid
		,vws.modifieddate
		) != (
		hd.productid
		,hd.orderqty
		,hd.scrappedqty
		,hd.startdate
		,hd.enddate
		,hd.duedate
		,hd.scrapreasonid
		,hd.modifieddate
		);

INSERT INTO Adventureworks_production_workorder (
	workorderid
	,productid
	,orderqty
	,scrappedqty
	,startdate
	,enddate
	,duedate
	,scrapreasonid
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT workorderid
	,productid
	,orderqty
	,scrappedqty
	,startdate
	,enddate
	,duedate
	,scrapreasonid
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_workorder
WHERE (workorderid) NOT IN (
		SELECT workorderid
		FROM Adventureworks_production_workorder
		);

DELETE
FROM Adventureworks_production_workorderrouting hd
WHERE (
		(
			hd.workorderid
			,hd.productid
			,hd.operationsequence
			) IN (
			SELECT hd.workorderid
				,hd.productid
				,hd.operationsequence
			FROM vw_stage_Adventureworks_production_workorderrouting vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_production_workorderrouting
		) > 0;

UPDATE Adventureworks_production_workorderrouting hd
SET workorderid = vws.workorderid
	,productid = vws.productid
	,operationsequence = vws.operationsequence
	,locationid = vws.locationid
	,scheduledstartdate = vws.scheduledstartdate
	,scheduledenddate = vws.scheduledenddate
	,actualstartdate = vws.actualstartdate
	,actualenddate = vws.actualenddate
	,actualresourcehrs = vws.actualresourcehrs
	,plannedcost = vws.plannedcost
	,actualcost = vws.actualcost
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_production_workorderrouting vws
WHERE (
		hd.workorderid
		,hd.productid
		,hd.operationsequence
		) = (
		vws.workorderid
		,vws.productid
		,vws.operationsequence
		)
	AND (
		vws.locationid
		,vws.scheduledstartdate
		,vws.scheduledenddate
		,vws.actualstartdate
		,vws.actualenddate
		,vws.actualresourcehrs
		,vws.plannedcost
		,vws.actualcost
		,vws.modifieddate
		) != (
		hd.locationid
		,hd.scheduledstartdate
		,hd.scheduledenddate
		,hd.actualstartdate
		,hd.actualenddate
		,hd.actualresourcehrs
		,hd.plannedcost
		,hd.actualcost
		,hd.modifieddate
		);

INSERT INTO Adventureworks_production_workorderrouting (
	workorderid
	,productid
	,operationsequence
	,locationid
	,scheduledstartdate
	,scheduledenddate
	,actualstartdate
	,actualenddate
	,actualresourcehrs
	,plannedcost
	,actualcost
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT workorderid
	,productid
	,operationsequence
	,locationid
	,scheduledstartdate
	,scheduledenddate
	,actualstartdate
	,actualenddate
	,actualresourcehrs
	,plannedcost
	,actualcost
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_production_workorderrouting
WHERE (
		workorderid
		,productid
		,operationsequence
		) NOT IN (
		SELECT workorderid
			,productid
			,operationsequence
		FROM Adventureworks_production_workorderrouting
		);

DELETE
FROM Adventureworks_purchasing_productvendor hd
WHERE (
		(
			hd.productid
			,hd.businessentityid
			) IN (
			SELECT hd.productid
				,hd.businessentityid
			FROM vw_stage_Adventureworks_purchasing_productvendor vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_purchasing_productvendor
		) > 0;

UPDATE Adventureworks_purchasing_productvendor hd
SET productid = vws.productid
	,businessentityid = vws.businessentityid
	,averageleadtime = vws.averageleadtime
	,standardprice = vws.standardprice
	,lastreceiptcost = vws.lastreceiptcost
	,lastreceiptdate = vws.lastreceiptdate
	,minorderqty = vws.minorderqty
	,maxorderqty = vws.maxorderqty
	,onorderqty = vws.onorderqty
	,modifieddate = vws.modifieddate
	,unitmeasurecode = vws.unitmeasurecode
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_purchasing_productvendor vws
WHERE (
		hd.productid
		,hd.businessentityid
		) = (
		vws.productid
		,vws.businessentityid
		)
	AND (
		vws.averageleadtime
		,vws.standardprice
		,vws.lastreceiptcost
		,vws.lastreceiptdate
		,vws.minorderqty
		,vws.maxorderqty
		,vws.onorderqty
		,vws.modifieddate
		,vws.unitmeasurecode
		) != (
		hd.averageleadtime
		,hd.standardprice
		,hd.lastreceiptcost
		,hd.lastreceiptdate
		,hd.minorderqty
		,hd.maxorderqty
		,hd.onorderqty
		,hd.modifieddate
		,hd.unitmeasurecode
		);

INSERT INTO Adventureworks_purchasing_productvendor (
	productid
	,businessentityid
	,averageleadtime
	,standardprice
	,lastreceiptcost
	,lastreceiptdate
	,minorderqty
	,maxorderqty
	,onorderqty
	,modifieddate
	,unitmeasurecode
	,source_file_name
	,source_file_timestamp
	)
SELECT productid
	,businessentityid
	,averageleadtime
	,standardprice
	,lastreceiptcost
	,lastreceiptdate
	,minorderqty
	,maxorderqty
	,onorderqty
	,modifieddate
	,unitmeasurecode
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_purchasing_productvendor
WHERE (
		productid
		,businessentityid
		) NOT IN (
		SELECT productid
			,businessentityid
		FROM Adventureworks_purchasing_productvendor
		);

DELETE
FROM Adventureworks_purchasing_purchaseorderdetail hd
WHERE (
		(
			hd.purchaseorderid
			,hd.purchaseorderdetailid
			) IN (
			SELECT hd.purchaseorderid
				,hd.purchaseorderdetailid
			FROM vw_stage_Adventureworks_purchasing_purchaseorderdetail vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_purchasing_purchaseorderdetail
		) > 0;

UPDATE Adventureworks_purchasing_purchaseorderdetail hd
SET purchaseorderid = vws.purchaseorderid
	,purchaseorderdetailid = vws.purchaseorderdetailid
	,duedate = vws.duedate
	,orderqty = vws.orderqty
	,productid = vws.productid
	,unitprice = vws.unitprice
	,receivedqty = vws.receivedqty
	,rejectedqty = vws.rejectedqty
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_purchasing_purchaseorderdetail vws
WHERE (
		hd.purchaseorderid
		,hd.purchaseorderdetailid
		) = (
		vws.purchaseorderid
		,vws.purchaseorderdetailid
		)
	AND (
		vws.duedate
		,vws.orderqty
		,vws.productid
		,vws.unitprice
		,vws.receivedqty
		,vws.rejectedqty
		,vws.modifieddate
		) != (
		hd.duedate
		,hd.orderqty
		,hd.productid
		,hd.unitprice
		,hd.receivedqty
		,hd.rejectedqty
		,hd.modifieddate
		);

INSERT INTO Adventureworks_purchasing_purchaseorderdetail (
	purchaseorderid
	,purchaseorderdetailid
	,duedate
	,orderqty
	,productid
	,unitprice
	,receivedqty
	,rejectedqty
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT purchaseorderid
	,purchaseorderdetailid
	,duedate
	,orderqty
	,productid
	,unitprice
	,receivedqty
	,rejectedqty
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_purchasing_purchaseorderdetail
WHERE (
		purchaseorderid
		,purchaseorderdetailid
		) NOT IN (
		SELECT purchaseorderid
			,purchaseorderdetailid
		FROM Adventureworks_purchasing_purchaseorderdetail
		);

DELETE
FROM Adventureworks_purchasing_purchaseorderheader hd
WHERE (
		(hd.purchaseorderid) IN (
			SELECT hd.purchaseorderid
			FROM vw_stage_Adventureworks_purchasing_purchaseorderheader vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_purchasing_purchaseorderheader
		) > 0;

UPDATE Adventureworks_purchasing_purchaseorderheader hd
SET purchaseorderid = vws.purchaseorderid
	,revisionnumber = vws.revisionnumber
	,STATUS = vws.STATUS
	,employeeid = vws.employeeid
	,vendorid = vws.vendorid
	,shipmethodid = vws.shipmethodid
	,orderdate = vws.orderdate
	,shipdate = vws.shipdate
	,subtotal = vws.subtotal
	,taxamt = vws.taxamt
	,freight = vws.freight
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_purchasing_purchaseorderheader vws
WHERE (hd.purchaseorderid) = (vws.purchaseorderid)
	AND (
		vws.revisionnumber
		,vws.STATUS
		,vws.employeeid
		,vws.vendorid
		,vws.shipmethodid
		,vws.orderdate
		,vws.shipdate
		,vws.subtotal
		,vws.taxamt
		,vws.freight
		,vws.modifieddate
		) != (
		hd.revisionnumber
		,hd.STATUS
		,hd.employeeid
		,hd.vendorid
		,hd.shipmethodid
		,hd.orderdate
		,hd.shipdate
		,hd.subtotal
		,hd.taxamt
		,hd.freight
		,hd.modifieddate
		);

INSERT INTO Adventureworks_purchasing_purchaseorderheader (
	purchaseorderid
	,revisionnumber
	,STATUS
	,employeeid
	,vendorid
	,shipmethodid
	,orderdate
	,shipdate
	,subtotal
	,taxamt
	,freight
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT purchaseorderid
	,revisionnumber
	,STATUS
	,employeeid
	,vendorid
	,shipmethodid
	,orderdate
	,shipdate
	,subtotal
	,taxamt
	,freight
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_purchasing_purchaseorderheader
WHERE (purchaseorderid) NOT IN (
		SELECT purchaseorderid
		FROM Adventureworks_purchasing_purchaseorderheader
		);

DELETE
FROM Adventureworks_purchasing_shipmethod hd
WHERE (
		(hd.shipmethodid) IN (
			SELECT hd.shipmethodid
			FROM vw_stage_Adventureworks_purchasing_shipmethod vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_purchasing_shipmethod
		) > 0;

UPDATE Adventureworks_purchasing_shipmethod hd
SET shipmethodid = vws.shipmethodid
	,shipbase = vws.shipbase
	,shiprate = vws.shiprate
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,name = vws.name
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_purchasing_shipmethod vws
WHERE (hd.shipmethodid) = (vws.shipmethodid)
	AND (
		vws.shipbase
		,vws.shiprate
		,vws.rowguid
		,vws.modifieddate
		,vws.name
		) != (
		hd.shipbase
		,hd.shiprate
		,hd.rowguid
		,hd.modifieddate
		,hd.name
		);

INSERT INTO Adventureworks_purchasing_shipmethod (
	shipmethodid
	,shipbase
	,shiprate
	,rowguid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
	)
SELECT shipmethodid
	,shipbase
	,shiprate
	,rowguid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_purchasing_shipmethod
WHERE (shipmethodid) NOT IN (
		SELECT shipmethodid
		FROM Adventureworks_purchasing_shipmethod
		);

DELETE
FROM Adventureworks_purchasing_vendor hd
WHERE (
		(hd.businessentityid) IN (
			SELECT hd.businessentityid
			FROM vw_stage_Adventureworks_purchasing_vendor vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_purchasing_vendor
		) > 0;

UPDATE Adventureworks_purchasing_vendor hd
SET businessentityid = vws.businessentityid
	,creditrating = vws.creditrating
	,preferredvendorstatus = vws.preferredvendorstatus
	,activeflag = vws.activeflag
	,modifieddate = vws.modifieddate
	,accountnumber = vws.accountnumber
	,name = vws.name
	,purchasingwebserviceurl = vws.purchasingwebserviceurl
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_purchasing_vendor vws
WHERE (hd.businessentityid) = (vws.businessentityid)
	AND (
		vws.creditrating
		,vws.preferredvendorstatus
		,vws.activeflag
		,vws.modifieddate
		,vws.accountnumber
		,vws.name
		,vws.purchasingwebserviceurl
		) != (
		hd.creditrating
		,hd.preferredvendorstatus
		,hd.activeflag
		,hd.modifieddate
		,hd.accountnumber
		,hd.name
		,hd.purchasingwebserviceurl
		);

INSERT INTO Adventureworks_purchasing_vendor (
	businessentityid
	,creditrating
	,preferredvendorstatus
	,activeflag
	,modifieddate
	,accountnumber
	,name
	,purchasingwebserviceurl
	,source_file_name
	,source_file_timestamp
	)
SELECT businessentityid
	,creditrating
	,preferredvendorstatus
	,activeflag
	,modifieddate
	,accountnumber
	,name
	,purchasingwebserviceurl
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_purchasing_vendor
WHERE (businessentityid) NOT IN (
		SELECT businessentityid
		FROM Adventureworks_purchasing_vendor
		);

DELETE
FROM Adventureworks_sales_countryregioncurrency hd
WHERE (
		(
			hd.countryregioncode
			,hd.currencycode
			) IN (
			SELECT hd.countryregioncode
				,hd.currencycode
			FROM vw_stage_Adventureworks_sales_countryregioncurrency vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_countryregioncurrency
		) > 0;

UPDATE Adventureworks_sales_countryregioncurrency hd
SET modifieddate = vws.modifieddate
	,countryregioncode = vws.countryregioncode
	,currencycode = vws.currencycode
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_countryregioncurrency vws
WHERE (
		hd.countryregioncode
		,hd.currencycode
		) = (
		vws.countryregioncode
		,vws.currencycode
		)
	AND (vws.modifieddate) != (hd.modifieddate);

INSERT INTO Adventureworks_sales_countryregioncurrency (
	modifieddate
	,countryregioncode
	,currencycode
	,source_file_name
	,source_file_timestamp
	)
SELECT modifieddate
	,countryregioncode
	,currencycode
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_countryregioncurrency
WHERE (
		countryregioncode
		,currencycode
		) NOT IN (
		SELECT countryregioncode
			,currencycode
		FROM Adventureworks_sales_countryregioncurrency
		);

DELETE
FROM Adventureworks_sales_creditcard hd
WHERE (
		(hd.creditcardid) IN (
			SELECT hd.creditcardid
			FROM vw_stage_Adventureworks_sales_creditcard vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_creditcard
		) > 0;

UPDATE Adventureworks_sales_creditcard hd
SET creditcardid = vws.creditcardid
	,expmonth = vws.expmonth
	,expyear = vws.expyear
	,modifieddate = vws.modifieddate
	,cardtype = vws.cardtype
	,cardnumber = vws.cardnumber
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_creditcard vws
WHERE (hd.creditcardid) = (vws.creditcardid)
	AND (
		vws.expmonth
		,vws.expyear
		,vws.modifieddate
		,vws.cardtype
		,vws.cardnumber
		) != (
		hd.expmonth
		,hd.expyear
		,hd.modifieddate
		,hd.cardtype
		,hd.cardnumber
		);

INSERT INTO Adventureworks_sales_creditcard (
	creditcardid
	,expmonth
	,expyear
	,modifieddate
	,cardtype
	,cardnumber
	,source_file_name
	,source_file_timestamp
	)
SELECT creditcardid
	,expmonth
	,expyear
	,modifieddate
	,cardtype
	,cardnumber
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_creditcard
WHERE (creditcardid) NOT IN (
		SELECT creditcardid
		FROM Adventureworks_sales_creditcard
		);

DELETE
FROM Adventureworks_sales_currency hd
WHERE (
		(hd.currencycode) IN (
			SELECT hd.currencycode
			FROM vw_stage_Adventureworks_sales_currency vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_currency
		) > 0;

UPDATE Adventureworks_sales_currency hd
SET modifieddate = vws.modifieddate
	,currencycode = vws.currencycode
	,name = vws.name
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_currency vws
WHERE (hd.currencycode) = (vws.currencycode)
	AND (
		vws.modifieddate
		,vws.name
		) != (
		hd.modifieddate
		,hd.name
		);

INSERT INTO Adventureworks_sales_currency (
	modifieddate
	,currencycode
	,name
	,source_file_name
	,source_file_timestamp
	)
SELECT modifieddate
	,currencycode
	,name
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_currency
WHERE (currencycode) NOT IN (
		SELECT currencycode
		FROM Adventureworks_sales_currency
		);

DELETE
FROM Adventureworks_sales_currencyrate hd
WHERE (
		(hd.currencyrateid) IN (
			SELECT hd.currencyrateid
			FROM vw_stage_Adventureworks_sales_currencyrate vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_currencyrate
		) > 0;

UPDATE Adventureworks_sales_currencyrate hd
SET currencyrateid = vws.currencyrateid
	,currencyratedate = vws.currencyratedate
	,averagerate = vws.averagerate
	,endofdayrate = vws.endofdayrate
	,modifieddate = vws.modifieddate
	,fromcurrencycode = vws.fromcurrencycode
	,tocurrencycode = vws.tocurrencycode
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_currencyrate vws
WHERE (hd.currencyrateid) = (vws.currencyrateid)
	AND (
		vws.currencyratedate
		,vws.averagerate
		,vws.endofdayrate
		,vws.modifieddate
		,vws.fromcurrencycode
		,vws.tocurrencycode
		) != (
		hd.currencyratedate
		,hd.averagerate
		,hd.endofdayrate
		,hd.modifieddate
		,hd.fromcurrencycode
		,hd.tocurrencycode
		);

INSERT INTO Adventureworks_sales_currencyrate (
	currencyrateid
	,currencyratedate
	,averagerate
	,endofdayrate
	,modifieddate
	,fromcurrencycode
	,tocurrencycode
	,source_file_name
	,source_file_timestamp
	)
SELECT currencyrateid
	,currencyratedate
	,averagerate
	,endofdayrate
	,modifieddate
	,fromcurrencycode
	,tocurrencycode
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_currencyrate
WHERE (currencyrateid) NOT IN (
		SELECT currencyrateid
		FROM Adventureworks_sales_currencyrate
		);

DELETE
FROM Adventureworks_sales_customer hd
WHERE (
		(hd.customerid) IN (
			SELECT hd.customerid
			FROM vw_stage_Adventureworks_sales_customer vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_customer
		) > 0;

UPDATE Adventureworks_sales_customer hd
SET customerid = vws.customerid
	,personid = vws.personid
	,storeid = vws.storeid
	,territoryid = vws.territoryid
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_customer vws
WHERE (hd.customerid) = (vws.customerid)
	AND (
		vws.personid
		,vws.storeid
		,vws.territoryid
		,vws.rowguid
		,vws.modifieddate
		) != (
		hd.personid
		,hd.storeid
		,hd.territoryid
		,hd.rowguid
		,hd.modifieddate
		);

INSERT INTO Adventureworks_sales_customer (
	customerid
	,personid
	,storeid
	,territoryid
	,rowguid
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT customerid
	,personid
	,storeid
	,territoryid
	,rowguid
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_customer
WHERE (customerid) NOT IN (
		SELECT customerid
		FROM Adventureworks_sales_customer
		);

DELETE
FROM Adventureworks_sales_personcreditcard hd
WHERE (
		(
			hd.businessentityid
			,hd.creditcardid
			) IN (
			SELECT hd.businessentityid
				,hd.creditcardid
			FROM vw_stage_Adventureworks_sales_personcreditcard vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_personcreditcard
		) > 0;

UPDATE Adventureworks_sales_personcreditcard hd
SET businessentityid = vws.businessentityid
	,creditcardid = vws.creditcardid
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_personcreditcard vws
WHERE (
		hd.businessentityid
		,hd.creditcardid
		) = (
		vws.businessentityid
		,vws.creditcardid
		)
	AND (vws.modifieddate) != (hd.modifieddate);

INSERT INTO Adventureworks_sales_personcreditcard (
	businessentityid
	,creditcardid
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT businessentityid
	,creditcardid
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_personcreditcard
WHERE (
		businessentityid
		,creditcardid
		) NOT IN (
		SELECT businessentityid
			,creditcardid
		FROM Adventureworks_sales_personcreditcard
		);

DELETE
FROM Adventureworks_sales_salesorderdetail hd
WHERE (
		(
			hd.salesorderid
			,hd.salesorderdetailid
			) IN (
			SELECT hd.salesorderid
				,hd.salesorderdetailid
			FROM vw_stage_Adventureworks_sales_salesorderdetail vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_salesorderdetail
		) > 0;

UPDATE Adventureworks_sales_salesorderdetail hd
SET salesorderid = vws.salesorderid
	,salesorderdetailid = vws.salesorderdetailid
	,orderqty = vws.orderqty
	,productid = vws.productid
	,specialofferid = vws.specialofferid
	,unitprice = vws.unitprice
	,unitpricediscount = vws.unitpricediscount
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,carriertrackingnumber = vws.carriertrackingnumber
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_salesorderdetail vws
WHERE (
		hd.salesorderid
		,hd.salesorderdetailid
		) = (
		vws.salesorderid
		,vws.salesorderdetailid
		)
	AND (
		vws.orderqty
		,vws.productid
		,vws.specialofferid
		,vws.unitprice
		,vws.unitpricediscount
		,vws.rowguid
		,vws.modifieddate
		,vws.carriertrackingnumber
		) != (
		hd.orderqty
		,hd.productid
		,hd.specialofferid
		,hd.unitprice
		,hd.unitpricediscount
		,hd.rowguid
		,hd.modifieddate
		,hd.carriertrackingnumber
		);

INSERT INTO Adventureworks_sales_salesorderdetail (
	salesorderid
	,salesorderdetailid
	,orderqty
	,productid
	,specialofferid
	,unitprice
	,unitpricediscount
	,rowguid
	,modifieddate
	,carriertrackingnumber
	,source_file_name
	,source_file_timestamp
	)
SELECT salesorderid
	,salesorderdetailid
	,orderqty
	,productid
	,specialofferid
	,unitprice
	,unitpricediscount
	,rowguid
	,modifieddate
	,carriertrackingnumber
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_salesorderdetail
WHERE (
		salesorderid
		,salesorderdetailid
		) NOT IN (
		SELECT salesorderid
			,salesorderdetailid
		FROM Adventureworks_sales_salesorderdetail
		);

DELETE
FROM Adventureworks_sales_salesorderheader hd
WHERE (
		(hd.salesorderid) IN (
			SELECT hd.salesorderid
			FROM vw_stage_Adventureworks_sales_salesorderheader vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_salesorderheader
		) > 0;

UPDATE Adventureworks_sales_salesorderheader hd
SET salesorderid = vws.salesorderid
	,revisionnumber = vws.revisionnumber
	,orderdate = vws.orderdate
	,duedate = vws.duedate
	,shipdate = vws.shipdate
	,STATUS = vws.STATUS
	,onlineorderflag = vws.onlineorderflag
	,customerid = vws.customerid
	,salespersonid = vws.salespersonid
	,territoryid = vws.territoryid
	,billtoaddressid = vws.billtoaddressid
	,shiptoaddressid = vws.shiptoaddressid
	,shipmethodid = vws.shipmethodid
	,creditcardid = vws.creditcardid
	,currencyrateid = vws.currencyrateid
	,subtotal = vws.subtotal
	,taxamt = vws.taxamt
	,freight = vws.freight
	,totaldue = vws.totaldue
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,purchaseordernumber = vws.purchaseordernumber
	,accountnumber = vws.accountnumber
	,creditcardapprovalcode = vws.creditcardapprovalcode
	,comment = vws.comment
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_salesorderheader vws
WHERE (hd.salesorderid) = (vws.salesorderid)
	AND (
		vws.revisionnumber
		,vws.orderdate
		,vws.duedate
		,vws.shipdate
		,vws.STATUS
		,vws.onlineorderflag
		,vws.customerid
		,vws.salespersonid
		,vws.territoryid
		,vws.billtoaddressid
		,vws.shiptoaddressid
		,vws.shipmethodid
		,vws.creditcardid
		,vws.currencyrateid
		,vws.subtotal
		,vws.taxamt
		,vws.freight
		,vws.totaldue
		,vws.rowguid
		,vws.modifieddate
		,vws.purchaseordernumber
		,vws.accountnumber
		,vws.creditcardapprovalcode
		,vws.comment
		) != (
		hd.revisionnumber
		,hd.orderdate
		,hd.duedate
		,hd.shipdate
		,hd.STATUS
		,hd.onlineorderflag
		,hd.customerid
		,hd.salespersonid
		,hd.territoryid
		,hd.billtoaddressid
		,hd.shiptoaddressid
		,hd.shipmethodid
		,hd.creditcardid
		,hd.currencyrateid
		,hd.subtotal
		,hd.taxamt
		,hd.freight
		,hd.totaldue
		,hd.rowguid
		,hd.modifieddate
		,hd.purchaseordernumber
		,hd.accountnumber
		,hd.creditcardapprovalcode
		,hd.comment
		);

INSERT INTO Adventureworks_sales_salesorderheader (
	salesorderid
	,revisionnumber
	,orderdate
	,duedate
	,shipdate
	,STATUS
	,onlineorderflag
	,customerid
	,salespersonid
	,territoryid
	,billtoaddressid
	,shiptoaddressid
	,shipmethodid
	,creditcardid
	,currencyrateid
	,subtotal
	,taxamt
	,freight
	,totaldue
	,rowguid
	,modifieddate
	,purchaseordernumber
	,accountnumber
	,creditcardapprovalcode
	,comment
	,source_file_name
	,source_file_timestamp
	)
SELECT salesorderid
	,revisionnumber
	,orderdate
	,duedate
	,shipdate
	,STATUS
	,onlineorderflag
	,customerid
	,salespersonid
	,territoryid
	,billtoaddressid
	,shiptoaddressid
	,shipmethodid
	,creditcardid
	,currencyrateid
	,subtotal
	,taxamt
	,freight
	,totaldue
	,rowguid
	,modifieddate
	,purchaseordernumber
	,accountnumber
	,creditcardapprovalcode
	,comment
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_salesorderheader
WHERE (salesorderid) NOT IN (
		SELECT salesorderid
		FROM Adventureworks_sales_salesorderheader
		);

DELETE
FROM Adventureworks_sales_salesorderheadersalesreason hd
WHERE (
		(
			hd.salesorderid
			,hd.salesreasonid
			) IN (
			SELECT hd.salesorderid
				,hd.salesreasonid
			FROM vw_stage_Adventureworks_sales_salesorderheadersalesreason vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_salesorderheadersalesreason
		) > 0;

UPDATE Adventureworks_sales_salesorderheadersalesreason hd
SET salesorderid = vws.salesorderid
	,salesreasonid = vws.salesreasonid
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_salesorderheadersalesreason vws
WHERE (
		hd.salesorderid
		,hd.salesreasonid
		) = (
		vws.salesorderid
		,vws.salesreasonid
		)
	AND (vws.modifieddate) != (hd.modifieddate);

INSERT INTO Adventureworks_sales_salesorderheadersalesreason (
	salesorderid
	,salesreasonid
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT salesorderid
	,salesreasonid
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_salesorderheadersalesreason
WHERE (
		salesorderid
		,salesreasonid
		) NOT IN (
		SELECT salesorderid
			,salesreasonid
		FROM Adventureworks_sales_salesorderheadersalesreason
		);

DELETE
FROM Adventureworks_sales_salesperson hd
WHERE (
		(hd.businessentityid) IN (
			SELECT hd.businessentityid
			FROM vw_stage_Adventureworks_sales_salesperson vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_salesperson
		) > 0;

UPDATE Adventureworks_sales_salesperson hd
SET businessentityid = vws.businessentityid
	,territoryid = vws.territoryid
	,salesquota = vws.salesquota
	,bonus = vws.bonus
	,commissionpct = vws.commissionpct
	,salesytd = vws.salesytd
	,saleslastyear = vws.saleslastyear
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_salesperson vws
WHERE (hd.businessentityid) = (vws.businessentityid)
	AND (
		vws.territoryid
		,vws.salesquota
		,vws.bonus
		,vws.commissionpct
		,vws.salesytd
		,vws.saleslastyear
		,vws.rowguid
		,vws.modifieddate
		) != (
		hd.territoryid
		,hd.salesquota
		,hd.bonus
		,hd.commissionpct
		,hd.salesytd
		,hd.saleslastyear
		,hd.rowguid
		,hd.modifieddate
		);

INSERT INTO Adventureworks_sales_salesperson (
	businessentityid
	,territoryid
	,salesquota
	,bonus
	,commissionpct
	,salesytd
	,saleslastyear
	,rowguid
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT businessentityid
	,territoryid
	,salesquota
	,bonus
	,commissionpct
	,salesytd
	,saleslastyear
	,rowguid
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_salesperson
WHERE (businessentityid) NOT IN (
		SELECT businessentityid
		FROM Adventureworks_sales_salesperson
		);

DELETE
FROM Adventureworks_sales_salespersonquotahistory hd
WHERE (
		(
			hd.businessentityid
			,hd.quotadate
			) IN (
			SELECT hd.businessentityid
				,hd.quotadate
			FROM vw_stage_Adventureworks_sales_salespersonquotahistory vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_salespersonquotahistory
		) > 0;

UPDATE Adventureworks_sales_salespersonquotahistory hd
SET businessentityid = vws.businessentityid
	,quotadate = vws.quotadate
	,salesquota = vws.salesquota
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_salespersonquotahistory vws
WHERE (
		hd.businessentityid
		,hd.quotadate
		) = (
		vws.businessentityid
		,vws.quotadate
		)
	AND (
		vws.salesquota
		,vws.rowguid
		,vws.modifieddate
		) != (
		hd.salesquota
		,hd.rowguid
		,hd.modifieddate
		);

INSERT INTO Adventureworks_sales_salespersonquotahistory (
	businessentityid
	,quotadate
	,salesquota
	,rowguid
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT businessentityid
	,quotadate
	,salesquota
	,rowguid
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_salespersonquotahistory
WHERE (
		businessentityid
		,quotadate
		) NOT IN (
		SELECT businessentityid
			,quotadate
		FROM Adventureworks_sales_salespersonquotahistory
		);

DELETE
FROM Adventureworks_sales_salesreason hd
WHERE (
		(hd.salesreasonid) IN (
			SELECT hd.salesreasonid
			FROM vw_stage_Adventureworks_sales_salesreason vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_salesreason
		) > 0;

UPDATE Adventureworks_sales_salesreason hd
SET salesreasonid = vws.salesreasonid
	,modifieddate = vws.modifieddate
	,name = vws.name
	,reasontype = vws.reasontype
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_salesreason vws
WHERE (hd.salesreasonid) = (vws.salesreasonid)
	AND (
		vws.modifieddate
		,vws.name
		,vws.reasontype
		) != (
		hd.modifieddate
		,hd.name
		,hd.reasontype
		);

INSERT INTO Adventureworks_sales_salesreason (
	salesreasonid
	,modifieddate
	,name
	,reasontype
	,source_file_name
	,source_file_timestamp
	)
SELECT salesreasonid
	,modifieddate
	,name
	,reasontype
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_salesreason
WHERE (salesreasonid) NOT IN (
		SELECT salesreasonid
		FROM Adventureworks_sales_salesreason
		);

DELETE
FROM Adventureworks_sales_salestaxrate hd
WHERE (
		(hd.salestaxrateid) IN (
			SELECT hd.salestaxrateid
			FROM vw_stage_Adventureworks_sales_salestaxrate vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_salestaxrate
		) > 0;

UPDATE Adventureworks_sales_salestaxrate hd
SET salestaxrateid = vws.salestaxrateid
	,stateprovinceid = vws.stateprovinceid
	,taxtype = vws.taxtype
	,taxrate = vws.taxrate
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,name = vws.name
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_salestaxrate vws
WHERE (hd.salestaxrateid) = (vws.salestaxrateid)
	AND (
		vws.stateprovinceid
		,vws.taxtype
		,vws.taxrate
		,vws.rowguid
		,vws.modifieddate
		,vws.name
		) != (
		hd.stateprovinceid
		,hd.taxtype
		,hd.taxrate
		,hd.rowguid
		,hd.modifieddate
		,hd.name
		);

INSERT INTO Adventureworks_sales_salestaxrate (
	salestaxrateid
	,stateprovinceid
	,taxtype
	,taxrate
	,rowguid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
	)
SELECT salestaxrateid
	,stateprovinceid
	,taxtype
	,taxrate
	,rowguid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_salestaxrate
WHERE (salestaxrateid) NOT IN (
		SELECT salestaxrateid
		FROM Adventureworks_sales_salestaxrate
		);

DELETE
FROM Adventureworks_sales_salesterritory hd
WHERE (
		(hd.territoryid) IN (
			SELECT hd.territoryid
			FROM vw_stage_Adventureworks_sales_salesterritory vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_salesterritory
		) > 0;

UPDATE Adventureworks_sales_salesterritory hd
SET territoryid = vws.territoryid
	,salesytd = vws.salesytd
	,saleslastyear = vws.saleslastyear
	,costytd = vws.costytd
	,costlastyear = vws.costlastyear
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,name = vws.name
	,countryregioncode = vws.countryregioncode
	,
GROUP = vws.
GROUP
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_salesterritory vws
WHERE (hd.territoryid) = (vws.territoryid)
	AND (
		vws.salesytd
		,vws.saleslastyear
		,vws.costytd
		,vws.costlastyear
		,vws.rowguid
		,vws.modifieddate
		,vws.name
		,vws.countryregioncode
		,vws.GROUP
		) != (
		hd.salesytd
		,hd.saleslastyear
		,hd.costytd
		,hd.costlastyear
		,hd.rowguid
		,hd.modifieddate
		,hd.name
		,hd.countryregioncode
		,hd.GROUP
		);

INSERT INTO Adventureworks_sales_salesterritory (
	territoryid
	,salesytd
	,saleslastyear
	,costytd
	,costlastyear
	,rowguid
	,modifieddate
	,name
	,countryregioncode
	,GROUP
	,source_file_name
	,source_file_timestamp
	)
SELECT territoryid
	,salesytd
	,saleslastyear
	,costytd
	,costlastyear
	,rowguid
	,modifieddate
	,name
	,countryregioncode
	,
GROUP
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_salesterritory
WHERE (territoryid) NOT IN (
		SELECT territoryid
		FROM Adventureworks_sales_salesterritory
		);

DELETE
FROM Adventureworks_sales_salesterritoryhistory hd
WHERE (
		(
			hd.businessentityid
			,hd.territoryid
			,hd.startdate
			) IN (
			SELECT hd.businessentityid
				,hd.territoryid
				,hd.startdate
			FROM vw_stage_Adventureworks_sales_salesterritoryhistory vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_salesterritoryhistory
		) > 0;

UPDATE Adventureworks_sales_salesterritoryhistory hd
SET businessentityid = vws.businessentityid
	,territoryid = vws.territoryid
	,startdate = vws.startdate
	,enddate = vws.enddate
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_salesterritoryhistory vws
WHERE (
		hd.businessentityid
		,hd.territoryid
		,hd.startdate
		) = (
		vws.businessentityid
		,vws.territoryid
		,vws.startdate
		)
	AND (
		vws.enddate
		,vws.rowguid
		,vws.modifieddate
		) != (
		hd.enddate
		,hd.rowguid
		,hd.modifieddate
		);

INSERT INTO Adventureworks_sales_salesterritoryhistory (
	businessentityid
	,territoryid
	,startdate
	,enddate
	,rowguid
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT businessentityid
	,territoryid
	,startdate
	,enddate
	,rowguid
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_salesterritoryhistory
WHERE (
		businessentityid
		,territoryid
		,startdate
		) NOT IN (
		SELECT businessentityid
			,territoryid
			,startdate
		FROM Adventureworks_sales_salesterritoryhistory
		);

DELETE
FROM Adventureworks_sales_shoppingcartitem hd
WHERE (
		(hd.shoppingcartitemid) IN (
			SELECT hd.shoppingcartitemid
			FROM vw_stage_Adventureworks_sales_shoppingcartitem vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_shoppingcartitem
		) > 0;

UPDATE Adventureworks_sales_shoppingcartitem hd
SET shoppingcartitemid = vws.shoppingcartitemid
	,quantity = vws.quantity
	,productid = vws.productid
	,datecreated = vws.datecreated
	,modifieddate = vws.modifieddate
	,shoppingcartid = vws.shoppingcartid
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_shoppingcartitem vws
WHERE (hd.shoppingcartitemid) = (vws.shoppingcartitemid)
	AND (
		vws.quantity
		,vws.productid
		,vws.datecreated
		,vws.modifieddate
		,vws.shoppingcartid
		) != (
		hd.quantity
		,hd.productid
		,hd.datecreated
		,hd.modifieddate
		,hd.shoppingcartid
		);

INSERT INTO Adventureworks_sales_shoppingcartitem (
	shoppingcartitemid
	,quantity
	,productid
	,datecreated
	,modifieddate
	,shoppingcartid
	,source_file_name
	,source_file_timestamp
	)
SELECT shoppingcartitemid
	,quantity
	,productid
	,datecreated
	,modifieddate
	,shoppingcartid
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_shoppingcartitem
WHERE (shoppingcartitemid) NOT IN (
		SELECT shoppingcartitemid
		FROM Adventureworks_sales_shoppingcartitem
		);

DELETE
FROM Adventureworks_sales_specialoffer hd
WHERE (
		(hd.specialofferid) IN (
			SELECT hd.specialofferid
			FROM vw_stage_Adventureworks_sales_specialoffer vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_specialoffer
		) > 0;

UPDATE Adventureworks_sales_specialoffer hd
SET specialofferid = vws.specialofferid
	,discountpct = vws.discountpct
	,startdate = vws.startdate
	,enddate = vws.enddate
	,minqty = vws.minqty
	,maxqty = vws.maxqty
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,description = vws.description
	,type = vws.type
	,category = vws.category
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_specialoffer vws
WHERE (hd.specialofferid) = (vws.specialofferid)
	AND (
		vws.discountpct
		,vws.startdate
		,vws.enddate
		,vws.minqty
		,vws.maxqty
		,vws.rowguid
		,vws.modifieddate
		,vws.description
		,vws.type
		,vws.category
		) != (
		hd.discountpct
		,hd.startdate
		,hd.enddate
		,hd.minqty
		,hd.maxqty
		,hd.rowguid
		,hd.modifieddate
		,hd.description
		,hd.type
		,hd.category
		);

INSERT INTO Adventureworks_sales_specialoffer (
	specialofferid
	,discountpct
	,startdate
	,enddate
	,minqty
	,maxqty
	,rowguid
	,modifieddate
	,description
	,type
	,category
	,source_file_name
	,source_file_timestamp
	)
SELECT specialofferid
	,discountpct
	,startdate
	,enddate
	,minqty
	,maxqty
	,rowguid
	,modifieddate
	,description
	,type
	,category
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_specialoffer
WHERE (specialofferid) NOT IN (
		SELECT specialofferid
		FROM Adventureworks_sales_specialoffer
		);

DELETE
FROM Adventureworks_sales_specialofferproduct hd
WHERE (
		(
			hd.specialofferid
			,hd.productid
			) IN (
			SELECT hd.specialofferid
				,hd.productid
			FROM vw_stage_Adventureworks_sales_specialofferproduct vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_specialofferproduct
		) > 0;

UPDATE Adventureworks_sales_specialofferproduct hd
SET specialofferid = vws.specialofferid
	,productid = vws.productid
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_specialofferproduct vws
WHERE (
		hd.specialofferid
		,hd.productid
		) = (
		vws.specialofferid
		,vws.productid
		)
	AND (
		vws.rowguid
		,vws.modifieddate
		) != (
		hd.rowguid
		,hd.modifieddate
		);

INSERT INTO Adventureworks_sales_specialofferproduct (
	specialofferid
	,productid
	,rowguid
	,modifieddate
	,source_file_name
	,source_file_timestamp
	)
SELECT specialofferid
	,productid
	,rowguid
	,modifieddate
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_specialofferproduct
WHERE (
		specialofferid
		,productid
		) NOT IN (
		SELECT specialofferid
			,productid
		FROM Adventureworks_sales_specialofferproduct
		);

DELETE
FROM Adventureworks_sales_store hd
WHERE (
		(hd.businessentityid) IN (
			SELECT hd.businessentityid
			FROM vw_stage_Adventureworks_sales_store vws
			)
		) = false
	AND (
		SELECT count(*)
		FROM vw_stage_Adventureworks_sales_store
		) > 0;

UPDATE Adventureworks_sales_store hd
SET businessentityid = vws.businessentityid
	,salespersonid = vws.salespersonid
	,demographics = vws.demographics
	,rowguid = vws.rowguid
	,modifieddate = vws.modifieddate
	,name = vws.name
	,source_file_name = vws.source_file_name
	,source_file_timestamp = vws.source_file_timestamp
FROM vw_stage_Adventureworks_sales_store vws
WHERE (hd.businessentityid) = (vws.businessentityid)
	AND (
		vws.salespersonid
		,vws.demographics
		,vws.rowguid
		,vws.modifieddate
		,vws.name
		) != (
		hd.salespersonid
		,hd.demographics
		,hd.rowguid
		,hd.modifieddate
		,hd.name
		);

INSERT INTO Adventureworks_sales_store (
	businessentityid
	,salespersonid
	,demographics
	,rowguid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
	)
SELECT businessentityid
	,salespersonid
	,demographics
	,rowguid
	,modifieddate
	,name
	,source_file_name
	,source_file_timestamp
FROM vw_stage_Adventureworks_sales_store
WHERE (businessentityid) NOT IN (
		SELECT businessentityid
		FROM Adventureworks_sales_store
		);
