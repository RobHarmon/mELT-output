DROP TABLE IF EXISTS ex_Adventureworks_humanresources_department;
	
CREATE EXTERNAL TABLE ex_Adventureworks_humanresources_department(
    departmentid  INTEGER,
    name  TEXT,
    groupname  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/humanresources/department/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_humanresources_employee;
	
CREATE EXTERNAL TABLE ex_Adventureworks_humanresources_employee(
    businessentityid  INTEGER,
    nationalidnumber  TEXT,
    loginid  TEXT,
    jobtitle  TEXT,
    birthdate  DATE,
    maritalstatus  TEXT,
    gender  TEXT,
    hiredate  DATE,
    salariedflag  BOOLEAN,
    vacationhours  INTEGER,
    sickleavehours  INTEGER,
    currentflag  BOOLEAN,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    organizationnode  TEXT, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/humanresources/employee/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_humanresources_employeedepartmenthistory;
	
CREATE EXTERNAL TABLE ex_Adventureworks_humanresources_employeedepartmenthistory(
    businessentityid  INTEGER,
    departmentid  INTEGER,
    shiftid  INTEGER,
    startdate  DATE,
    enddate  DATE,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/humanresources/employeedepartmenthistory/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_humanresources_employeepayhistory;
	
CREATE EXTERNAL TABLE ex_Adventureworks_humanresources_employeepayhistory(
    businessentityid  INTEGER,
    ratechangedate  TIMESTAMPNTZ,
    rate  NUMERIC,
    payfrequency  INTEGER,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/humanresources/employeepayhistory/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_humanresources_jobcandidate;
	
CREATE EXTERNAL TABLE ex_Adventureworks_humanresources_jobcandidate(
    jobcandidateid  INTEGER,
    businessentityid  INTEGER,
    resume  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/humanresources/jobcandidate/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_humanresources_shift;
	
CREATE EXTERNAL TABLE ex_Adventureworks_humanresources_shift(
    shiftid  INTEGER,
    name  TEXT,
    starttime  TEXT,
    endtime  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/humanresources/shift/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_person_address;
	
CREATE EXTERNAL TABLE ex_Adventureworks_person_address(
    addressid  INTEGER,
    addressline1  TEXT,
    addressline2  TEXT,
    city  TEXT,
    stateprovinceid  INTEGER,
    postalcode  TEXT,
    spatiallocation  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/person/address/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_person_addresstype;
	
CREATE EXTERNAL TABLE ex_Adventureworks_person_addresstype(
    addresstypeid  INTEGER,
    name  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/person/addresstype/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_person_businessentity;
	
CREATE EXTERNAL TABLE ex_Adventureworks_person_businessentity(
    businessentityid  INTEGER,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/person/businessentity/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_person_businessentityaddress;
	
CREATE EXTERNAL TABLE ex_Adventureworks_person_businessentityaddress(
    businessentityid  INTEGER,
    addressid  INTEGER,
    addresstypeid  INTEGER,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/person/businessentityaddress/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_person_businessentitycontact;
	
CREATE EXTERNAL TABLE ex_Adventureworks_person_businessentitycontact(
    businessentityid  INTEGER,
    personid  INTEGER,
    contacttypeid  INTEGER,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/person/businessentitycontact/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_person_contacttype;
	
CREATE EXTERNAL TABLE ex_Adventureworks_person_contacttype(
    contacttypeid  INTEGER,
    name  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/person/contacttype/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_person_countryregion;
	
CREATE EXTERNAL TABLE ex_Adventureworks_person_countryregion(
    countryregioncode  TEXT,
    name  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/person/countryregion/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_person_emailaddress;
	
CREATE EXTERNAL TABLE ex_Adventureworks_person_emailaddress(
    businessentityid  INTEGER,
    emailaddressid  INTEGER,
    emailaddress  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/person/emailaddress/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_person_password;
	
CREATE EXTERNAL TABLE ex_Adventureworks_person_password(
    businessentityid  INTEGER,
    passwordhash  TEXT,
    passwordsalt  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/person/password/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_person_person;
	
CREATE EXTERNAL TABLE ex_Adventureworks_person_person(
    businessentityid  INTEGER,
    persontype  TEXT,
    namestyle  BOOLEAN,
    title  TEXT,
    firstname  TEXT,
    middlename  TEXT,
    lastname  TEXT,
    suffix  TEXT,
    emailpromotion  INTEGER,
    additionalcontactinfo  TEXT,
    demographics  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/person/person/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_person_personphone;
	
CREATE EXTERNAL TABLE ex_Adventureworks_person_personphone(
    businessentityid  INTEGER,
    phonenumber  TEXT,
    phonenumbertypeid  INTEGER,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/person/personphone/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_person_phonenumbertype;
	
CREATE EXTERNAL TABLE ex_Adventureworks_person_phonenumbertype(
    phonenumbertypeid  INTEGER,
    name  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/person/phonenumbertype/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_person_stateprovince;
	
CREATE EXTERNAL TABLE ex_Adventureworks_person_stateprovince(
    stateprovinceid  INTEGER,
    stateprovincecode  TEXT,
    countryregioncode  TEXT,
    isonlystateprovinceflag  BOOLEAN,
    name  TEXT,
    territoryid  INTEGER,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/person/stateprovince/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_billofmaterials;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_billofmaterials(
    billofmaterialsid  INTEGER,
    productassemblyid  INTEGER,
    componentid  INTEGER,
    startdate  TIMESTAMPNTZ,
    enddate  TIMESTAMPNTZ,
    unitmeasurecode  TEXT,
    bomlevel  INTEGER,
    perassemblyqty  NUMERIC,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/billofmaterials/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_culture;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_culture(
    cultureid  TEXT,
    name  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/culture/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_document;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_document(
    title  TEXT,
    owner  INTEGER,
    folderflag  BOOLEAN,
    filename  TEXT,
    fileextension  TEXT,
    revision  TEXT,
    changenumber  INTEGER,
    status  INTEGER,
    documentsummary  TEXT,
    document  BYTEA,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    documentnode  TEXT, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/document/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_illustration;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_illustration(
    illustrationid  INTEGER,
    diagram  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/illustration/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_location;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_location(
    locationid  INTEGER,
    name  TEXT,
    costrate  NUMERIC,
    availability  NUMERIC,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/location/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_product;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_product(
    productid  INTEGER,
    name  TEXT,
    productnumber  TEXT,
    makeflag  BOOLEAN,
    finishedgoodsflag  BOOLEAN,
    color  TEXT,
    safetystocklevel  INTEGER,
    reorderpoint  INTEGER,
    standardcost  NUMERIC,
    listprice  NUMERIC,
    size  TEXT,
    sizeunitmeasurecode  TEXT,
    weightunitmeasurecode  TEXT,
    weight  NUMERIC,
    daystomanufacture  INTEGER,
    productline  TEXT,
    class  TEXT,
    style  TEXT,
    productsubcategoryid  INTEGER,
    productmodelid  INTEGER,
    sellstartdate  TIMESTAMPNTZ,
    sellenddate  TIMESTAMPNTZ,
    discontinueddate  TIMESTAMPNTZ,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/product/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_productcategory;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_productcategory(
    productcategoryid  INTEGER,
    name  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/productcategory/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_productcosthistory;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_productcosthistory(
    productid  INTEGER,
    startdate  TIMESTAMPNTZ,
    enddate  TIMESTAMPNTZ,
    standardcost  NUMERIC,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/productcosthistory/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_productdescription;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_productdescription(
    productdescriptionid  INTEGER,
    description  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/productdescription/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_productdocument;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_productdocument(
    productid  INTEGER,
    modifieddate  TIMESTAMPNTZ,
    documentnode  TEXT, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/productdocument/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_productinventory;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_productinventory(
    productid  INTEGER,
    locationid  INTEGER,
    shelf  TEXT,
    bin  INTEGER,
    quantity  INTEGER,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/productinventory/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_productlistpricehistory;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_productlistpricehistory(
    productid  INTEGER,
    startdate  TIMESTAMPNTZ,
    enddate  TIMESTAMPNTZ,
    listprice  NUMERIC,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/productlistpricehistory/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_productmodel;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_productmodel(
    productmodelid  INTEGER,
    name  TEXT,
    catalogdescription  TEXT,
    instructions  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/productmodel/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_productmodelillustration;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_productmodelillustration(
    productmodelid  INTEGER,
    illustrationid  INTEGER,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/productmodelillustration/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_productmodelproductdescriptionculture;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_productmodelproductdescriptionculture(
    productmodelid  INTEGER,
    productdescriptionid  INTEGER,
    cultureid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/productmodelproductdescriptionculture/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_productphoto;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_productphoto(
    productphotoid  INTEGER,
    thumbnailphoto  BYTEA,
    thumbnailphotofilename  TEXT,
    largephoto  BYTEA,
    largephotofilename  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/productphoto/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_productproductphoto;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_productproductphoto(
    productid  INTEGER,
    productphotoid  INTEGER,
    primary  BOOLEAN,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/productproductphoto/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_productreview;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_productreview(
    productreviewid  INTEGER,
    productid  INTEGER,
    reviewername  TEXT,
    reviewdate  TIMESTAMPNTZ,
    emailaddress  TEXT,
    rating  INTEGER,
    comments  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/productreview/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_productsubcategory;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_productsubcategory(
    productsubcategoryid  INTEGER,
    productcategoryid  INTEGER,
    name  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/productsubcategory/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_scrapreason;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_scrapreason(
    scrapreasonid  INTEGER,
    name  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/scrapreason/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_transactionhistory;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_transactionhistory(
    transactionid  INTEGER,
    productid  INTEGER,
    referenceorderid  INTEGER,
    referenceorderlineid  INTEGER,
    transactiondate  TIMESTAMPNTZ,
    transactiontype  TEXT,
    quantity  INTEGER,
    actualcost  NUMERIC,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/transactionhistory/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_transactionhistoryarchive;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_transactionhistoryarchive(
    transactionid  INTEGER,
    productid  INTEGER,
    referenceorderid  INTEGER,
    referenceorderlineid  INTEGER,
    transactiondate  TIMESTAMPNTZ,
    transactiontype  TEXT,
    quantity  INTEGER,
    actualcost  NUMERIC,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/transactionhistoryarchive/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_unitmeasure;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_unitmeasure(
    unitmeasurecode  TEXT,
    name  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/unitmeasure/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_workorder;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_workorder(
    workorderid  INTEGER,
    productid  INTEGER,
    orderqty  INTEGER,
    scrappedqty  INTEGER,
    startdate  TIMESTAMPNTZ,
    enddate  TIMESTAMPNTZ,
    duedate  TIMESTAMPNTZ,
    scrapreasonid  INTEGER,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/workorder/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_production_workorderrouting;
	
CREATE EXTERNAL TABLE ex_Adventureworks_production_workorderrouting(
    workorderid  INTEGER,
    productid  INTEGER,
    operationsequence  INTEGER,
    locationid  INTEGER,
    scheduledstartdate  TIMESTAMPNTZ,
    scheduledenddate  TIMESTAMPNTZ,
    actualstartdate  TIMESTAMPNTZ,
    actualenddate  TIMESTAMPNTZ,
    actualresourcehrs  NUMERIC,
    plannedcost  NUMERIC,
    actualcost  NUMERIC,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/production/workorderrouting/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_purchasing_productvendor;
	
CREATE EXTERNAL TABLE ex_Adventureworks_purchasing_productvendor(
    productid  INTEGER,
    businessentityid  INTEGER,
    averageleadtime  INTEGER,
    standardprice  NUMERIC,
    lastreceiptcost  NUMERIC,
    lastreceiptdate  TIMESTAMPNTZ,
    minorderqty  INTEGER,
    maxorderqty  INTEGER,
    onorderqty  INTEGER,
    unitmeasurecode  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/purchasing/productvendor/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_purchasing_purchaseorderdetail;
	
CREATE EXTERNAL TABLE ex_Adventureworks_purchasing_purchaseorderdetail(
    purchaseorderid  INTEGER,
    purchaseorderdetailid  INTEGER,
    duedate  TIMESTAMPNTZ,
    orderqty  INTEGER,
    productid  INTEGER,
    unitprice  NUMERIC,
    receivedqty  NUMERIC,
    rejectedqty  NUMERIC,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/purchasing/purchaseorderdetail/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_purchasing_purchaseorderheader;
	
CREATE EXTERNAL TABLE ex_Adventureworks_purchasing_purchaseorderheader(
    purchaseorderid  INTEGER,
    revisionnumber  INTEGER,
    status  INTEGER,
    employeeid  INTEGER,
    vendorid  INTEGER,
    shipmethodid  INTEGER,
    orderdate  TIMESTAMPNTZ,
    shipdate  TIMESTAMPNTZ,
    subtotal  NUMERIC,
    taxamt  NUMERIC,
    freight  NUMERIC,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/purchasing/purchaseorderheader/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_purchasing_shipmethod;
	
CREATE EXTERNAL TABLE ex_Adventureworks_purchasing_shipmethod(
    shipmethodid  INTEGER,
    name  TEXT,
    shipbase  NUMERIC,
    shiprate  NUMERIC,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/purchasing/shipmethod/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_purchasing_vendor;
	
CREATE EXTERNAL TABLE ex_Adventureworks_purchasing_vendor(
    businessentityid  INTEGER,
    accountnumber  TEXT,
    name  TEXT,
    creditrating  INTEGER,
    preferredvendorstatus  BOOLEAN,
    activeflag  BOOLEAN,
    purchasingwebserviceurl  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/purchasing/vendor/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_countryregioncurrency;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_countryregioncurrency(
    countryregioncode  TEXT,
    currencycode  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/countryregioncurrency/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_creditcard;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_creditcard(
    creditcardid  INTEGER,
    cardtype  TEXT,
    cardnumber  TEXT,
    expmonth  INTEGER,
    expyear  INTEGER,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/creditcard/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_currency;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_currency(
    currencycode  TEXT,
    name  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/currency/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_currencyrate;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_currencyrate(
    currencyrateid  INTEGER,
    currencyratedate  TIMESTAMPNTZ,
    fromcurrencycode  TEXT,
    tocurrencycode  TEXT,
    averagerate  NUMERIC,
    endofdayrate  NUMERIC,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/currencyrate/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_customer;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_customer(
    customerid  INTEGER,
    personid  INTEGER,
    storeid  INTEGER,
    territoryid  INTEGER,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/customer/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_personcreditcard;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_personcreditcard(
    businessentityid  INTEGER,
    creditcardid  INTEGER,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/personcreditcard/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_salesorderdetail;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_salesorderdetail(
    salesorderid  INTEGER,
    salesorderdetailid  INTEGER,
    carriertrackingnumber  TEXT,
    orderqty  INTEGER,
    productid  INTEGER,
    specialofferid  INTEGER,
    unitprice  NUMERIC,
    unitpricediscount  NUMERIC,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/salesorderdetail/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_salesorderheader;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_salesorderheader(
    salesorderid  INTEGER,
    revisionnumber  INTEGER,
    orderdate  TIMESTAMPNTZ,
    duedate  TIMESTAMPNTZ,
    shipdate  TIMESTAMPNTZ,
    status  INTEGER,
    onlineorderflag  BOOLEAN,
    purchaseordernumber  TEXT,
    accountnumber  TEXT,
    customerid  INTEGER,
    salespersonid  INTEGER,
    territoryid  INTEGER,
    billtoaddressid  INTEGER,
    shiptoaddressid  INTEGER,
    shipmethodid  INTEGER,
    creditcardid  INTEGER,
    creditcardapprovalcode  TEXT,
    currencyrateid  INTEGER,
    subtotal  NUMERIC,
    taxamt  NUMERIC,
    freight  NUMERIC,
    totaldue  NUMERIC,
    comment  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/salesorderheader/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_salesorderheadersalesreason;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_salesorderheadersalesreason(
    salesorderid  INTEGER,
    salesreasonid  INTEGER,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/salesorderheadersalesreason/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_salesperson;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_salesperson(
    businessentityid  INTEGER,
    territoryid  INTEGER,
    salesquota  NUMERIC,
    bonus  NUMERIC,
    commissionpct  NUMERIC,
    salesytd  NUMERIC,
    saleslastyear  NUMERIC,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/salesperson/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_salespersonquotahistory;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_salespersonquotahistory(
    businessentityid  INTEGER,
    quotadate  TIMESTAMPNTZ,
    salesquota  NUMERIC,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/salespersonquotahistory/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_salesreason;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_salesreason(
    salesreasonid  INTEGER,
    name  TEXT,
    reasontype  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/salesreason/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_salestaxrate;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_salestaxrate(
    salestaxrateid  INTEGER,
    stateprovinceid  INTEGER,
    taxtype  INTEGER,
    taxrate  NUMERIC,
    name  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/salestaxrate/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_salesterritory;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_salesterritory(
    territoryid  INTEGER,
    name  TEXT,
    countryregioncode  TEXT,
    group  TEXT,
    salesytd  NUMERIC,
    saleslastyear  NUMERIC,
    costytd  NUMERIC,
    costlastyear  NUMERIC,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/salesterritory/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_salesterritoryhistory;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_salesterritoryhistory(
    businessentityid  INTEGER,
    territoryid  INTEGER,
    startdate  TIMESTAMPNTZ,
    enddate  TIMESTAMPNTZ,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/salesterritoryhistory/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_shoppingcartitem;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_shoppingcartitem(
    shoppingcartitemid  INTEGER,
    shoppingcartid  TEXT,
    quantity  INTEGER,
    productid  INTEGER,
    datecreated  TIMESTAMPNTZ,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/shoppingcartitem/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_specialoffer;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_specialoffer(
    specialofferid  INTEGER,
    description  TEXT,
    discountpct  NUMERIC,
    type  TEXT,
    category  TEXT,
    startdate  TIMESTAMPNTZ,
    enddate  TIMESTAMPNTZ,
    minqty  INTEGER,
    maxqty  INTEGER,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/specialoffer/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_specialofferproduct;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_specialofferproduct(
    specialofferid  INTEGER,
    productid  INTEGER,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/specialofferproduct/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);

DROP TABLE IF EXISTS ex_Adventureworks_sales_store;
	
CREATE EXTERNAL TABLE ex_Adventureworks_sales_store(
    businessentityid  INTEGER,
    name  TEXT,
    salespersonid  INTEGER,
    demographics  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ, 
    ods_export_time TIMESTAMPTZ)
URL = 's3://some-ficticious-bucket/project/Adventureworks/sales/store/'
OBJECT_PATTERN= '*.parquet'
TYPE = (PARQUET);