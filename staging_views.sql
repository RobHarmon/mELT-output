DROP VIEW IF EXISTS vw_stage_Adventureworks_humanresources_department;


CREATE VIEW vw_stage_Adventureworks_humanresources_department
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_humanresources_department
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_humanresources_department
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_humanresources_employee;


CREATE VIEW vw_stage_Adventureworks_humanresources_employee
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_humanresources_employee
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_humanresources_employee
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_humanresources_employeedepartmenthistory;


CREATE VIEW vw_stage_Adventureworks_humanresources_employeedepartmenthistory
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_humanresources_employeedepartmenthistory
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_humanresources_employeedepartmenthistory
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_humanresources_employeepayhistory;


CREATE VIEW vw_stage_Adventureworks_humanresources_employeepayhistory
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_humanresources_employeepayhistory
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_humanresources_employeepayhistory
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_humanresources_jobcandidate;


CREATE VIEW vw_stage_Adventureworks_humanresources_jobcandidate
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_humanresources_jobcandidate
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_humanresources_jobcandidate
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_humanresources_shift;


CREATE VIEW vw_stage_Adventureworks_humanresources_shift
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_humanresources_shift
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_humanresources_shift
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_person_address;


CREATE VIEW vw_stage_Adventureworks_person_address
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_person_address
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_person_address
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_person_addresstype;


CREATE VIEW vw_stage_Adventureworks_person_addresstype
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_person_addresstype
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_person_addresstype
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_person_businessentity;


CREATE VIEW vw_stage_Adventureworks_person_businessentity
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_person_businessentity
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_person_businessentity
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_person_businessentityaddress;


CREATE VIEW vw_stage_Adventureworks_person_businessentityaddress
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_person_businessentityaddress
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_person_businessentityaddress
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_person_businessentitycontact;


CREATE VIEW vw_stage_Adventureworks_person_businessentitycontact
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_person_businessentitycontact
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_person_businessentitycontact
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_person_contacttype;


CREATE VIEW vw_stage_Adventureworks_person_contacttype
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_person_contacttype
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_person_contacttype
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_person_countryregion;


CREATE VIEW vw_stage_Adventureworks_person_countryregion
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_person_countryregion
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_person_countryregion
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_person_emailaddress;


CREATE VIEW vw_stage_Adventureworks_person_emailaddress
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_person_emailaddress
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_person_emailaddress
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_person_password;


CREATE VIEW vw_stage_Adventureworks_person_password
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_person_password
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_person_password
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_person_person;


CREATE VIEW vw_stage_Adventureworks_person_person
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_person_person
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_person_person
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_person_personphone;


CREATE VIEW vw_stage_Adventureworks_person_personphone
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_person_personphone
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_person_personphone
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_person_phonenumbertype;


CREATE VIEW vw_stage_Adventureworks_person_phonenumbertype
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_person_phonenumbertype
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_person_phonenumbertype
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_person_stateprovince;


CREATE VIEW vw_stage_Adventureworks_person_stateprovince
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_person_stateprovince
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_person_stateprovince
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_billofmaterials;


CREATE VIEW vw_stage_Adventureworks_production_billofmaterials
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_billofmaterials
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_billofmaterials
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_culture;


CREATE VIEW vw_stage_Adventureworks_production_culture
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_culture
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_culture
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_document;


CREATE VIEW vw_stage_Adventureworks_production_document
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_document
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_document
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_illustration;


CREATE VIEW vw_stage_Adventureworks_production_illustration
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_illustration
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_illustration
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_location;


CREATE VIEW vw_stage_Adventureworks_production_location
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_location
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_location
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_product;


CREATE VIEW vw_stage_Adventureworks_production_product
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_product
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_product
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_productcategory;


CREATE VIEW vw_stage_Adventureworks_production_productcategory
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_productcategory
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_productcategory
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_productcosthistory;


CREATE VIEW vw_stage_Adventureworks_production_productcosthistory
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_productcosthistory
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_productcosthistory
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_productdescription;


CREATE VIEW vw_stage_Adventureworks_production_productdescription
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_productdescription
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_productdescription
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_productdocument;


CREATE VIEW vw_stage_Adventureworks_production_productdocument
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_productdocument
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_productdocument
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_productinventory;


CREATE VIEW vw_stage_Adventureworks_production_productinventory
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_productinventory
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_productinventory
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_productlistpricehistory;


CREATE VIEW vw_stage_Adventureworks_production_productlistpricehistory
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_productlistpricehistory
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_productlistpricehistory
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_productmodel;


CREATE VIEW vw_stage_Adventureworks_production_productmodel
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_productmodel
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_productmodel
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_productmodelillustration;


CREATE VIEW vw_stage_Adventureworks_production_productmodelillustration
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_productmodelillustration
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_productmodelillustration
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_productmodelproductdescriptionculture;


CREATE VIEW vw_stage_Adventureworks_production_productmodelproductdescriptionculture
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_productmodelproductdescriptionculture
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_productmodelproductdescriptionculture
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_productphoto;


CREATE VIEW vw_stage_Adventureworks_production_productphoto
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_productphoto
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_productphoto
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_productproductphoto;


CREATE VIEW vw_stage_Adventureworks_production_productproductphoto
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_productproductphoto
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_productproductphoto
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_productreview;


CREATE VIEW vw_stage_Adventureworks_production_productreview
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_productreview
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_productreview
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_productsubcategory;


CREATE VIEW vw_stage_Adventureworks_production_productsubcategory
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_productsubcategory
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_productsubcategory
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_scrapreason;


CREATE VIEW vw_stage_Adventureworks_production_scrapreason
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_scrapreason
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_scrapreason
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_transactionhistory;


CREATE VIEW vw_stage_Adventureworks_production_transactionhistory
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_transactionhistory
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_transactionhistory
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_transactionhistoryarchive;


CREATE VIEW vw_stage_Adventureworks_production_transactionhistoryarchive
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_transactionhistoryarchive
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_transactionhistoryarchive
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_unitmeasure;


CREATE VIEW vw_stage_Adventureworks_production_unitmeasure
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_unitmeasure
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_unitmeasure
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_workorder;


CREATE VIEW vw_stage_Adventureworks_production_workorder
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_workorder
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_workorder
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_production_workorderrouting;


CREATE VIEW vw_stage_Adventureworks_production_workorderrouting
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_production_workorderrouting
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_production_workorderrouting
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_purchasing_productvendor;


CREATE VIEW vw_stage_Adventureworks_purchasing_productvendor
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_purchasing_productvendor
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_purchasing_productvendor
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_purchasing_purchaseorderdetail;


CREATE VIEW vw_stage_Adventureworks_purchasing_purchaseorderdetail
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_purchasing_purchaseorderdetail
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_purchasing_purchaseorderdetail
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_purchasing_purchaseorderheader;


CREATE VIEW vw_stage_Adventureworks_purchasing_purchaseorderheader
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_purchasing_purchaseorderheader
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_purchasing_purchaseorderheader
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_purchasing_shipmethod;


CREATE VIEW vw_stage_Adventureworks_purchasing_shipmethod
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_purchasing_shipmethod
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_purchasing_shipmethod
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_purchasing_vendor;


CREATE VIEW vw_stage_Adventureworks_purchasing_vendor
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_purchasing_vendor
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_purchasing_vendor
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_countryregioncurrency;


CREATE VIEW vw_stage_Adventureworks_sales_countryregioncurrency
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_countryregioncurrency
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_countryregioncurrency
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_creditcard;


CREATE VIEW vw_stage_Adventureworks_sales_creditcard
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_creditcard
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_creditcard
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_currency;


CREATE VIEW vw_stage_Adventureworks_sales_currency
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_currency
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_currency
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_currencyrate;


CREATE VIEW vw_stage_Adventureworks_sales_currencyrate
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_currencyrate
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_currencyrate
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_customer;


CREATE VIEW vw_stage_Adventureworks_sales_customer
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_customer
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_customer
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_personcreditcard;


CREATE VIEW vw_stage_Adventureworks_sales_personcreditcard
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_personcreditcard
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_personcreditcard
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_salesorderdetail;


CREATE VIEW vw_stage_Adventureworks_sales_salesorderdetail
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_salesorderdetail
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_salesorderdetail
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_salesorderheader;


CREATE VIEW vw_stage_Adventureworks_sales_salesorderheader
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_salesorderheader
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_salesorderheader
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_salesorderheadersalesreason;


CREATE VIEW vw_stage_Adventureworks_sales_salesorderheadersalesreason
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_salesorderheadersalesreason
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_salesorderheadersalesreason
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_salesperson;


CREATE VIEW vw_stage_Adventureworks_sales_salesperson
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_salesperson
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_salesperson
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_salespersonquotahistory;


CREATE VIEW vw_stage_Adventureworks_sales_salespersonquotahistory
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_salespersonquotahistory
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_salespersonquotahistory
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_salesreason;


CREATE VIEW vw_stage_Adventureworks_sales_salesreason
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_salesreason
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_salesreason
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_salestaxrate;


CREATE VIEW vw_stage_Adventureworks_sales_salestaxrate
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_salestaxrate
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_salestaxrate
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_salesterritory;


CREATE VIEW vw_stage_Adventureworks_sales_salesterritory
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_salesterritory
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_salesterritory
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_salesterritoryhistory;


CREATE VIEW vw_stage_Adventureworks_sales_salesterritoryhistory
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_salesterritoryhistory
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_salesterritoryhistory
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_shoppingcartitem;


CREATE VIEW vw_stage_Adventureworks_sales_shoppingcartitem
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_shoppingcartitem
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_shoppingcartitem
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_specialoffer;


CREATE VIEW vw_stage_Adventureworks_sales_specialoffer
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_specialoffer
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_specialoffer
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_specialofferproduct;


CREATE VIEW vw_stage_Adventureworks_sales_specialofferproduct
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_specialofferproduct
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_specialofferproduct
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
DROP VIEW IF EXISTS vw_stage_Adventureworks_sales_store;


CREATE VIEW vw_stage_Adventureworks_sales_store
AS
WITH source
AS materialized (
	SELECT *
		,source_file_timestamp
		,source_file_name
	FROM ex_Adventureworks_sales_store
	WHERE source_file_timestamp >= coalesce((
				SELECT MAX(source_file_timestamp)
				FROM Adventureworks_sales_store
				), '1980-01-01')
	)
SELECT *
FROM source
WHERE source_file_timestamp = (
		SELECT MAX(source_file_timestamp)
		FROM source
		);
		
		
