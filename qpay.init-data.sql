begin

insert into qp$_person (ID, EMAIL, FULLNAME, PAPER#, PHONE, COUNTRYISO, PAPER_CTYPE, PAPER_CNUMBER,
                        PAPER_SERIALNUMBER, PAPER_ISSUER, PAPER_ISSUEDATE, PAPER_ISSUECITY, REGISTRATION,
                        PAPER_ISSUERCODE, AGENT_PAYER, PERSON_TYPE, PAPER_EXPIRE_DATE, LASTNAME_LENGTH,
                        FIRSTNAME_LENGTH, REGADDRESS, REGCOUNTRY, REGCITY, BIRTHDATE, CARD, REGADDRESS_ID,
                        REGADDRESSLINE1_LENGTH, POSTALCODE, GENDER_ID)
values (545613102, null, 'LITVINOVA ANNA ALEKSANDROVNA', null, '+79214058665', 'RUS', 'PASSPORT', '563458', '5689',
        'OTDELOM UFMS', to_date('25-01-2012', 'dd-mm-yyyy'), null, null, '205-896', 'B000064', 0, null, 9, 4,
        'ПРОСПЕКТ МИРА', 'РОССИЯ', 'Санкт-Петербург', to_date('24-11-1991', 'dd-mm-yyyy'), null, null, null, null,
        null);

insert into qp$_person (ID, EMAIL, FULLNAME, PAPER#, PHONE, COUNTRYISO, PAPER_CTYPE, PAPER_CNUMBER,
                        PAPER_SERIALNUMBER, PAPER_ISSUER, PAPER_ISSUEDATE, PAPER_ISSUECITY, REGISTRATION,
                        PAPER_ISSUERCODE, AGENT_PAYER, PERSON_TYPE, PAPER_EXPIRE_DATE, LASTNAME_LENGTH,
                        FIRSTNAME_LENGTH, REGADDRESS, REGCOUNTRY, REGCITY, BIRTHDATE, CARD, REGADDRESS_ID,
                        REGADDRESSLINE1_LENGTH, POSTALCODE, GENDER_ID)
values (545613103, null, 'LOBOV ARTEM IVANOVICH', null, '+79209201133', 'XXX', null, null, null, null, null, null,
        null, null, null, 8, null, 5, 5, null, null, null, null, null, null, null, null, null);


insert into qp$_transfer (UIN, DTIME, MONEY, CUR, STATUS, NOT_AFTER, AGENT_PAYER, PAYER, AGENT_PAYEE, PAYEE, REAL_PAYEE,
                          CCOM, TCOM, FCOM, COMCUR, MESSAGE, DB_PAYDOCID, DB_PAYDOCDATE, CR_PAYDOCID, CR_PAYDOCDATE,
                          OPERATOR_ID, WTIME, RTIME, PTYPE, MCOM, CONTROL_QUESTION, CONTROL_ANSWER, LIMITS_PAYER,
                          LIMITS_PAYEE, BANK_PAYER, DIRECTION_PAYEE, COUNTRY_ISO, NTIME, BANK_PAYEE, CITYID_PAYEE,
                          PAYER_RESIDENT, PAYEE_RESIDENT, EXCHANGE_RATE, DST_CUR, DST_COMCUR, DST_AMOUNT, DST_FCOM,
                          DST_CCOM, DST_MCOM, DST_TCOM, NOPERATOR_ID, ROPERATOR_ID, PAYER_CARD, OID, OUTER_SYSTEM, STAN,
                          CASHIN_ID, PAYEE_CARD, TR_OPTION, SOPERATOR_ID, FCONTROL0, ACTION_ID, REF_NUM)
values (1249823332, to_date('10-07-2019 15:48:56', 'dd-mm-yyyy hh24:mi:ss'), 20000, '810', 4,
        to_date('09-07-2022 15:48:56', 'dd-mm-yyyy hh24:mi:ss'), 'AG00RUS', 545613102, null, 545613103, null, 0, 120,
        80, null, null, '1', to_date('10-07-2019 15:48:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, 10308391,
        to_date('10-07-2019 15:48:56', 'dd-mm-yyyy hh24:mi:ss'), null, 'N', 0, null, null, null, null, 'B000064',
        'QP$_OST', 'OST', to_date('10-07-2019 15:48:56', 'dd-mm-yyyy hh24:mi:ss'), null, 481577692, '1', null, null,
        null, null, null, null, null, null, null, 10308391, null, null, null, null, 512127411, null, null, null,
        10308391, 0, null, 494320412);

insert into qp$_transfer_data (UIN, TCOM_ON_SEND, CCOM_ON_SEND, EXCHANGE_RATE_ON_SEND, DST_CUR_ON_SEND,
                               DST_COMCUR_ON_SEND, DST_AMOUNT, DST_FCOM_ON_SEND, DST_TCOM_ON_SEND, DST_CCOM_ON_SEND,
                               DST_MCOM_ON_SEND, CLCOM, DST_CLCOM, OKCCOM, OKC_OUTCOM, OKC_TCOM, TRF_ID_FCOM_ON_SEND,
                               TRF_ID_TCOM_ON_SEND, TRF_ID_CCOM_ON_SEND, TRF_ID_MCOM_ON_SEND, TRF_ID_CLCOM_ON_SEND,
                               TRF_ID_TCOM_ON_RCV, MONEY, CUR_ON_SEND, FCOM_ON_SEND, MCOM_ON_SEND, TRANSACT_ID,
                               CALC_COMISS_OUTER_SYSTEM, CUR_DM_ID_SEND, CUR_RATES_ID_SEND, CUR_RATES_KN_COEF_SEND,
                               CUR_DM_ID_RECEIVE, CUR_RATES_ID_RECEIVE, CUR_RATES_KN_COEF_RECEIVE, PO_TYPE,
                               CUR_CLIENT_CATEG_PAYER, CUR_CLIENT_CATEG_PAYEE, CONSUMER_CREDIT_LAW,
                               AGENT_TRF_PLAN_ON_SEND, BASE_TARIFF_ON_SEND, IND_TARIFF_ON_SEND,
                               AGENT_TRF_PLAN_ON_RECEIVE, BASE_TARIFF_ON_RECEIVE, IND_TARIFF_ON_RECEIVE, PREP_FEE_UIN,
                               CUR_RATES_FIXED_ID_SEND, CUR_RATES_FIXED_ID_RECEIVE, PRODUCT_ID, CREDIT_BANK_ID,
                               ARM_BANK_PAYEE, PAYEE_COM, TRF_ID_PAYEECOM_ON_RCV, AGENT_TRF_PLAN_ON_RCV_PRECALC,
                               BASE_TARIFF_ON_RCV_PRECALC, IND_TARIFF_ON_RCV_PRECALC, UUID_ON_SEND, UUID_ON_RECEIVE,
                               EXT_TARIFF_ON_RCV_PRECALC, DELAYED_RCV_IS_CONFIRMED)
values (1249823332, 120, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, 515382098,
        515382104, 490612911, 490612908, null, null, 20000, '810', 80, 0, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null);

insert into qp$_doc_pay (DOC_NUM, UIN, DB_ORG, CR_ORG, DTYPE, W_TIME, STATUS, CUR, MONEY, ADD_INFO, IFMTYPE,
                         FUNDS_RESERVED, NEXT_DATE, DB_DOC_DATE, CR_DOC_DATE, TX_ID, RNKO_REE_NUM, RNKO_DOC_NUM,
                         REE_NUM, DB_BIN, DST_CUR, DST_MONEY, EXCHANGE_RATE, DOC_SCENARIO_ID)
values (1221946716, 1249823332, 'ST00443', 'A000000', 'P', to_date('10-07-2019 15:48:56', 'dd-mm-yyyy hh24:mi:ss'), 'S',
        '810', 20000,
        '|CT6:INBNPR|KN2:61|DT10:10/07/2019|CS3:RUS|CR3:OST|RS3:RUS|ID15:000001249823332|RE9:494320412|DQ10:10.07.2019|EE',
        'QC', 1, to_date('10-07-2019 15:48:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, 710224280, null, null, null, null,
        null, null, null, 1014);

insert into qp$_doc_pay (DOC_NUM, UIN, DB_ORG, CR_ORG, DTYPE, W_TIME, STATUS, CUR, MONEY, ADD_INFO, IFMTYPE,
                         FUNDS_RESERVED, NEXT_DATE, DB_DOC_DATE, CR_DOC_DATE, TX_ID, RNKO_REE_NUM, RNKO_DOC_NUM,
                         REE_NUM, DB_BIN, DST_CUR, DST_MONEY, EXCHANGE_RATE, DOC_SCENARIO_ID)
values (1221946717, 1249823332, 'ST00443', 'AG00000', 'C', to_date('10-07-2019 15:48:56', 'dd-mm-yyyy hh24:mi:ss'), 'S',
        '810', 120,
        '|CT6:INDPKU|KN2:44|DT10:10/07/2019|CS3:RUS|CR3:OST|RS3:RUS|ID15:000001249823332|RE9:494320412|DQ10:10.07.2019|EE',
        'Q', 1, to_date('10-07-2019 15:48:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, 710224280, null, null, null, null,
        null, null, null, 1014);

insert into Qp$_Tx_Uin (TX_ID, UIN, OPERATION, WDATE, EVENT, PROCESS_TYPE)
values (710224280, 1249823332, 1, to_date('10-07-2019 15:48:51', 'dd-mm-yyyy hh24:mi:ss'), 1, null);

insert into qp$_person_registry (PERSON, PNAME, PVALUE)
values (545613102, 'REGCOUNTRYID', 'RUS');

insert into qp$_person_registry (PERSON, PNAME, PVALUE)
values (545613102, 'REGSTREET', 'ПРОСПЕКТ МИРА');

insert into qp$_person_registry (PERSON, PNAME, PVALUE)
values (545613102, 'RESIDENCY_COUNTRY', 'RUS');

commit;
to_date('10-07-2019 15:55:42', 'dd-mm-yyyy hh24:mi:ss')
end;