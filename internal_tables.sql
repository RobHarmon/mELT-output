DROP TABLE IF EXISTS Adventureworks_humanresources_department;
	
CREATE TABLE IF NOT EXISTS Adventureworks_humanresources_department(
    departmentid  INTEGER,
    name  TEXT,
    groupname  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index departmentid;

DROP TABLE IF EXISTS Adventureworks_humanresources_employee;
	
CREATE TABLE IF NOT EXISTS Adventureworks_humanresources_employee(
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
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index businessentityid;

DROP TABLE IF EXISTS Adventureworks_humanresources_employeedepartmenthistory;
	
CREATE TABLE IF NOT EXISTS Adventureworks_humanresources_employeedepartmenthistory(
    businessentityid  INTEGER,
    departmentid  INTEGER,
    shiftid  INTEGER,
    startdate  DATE,
    enddate  DATE,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index businessentityid,departmentid,shiftid,startdate;

DROP TABLE IF EXISTS Adventureworks_humanresources_employeepayhistory;
	
CREATE TABLE IF NOT EXISTS Adventureworks_humanresources_employeepayhistory(
    businessentityid  INTEGER,
    ratechangedate  TIMESTAMPNTZ,
    rate  NUMERIC,
    payfrequency  INTEGER,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index businessentityid,ratechangedate;

DROP TABLE IF EXISTS Adventureworks_humanresources_jobcandidate;
	
CREATE TABLE IF NOT EXISTS Adventureworks_humanresources_jobcandidate(
    jobcandidateid  INTEGER,
    businessentityid  INTEGER,
    resume  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index jobcandidateid;

DROP TABLE IF EXISTS Adventureworks_humanresources_shift;
	
CREATE TABLE IF NOT EXISTS Adventureworks_humanresources_shift(
    shiftid  INTEGER,
    name  TEXT,
    starttime  TEXT,
    endtime  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index shiftid;

DROP TABLE IF EXISTS Adventureworks_person_address;
	
CREATE TABLE IF NOT EXISTS Adventureworks_person_address(
    addressid  INTEGER,
    addressline1  TEXT,
    addressline2  TEXT,
    city  TEXT,
    stateprovinceid  INTEGER,
    postalcode  TEXT,
    spatiallocation  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index addressid;

DROP TABLE IF EXISTS Adventureworks_person_addresstype;
	
CREATE TABLE IF NOT EXISTS Adventureworks_person_addresstype(
    addresstypeid  INTEGER,
    name  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index addresstypeid;

DROP TABLE IF EXISTS Adventureworks_person_businessentity;
	
CREATE TABLE IF NOT EXISTS Adventureworks_person_businessentity(
    businessentityid  INTEGER,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index businessentityid;

DROP TABLE IF EXISTS Adventureworks_person_businessentityaddress;
	
CREATE TABLE IF NOT EXISTS Adventureworks_person_businessentityaddress(
    businessentityid  INTEGER,
    addressid  INTEGER,
    addresstypeid  INTEGER,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index addressid,addresstypeid,businessentityid;

DROP TABLE IF EXISTS Adventureworks_person_businessentitycontact;
	
CREATE TABLE IF NOT EXISTS Adventureworks_person_businessentitycontact(
    businessentityid  INTEGER,
    personid  INTEGER,
    contacttypeid  INTEGER,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index businessentityid,contacttypeid,personid;

DROP TABLE IF EXISTS Adventureworks_person_contacttype;
	
CREATE TABLE IF NOT EXISTS Adventureworks_person_contacttype(
    contacttypeid  INTEGER,
    name  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index contacttypeid;

DROP TABLE IF EXISTS Adventureworks_person_countryregion;
	
CREATE TABLE IF NOT EXISTS Adventureworks_person_countryregion(
    countryregioncode  TEXT,
    name  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index countryregioncode;

DROP TABLE IF EXISTS Adventureworks_person_emailaddress;
	
CREATE TABLE IF NOT EXISTS Adventureworks_person_emailaddress(
    businessentityid  INTEGER,
    emailaddressid  INTEGER,
    emailaddress  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index businessentityid,emailaddressid;

DROP TABLE IF EXISTS Adventureworks_person_password;
	
CREATE TABLE IF NOT EXISTS Adventureworks_person_password(
    businessentityid  INTEGER,
    passwordhash  TEXT,
    passwordsalt  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index businessentityid;

DROP TABLE IF EXISTS Adventureworks_person_person;
	
CREATE TABLE IF NOT EXISTS Adventureworks_person_person(
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
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index businessentityid;

DROP TABLE IF EXISTS Adventureworks_person_personphone;
	
CREATE TABLE IF NOT EXISTS Adventureworks_person_personphone(
    businessentityid  INTEGER,
    phonenumber  TEXT,
    phonenumbertypeid  INTEGER,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index businessentityid,phonenumber,phonenumbertypeid;

DROP TABLE IF EXISTS Adventureworks_person_phonenumbertype;
	
CREATE TABLE IF NOT EXISTS Adventureworks_person_phonenumbertype(
    phonenumbertypeid  INTEGER,
    name  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index phonenumbertypeid;

DROP TABLE IF EXISTS Adventureworks_person_stateprovince;
	
CREATE TABLE IF NOT EXISTS Adventureworks_person_stateprovince(
    stateprovinceid  INTEGER,
    stateprovincecode  TEXT,
    countryregioncode  TEXT,
    isonlystateprovinceflag  BOOLEAN,
    name  TEXT,
    territoryid  INTEGER,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index stateprovinceid;

DROP TABLE IF EXISTS Adventureworks_production_billofmaterials;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_billofmaterials(
    billofmaterialsid  INTEGER,
    productassemblyid  INTEGER,
    componentid  INTEGER,
    startdate  TIMESTAMPNTZ,
    enddate  TIMESTAMPNTZ,
    unitmeasurecode  TEXT,
    bomlevel  INTEGER,
    perassemblyqty  NUMERIC,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index billofmaterialsid;

DROP TABLE IF EXISTS Adventureworks_production_culture;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_culture(
    cultureid  TEXT,
    name  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index cultureid;

DROP TABLE IF EXISTS Adventureworks_production_document;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_document(
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
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index documentnode;

DROP TABLE IF EXISTS Adventureworks_production_illustration;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_illustration(
    illustrationid  INTEGER,
    diagram  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index illustrationid;

DROP TABLE IF EXISTS Adventureworks_production_location;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_location(
    locationid  INTEGER,
    name  TEXT,
    costrate  NUMERIC,
    availability  NUMERIC,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index locationid;

DROP TABLE IF EXISTS Adventureworks_production_product;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_product(
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
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index productid;

DROP TABLE IF EXISTS Adventureworks_production_productcategory;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_productcategory(
    productcategoryid  INTEGER,
    name  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index productcategoryid;

DROP TABLE IF EXISTS Adventureworks_production_productcosthistory;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_productcosthistory(
    productid  INTEGER,
    startdate  TIMESTAMPNTZ,
    enddate  TIMESTAMPNTZ,
    standardcost  NUMERIC,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index productid,startdate;

DROP TABLE IF EXISTS Adventureworks_production_productdescription;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_productdescription(
    productdescriptionid  INTEGER,
    description  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index productdescriptionid;

DROP TABLE IF EXISTS Adventureworks_production_productdocument;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_productdocument(
    productid  INTEGER,
    modifieddate  TIMESTAMPNTZ,
    documentnode  TEXT,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index documentnode,productid;

DROP TABLE IF EXISTS Adventureworks_production_productinventory;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_productinventory(
    productid  INTEGER,
    locationid  INTEGER,
    shelf  TEXT,
    bin  INTEGER,
    quantity  INTEGER,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index locationid,productid;

DROP TABLE IF EXISTS Adventureworks_production_productlistpricehistory;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_productlistpricehistory(
    productid  INTEGER,
    startdate  TIMESTAMPNTZ,
    enddate  TIMESTAMPNTZ,
    listprice  NUMERIC,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index productid,startdate;

DROP TABLE IF EXISTS Adventureworks_production_productmodel;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_productmodel(
    productmodelid  INTEGER,
    name  TEXT,
    catalogdescription  TEXT,
    instructions  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index productmodelid;

DROP TABLE IF EXISTS Adventureworks_production_productmodelillustration;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_productmodelillustration(
    productmodelid  INTEGER,
    illustrationid  INTEGER,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index illustrationid,productmodelid;

DROP TABLE IF EXISTS Adventureworks_production_productmodelproductdescriptionculture;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_productmodelproductdescriptionculture(
    productmodelid  INTEGER,
    productdescriptionid  INTEGER,
    cultureid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index cultureid,productdescriptionid,productmodelid;

DROP TABLE IF EXISTS Adventureworks_production_productphoto;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_productphoto(
    productphotoid  INTEGER,
    thumbnailphoto  BYTEA,
    thumbnailphotofilename  TEXT,
    largephoto  BYTEA,
    largephotofilename  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index productphotoid;

DROP TABLE IF EXISTS Adventureworks_production_productproductphoto;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_productproductphoto(
    productid  INTEGER,
    productphotoid  INTEGER,
    primary  BOOLEAN,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index productid,productphotoid;

DROP TABLE IF EXISTS Adventureworks_production_productreview;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_productreview(
    productreviewid  INTEGER,
    productid  INTEGER,
    reviewername  TEXT,
    reviewdate  TIMESTAMPNTZ,
    emailaddress  TEXT,
    rating  INTEGER,
    comments  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index productreviewid;

DROP TABLE IF EXISTS Adventureworks_production_productsubcategory;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_productsubcategory(
    productsubcategoryid  INTEGER,
    productcategoryid  INTEGER,
    name  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index productsubcategoryid;

DROP TABLE IF EXISTS Adventureworks_production_scrapreason;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_scrapreason(
    scrapreasonid  INTEGER,
    name  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index scrapreasonid;

DROP TABLE IF EXISTS Adventureworks_production_transactionhistory;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_transactionhistory(
    transactionid  INTEGER,
    productid  INTEGER,
    referenceorderid  INTEGER,
    referenceorderlineid  INTEGER,
    transactiondate  TIMESTAMPNTZ,
    transactiontype  TEXT,
    quantity  INTEGER,
    actualcost  NUMERIC,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index transactionid;

DROP TABLE IF EXISTS Adventureworks_production_transactionhistoryarchive;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_transactionhistoryarchive(
    transactionid  INTEGER,
    productid  INTEGER,
    referenceorderid  INTEGER,
    referenceorderlineid  INTEGER,
    transactiondate  TIMESTAMPNTZ,
    transactiontype  TEXT,
    quantity  INTEGER,
    actualcost  NUMERIC,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index transactionid;

DROP TABLE IF EXISTS Adventureworks_production_unitmeasure;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_unitmeasure(
    unitmeasurecode  TEXT,
    name  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index unitmeasurecode;

DROP TABLE IF EXISTS Adventureworks_production_workorder;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_workorder(
    workorderid  INTEGER,
    productid  INTEGER,
    orderqty  INTEGER,
    scrappedqty  INTEGER,
    startdate  TIMESTAMPNTZ,
    enddate  TIMESTAMPNTZ,
    duedate  TIMESTAMPNTZ,
    scrapreasonid  INTEGER,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index workorderid;

DROP TABLE IF EXISTS Adventureworks_production_workorderrouting;
	
CREATE TABLE IF NOT EXISTS Adventureworks_production_workorderrouting(
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
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index operationsequence,productid,workorderid;

DROP TABLE IF EXISTS Adventureworks_purchasing_productvendor;
	
CREATE TABLE IF NOT EXISTS Adventureworks_purchasing_productvendor(
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
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index businessentityid,productid;

DROP TABLE IF EXISTS Adventureworks_purchasing_purchaseorderdetail;
	
CREATE TABLE IF NOT EXISTS Adventureworks_purchasing_purchaseorderdetail(
    purchaseorderid  INTEGER,
    purchaseorderdetailid  INTEGER,
    duedate  TIMESTAMPNTZ,
    orderqty  INTEGER,
    productid  INTEGER,
    unitprice  NUMERIC,
    receivedqty  NUMERIC,
    rejectedqty  NUMERIC,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index purchaseorderdetailid,purchaseorderid;

DROP TABLE IF EXISTS Adventureworks_purchasing_purchaseorderheader;
	
CREATE TABLE IF NOT EXISTS Adventureworks_purchasing_purchaseorderheader(
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
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index purchaseorderid;

DROP TABLE IF EXISTS Adventureworks_purchasing_shipmethod;
	
CREATE TABLE IF NOT EXISTS Adventureworks_purchasing_shipmethod(
    shipmethodid  INTEGER,
    name  TEXT,
    shipbase  NUMERIC,
    shiprate  NUMERIC,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index shipmethodid;

DROP TABLE IF EXISTS Adventureworks_purchasing_vendor;
	
CREATE TABLE IF NOT EXISTS Adventureworks_purchasing_vendor(
    businessentityid  INTEGER,
    accountnumber  TEXT,
    name  TEXT,
    creditrating  INTEGER,
    preferredvendorstatus  BOOLEAN,
    activeflag  BOOLEAN,
    purchasingwebserviceurl  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index businessentityid;

DROP TABLE IF EXISTS Adventureworks_sales_countryregioncurrency;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_countryregioncurrency(
    countryregioncode  TEXT,
    currencycode  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index countryregioncode,currencycode;

DROP TABLE IF EXISTS Adventureworks_sales_creditcard;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_creditcard(
    creditcardid  INTEGER,
    cardtype  TEXT,
    cardnumber  TEXT,
    expmonth  INTEGER,
    expyear  INTEGER,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index creditcardid;

DROP TABLE IF EXISTS Adventureworks_sales_currency;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_currency(
    currencycode  TEXT,
    name  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index currencycode;

DROP TABLE IF EXISTS Adventureworks_sales_currencyrate;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_currencyrate(
    currencyrateid  INTEGER,
    currencyratedate  TIMESTAMPNTZ,
    fromcurrencycode  TEXT,
    tocurrencycode  TEXT,
    averagerate  NUMERIC,
    endofdayrate  NUMERIC,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index currencyrateid;

DROP TABLE IF EXISTS Adventureworks_sales_customer;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_customer(
    customerid  INTEGER,
    personid  INTEGER,
    storeid  INTEGER,
    territoryid  INTEGER,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index customerid;

DROP TABLE IF EXISTS Adventureworks_sales_personcreditcard;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_personcreditcard(
    businessentityid  INTEGER,
    creditcardid  INTEGER,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index businessentityid,creditcardid;

DROP TABLE IF EXISTS Adventureworks_sales_salesorderdetail;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_salesorderdetail(
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
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index salesorderdetailid,salesorderid;

DROP TABLE IF EXISTS Adventureworks_sales_salesorderheader;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_salesorderheader(
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
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index salesorderid;

DROP TABLE IF EXISTS Adventureworks_sales_salesorderheadersalesreason;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_salesorderheadersalesreason(
    salesorderid  INTEGER,
    salesreasonid  INTEGER,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index salesorderid,salesreasonid;

DROP TABLE IF EXISTS Adventureworks_sales_salesperson;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_salesperson(
    businessentityid  INTEGER,
    territoryid  INTEGER,
    salesquota  NUMERIC,
    bonus  NUMERIC,
    commissionpct  NUMERIC,
    salesytd  NUMERIC,
    saleslastyear  NUMERIC,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index businessentityid;

DROP TABLE IF EXISTS Adventureworks_sales_salespersonquotahistory;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_salespersonquotahistory(
    businessentityid  INTEGER,
    quotadate  TIMESTAMPNTZ,
    salesquota  NUMERIC,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index businessentityid,quotadate;

DROP TABLE IF EXISTS Adventureworks_sales_salesreason;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_salesreason(
    salesreasonid  INTEGER,
    name  TEXT,
    reasontype  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index salesreasonid;

DROP TABLE IF EXISTS Adventureworks_sales_salestaxrate;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_salestaxrate(
    salestaxrateid  INTEGER,
    stateprovinceid  INTEGER,
    taxtype  INTEGER,
    taxrate  NUMERIC,
    name  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index salestaxrateid;

DROP TABLE IF EXISTS Adventureworks_sales_salesterritory;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_salesterritory(
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
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index territoryid;

DROP TABLE IF EXISTS Adventureworks_sales_salesterritoryhistory;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_salesterritoryhistory(
    businessentityid  INTEGER,
    territoryid  INTEGER,
    startdate  TIMESTAMPNTZ,
    enddate  TIMESTAMPNTZ,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index businessentityid,startdate,territoryid;

DROP TABLE IF EXISTS Adventureworks_sales_shoppingcartitem;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_shoppingcartitem(
    shoppingcartitemid  INTEGER,
    shoppingcartid  TEXT,
    quantity  INTEGER,
    productid  INTEGER,
    datecreated  TIMESTAMPNTZ,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index shoppingcartitemid;

DROP TABLE IF EXISTS Adventureworks_sales_specialoffer;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_specialoffer(
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
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index specialofferid;

DROP TABLE IF EXISTS Adventureworks_sales_specialofferproduct;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_specialofferproduct(
    specialofferid  INTEGER,
    productid  INTEGER,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index productid,specialofferid;

DROP TABLE IF EXISTS Adventureworks_sales_store;
	
CREATE TABLE IF NOT EXISTS Adventureworks_sales_store(
    businessentityid  INTEGER,
    name  TEXT,
    salespersonid  INTEGER,
    demographics  TEXT,
    rowguid  TEXT,
    modifieddate  TIMESTAMPNTZ,
    source_file_name TEXT, 
    source_file_timestamp TIMESTAMPNTZ)
primary index businessentityid;