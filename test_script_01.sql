
   VALUES ('810', 60, '840', 1, sysdate - interval '1' day, to_date('13-07-2018 14:46:50', 'dd-mm-yyyy hh24:mi:ss'),  to_date('13-12-2019 14:46:50', 'dd-mm-yyyy hh24:mi:ss')
            to_date('01-01-4000', 'dd-mm-yyyy'), NULL, 'K0');  to_date('01-01-3000', 'dd-mm-yyyy')
            to_date('13-07-2018 14:46:50', 'dd-mm-yyyy hh24:mi:ss')
0000', 'Q', to_date('11-10-2019', 'dd-mm-yyyy'), 50000, '810', 'S

insert into qp$_transfer (UIN, DTIME, MONEY, CUR, STATUS, NOT_AFTER, AGENT_PAYER, PAYER, AGENT_PAYEE, PAYEE, REAL_PAYEE, CCOM, TCOM, FCOM, COMCUR, MESSAGE, DB_PAYDOCID, DB_PAYDOCDATE, CR_PAYDOCID, CR_PAYDOCDATE, OPERATOR_ID, WTIME, RTIME, PTYPE, MCOM, CONTROL_QUESTION, CONTROL_ANSWER, LIMITS_PAYER, LIMITS_PAYEE, BANK_PAYER, DIRECTION_PAYEE, COUNTRY_ISO, NTIME, BANK_PAYEE, CITYID_PAYEE, PAYER_RESIDENT, PAYEE_RESIDENT, EXCHANGE_RATE, DST_CUR, DST_COMCUR, DST_AMOUNT, DST_FCOM, DST_CCOM, DST_MCOM, DST_TCOM, NOPERATOR_ID, ROPERATOR_ID, PAYER_CARD, OID, OUTER_SYSTEM, STAN, CASHIN_ID, PAYEE_CARD, TR_OPTION, SOPERATOR_ID, FCONTROL0, ACTION_ID, REF_NUM)
values (1250391822, to_date('11-10-2019 19:50:30', 'dd-mm-yyyy hh24:mi:ss'), 10000, '810', 4, to_date('10-03-2021 19:50:30', 'dd-mm-yyyy hh24:mi:ss'), 'CRD2CSH', 546401795, null, 546401796, null, 0, 5000, 0, null, null, '1', to_date('11-10-2019 19:50:30', 'dd-mm-yyyy hh24:mi:ss'), null, null, 26514, to_date('11-10-2019 19:50:30', 'dd-mm-yyyy hh24:mi:ss'), null, 'N', 0, null, null, null, null, 'CRD2CSH', 'QP$_RUS', 'RUS', to_date('11-10-2019 19:50:30', 'dd-mm-yyyy hh24:mi:ss'), null, 59, '1', null, null, null, null, null, null, null, null, null, 26514, null, null, null, null, null, null, null, null, 26514, 0, null, 463266981);

insert into qp$_transfer_DATA (UIN, TCOM_ON_SEND, CCOM_ON_SEND, EXCHANGE_RATE_ON_SEND, DST_CUR_ON_SEND, DST_COMCUR_ON_SEND, DST_AMOUNT, DST_FCOM_ON_SEND, DST_TCOM_ON_SEND, DST_CCOM_ON_SEND, DST_MCOM_ON_SEND, CLCOM, DST_CLCOM, OKCCOM, OKC_OUTCOM, OKC_TCOM, TRF_ID_FCOM_ON_SEND, TRF_ID_TCOM_ON_SEND, TRF_ID_CCOM_ON_SEND, TRF_ID_MCOM_ON_SEND, TRF_ID_CLCOM_ON_SEND, TRF_ID_TCOM_ON_RCV, MONEY, CUR_ON_SEND, FCOM_ON_SEND, MCOM_ON_SEND, TRANSACT_ID, CALC_COMISS_OUTER_SYSTEM, CUR_DM_ID_SEND, CUR_RATES_ID_SEND, CUR_RATES_KN_COEF_SEND, CUR_DM_ID_RECEIVE, CUR_RATES_ID_RECEIVE, CUR_RATES_KN_COEF_RECEIVE, PO_TYPE, CUR_CLIENT_CATEG_PAYER, CUR_CLIENT_CATEG_PAYEE, CONSUMER_CREDIT_LAW, AGENT_TRF_PLAN_ON_SEND, BASE_TARIFF_ON_SEND, IND_TARIFF_ON_SEND, AGENT_TRF_PLAN_ON_RECEIVE, BASE_TARIFF_ON_RECEIVE, IND_TARIFF_ON_RECEIVE, PREP_FEE_UIN, CUR_RATES_FIXED_ID_SEND, CUR_RATES_FIXED_ID_RECEIVE, PRODUCT_ID, CREDIT_BANK_ID, PAYEE_COM, TRF_ID_PAYEECOM_ON_RCV, AGENT_TRF_PLAN_ON_RCV_PRECALC, BASE_TARIFF_ON_RCV_PRECALC, IND_TARIFF_ON_RCV_PRECALC, UUID_ON_SEND, UUID_ON_RECEIVE, EXT_TARIFF_ON_RCV_PRECALC, DELAYED_RCV_IS_CONFIRMED, ARM_SEND_SCHEME, PAYMENT_PURPOSE_CODE)
values (1250391822, 5000, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, 818831823, 818831825, 69535846, null, null, null, 10000, '810', 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into qp$_doc_pay (DOC_NUM, UIN, DB_ORG, CR_ORG, DTYPE, W_TIME, STATUS, CUR, MONEY, ADD_INFO, IFMTYPE, FUNDS_RESERVED, NEXT_DATE, DB_DOC_DATE, CR_DOC_DATE, TX_ID, RNKO_REE_NUM, RNKO_DOC_NUM, REE_NUM, DB_BIN, DST_CUR, DST_MONEY, EXCHANGE_RATE, DOC_SCENARIO_ID)
values (1222930034, 1250391822, 'CRD2CSH', 'A000000', 'P', to_date('11-10-2019 19:50:30', 'dd-mm-yyyy hh24:mi:ss'), 'T', '810', 10000, '|CT6:INCCPR|KN2:70|DT10:11/10/2019|CS3:RUS|CR3:RUS|RS3:RUS|PO3:VIS|WS7:CRD2CSH|EE', 'QC', 0, to_date('11-10-2019 19:50:30', 'dd-mm-yyyy hh24:mi:ss'), null, null, 710883613, null, null, 1222923837, null, null, null, null, 1022);

insert into qp$_doc_pay (DOC_NUM, UIN, DB_ORG, CR_ORG, DTYPE, W_TIME, STATUS, CUR, MONEY, ADD_INFO, IFMTYPE, FUNDS_RESERVED, NEXT_DATE, DB_DOC_DATE, CR_DOC_DATE, TX_ID, RNKO_REE_NUM, RNKO_DOC_NUM, REE_NUM, DB_BIN, DST_CUR, DST_MONEY, EXCHANGE_RATE, DOC_SCENARIO_ID)
values (1222930035, 1250391822, 'CRD2CSH', 'AG00000', 'C', to_date('11-10-2019 19:50:30', 'dd-mm-yyyy hh24:mi:ss'), 'T', '810', 5000, '|CT6:INCCKN|KN2:45|DT10:11/10/2019|CS3:RUS|CR3:RUS|RS3:RUS|PO3:VIS|EE', 'Q', 0, to_date('11-10-2019 19:50:30', 'dd-mm-yyyy hh24:mi:ss'), null, null, 710883613, null, null, 1222923839, null, null, null, null, 1022);

insert into qp$_ree_pay (REE_NUM, DB_ORG, CR_ORG, DTYPE, W_TIME, MONEY, CUR, STATUS, ASSIGN, DB_DOC_DATE, CR_DOC_DATE, DST_MONEY, DST_CUR, EXCHANGE_RATE, ADD_INFO, DB_BIN, DB_DOC_NUM, CR_DOC_NUM, FUNDS_RESERVED, END_REE_TIME, TX_CNT, BEGIN_REE_TIME, SUB_REE_NUM, LIMIT_ID, CATEGORY, DR)
values (1222923837, 'CRD2CSH', 'A000000', 'QC', to_date('11-10-2019 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 814800, '810', 'SENDED2IFM', null, null, null, null, null, null, '|CT6:INCCPR|KN2:70|RS3:RUS|PO3:VIS|WS7:CRD2CSH', null, null, null, null, to_date('11-10-2019 23:30:00', 'dd-mm-yyyy hh24:mi:ss'), 0, to_date('11-10-2019 13:58:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, to_date('11-10-2019 00:00:00', 'dd-mm-yyyy hh24:mi:ss'));

insert into qp$_ree_pay (REE_NUM, DB_ORG, CR_ORG, DTYPE, W_TIME, MONEY, CUR, STATUS, ASSIGN, DB_DOC_DATE, CR_DOC_DATE, DST_MONEY, DST_CUR, EXCHANGE_RATE, ADD_INFO, DB_BIN, DB_DOC_NUM, CR_DOC_NUM, FUNDS_RESERVED, END_REE_TIME, TX_CNT, BEGIN_REE_TIME, SUB_REE_NUM, LIMIT_ID, CATEGORY, DR)
values (1222923839, 'CRD2CSH', 'AG00000', 'Q', to_date('11-10-2019 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 50000, '810', 'SENDED2IFM', null, null, null, null, null, null, '|CT6:INCCKN|KN2:45|PO3:VIS', null, null, null, null, to_date('12-10-2019 02:00:00', 'dd-mm-yyyy hh24:mi:ss'), 0, to_date('11-10-2019 13:58:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, to_date('11-10-2019 00:00:00', 'dd-mm-yyyy hh24:mi:ss'));

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('MONTHLY_BANK_PERSON_FULL_LIMIT_SEND_PAYEE', 'ЕСЕНИН АЛЕКСАНДР ИГОРЕВИЧ_59', to_date('11-10-2019 19:50:29', 'dd-mm-yyyy hh24:mi:ss'), 1250391822, 0, 10000);

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('QPAY_ONLINE_SEND_PAYEE_LIMITS', 'ЕСЕНИН АЛЕКСАНДР ИГОРЕВИЧ_+73213216644', to_date('11-10-2019 19:50:28', 'dd-mm-yyyy hh24:mi:ss'), 1250391822, 0, 10000);

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('QPAY_ONLINE_SEND_PAYER_LIMITS', '73213216655', to_date('11-10-2019 19:50:28', 'dd-mm-yyyy hh24:mi:ss'), 1250391822, 0, 10000);

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('TRANSFER_RUS_30D_PAYEE_ON_SEND_CNT_LMT', 'ЕСЕНИН АЛЕКСАНДР ИГОРЕВИЧ_73213216644||ЕСЕНИН АЛЕКСАНДР ИГОРЕВИЧ_59||ЕСЕНИН АЛЕКСАНДР ИГОРЕВИЧ_73213216655', to_date('11-10-2019 19:50:29', 'dd-mm-yyyy hh24:mi:ss'), 1250391822, 0, 1);

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('MONTH_SEND_LEG_LIMIT', 'CRD2CSH|+73213216655;  ', to_date('11-10-2019 19:50:31', 'dd-mm-yyyy hh24:mi:ss'), 1250391822, 0, 10000);

--добавляем привязку карты этого пользователя, но с другим ФИО
insert into qp$_person (ID, EMAIL, FULLNAME,  PHONE, COUNTRYISO, PAPER_CTYPE, PAPER_CNUMBER, PAPER_SERIALNUMBER, PAPER_ISSUER, PAPER_ISSUEDATE, PAPER_ISSUECITY, REGISTRATION, PAPER_ISSUERCODE, AGENT_PAYER, PERSON_TYPE, PAPER_EXPIRE_DATE, LASTNAME_LENGTH, FIRSTNAME_LENGTH, REGADDRESS, REGCOUNTRY, REGCITY, BIRTHDATE, CARD, REGADDRESS_ID, REGADDRESSLINE1_LENGTH, POSTALCODE, GENDER_ID)
values (546429872, null, 'Перевод по карте **1810', '+73213216655', 'XXX', null, null, null, null, null, null, null, null, 'CRD2CSH', 0, null, null, null, null, null, null, null, null, null, null, null, null);

insert into qp$_person (ID, EMAIL, FULLNAME, PAPER#, PHONE, COUNTRYISO, PAPER_CTYPE, PAPER_CNUMBER, PAPER_SERIALNUMBER, PAPER_ISSUER, PAPER_ISSUEDATE, PAPER_ISSUECITY, REGISTRATION, PAPER_ISSUERCODE, AGENT_PAYER, PERSON_TYPE, PAPER_EXPIRE_DATE, LASTNAME_LENGTH, FIRSTNAME_LENGTH, REGADDRESS, REGCOUNTRY, REGCITY, BIRTHDATE, CARD, REGADDRESS_ID, REGADDRESSLINE1_LENGTH, POSTALCODE, GENDER_ID)
values (546429874, null, 'Иванов Михаил Степанович', null, '+73213216644', 'XXX', null, null, null, null, null, null, null, null, null, 8, null, 6, 6, null, null, null, null, null, null, null, null, null);

insert into qp$_person (ID, EMAIL, FULLNAME, PAPER#, PHONE, COUNTRYISO, PAPER_CTYPE, PAPER_CNUMBER, PAPER_SERIALNUMBER, PAPER_ISSUER, PAPER_ISSUEDATE, PAPER_ISSUECITY, REGISTRATION, PAPER_ISSUERCODE, AGENT_PAYER, PERSON_TYPE, PAPER_EXPIRE_DATE, LASTNAME_LENGTH, FIRSTNAME_LENGTH, REGADDRESS, REGCOUNTRY, REGCITY, BIRTHDATE, CARD, REGADDRESS_ID, REGADDRESSLINE1_LENGTH, POSTALCODE, GENDER_ID)
values (546429904, null, 'Иванов Михаил Степанович', null, '73213216644', 'XXX', null, null, null, null, null, null, null, null, null, 0, null, 6, 6, null, null, null, null, null, null, null, null, null);

insert into qp$_transfer (UIN, DTIME, MONEY, CUR, STATUS, NOT_AFTER, AGENT_PAYER, PAYER, AGENT_PAYEE, PAYEE, REAL_PAYEE, CCOM, TCOM, FCOM, COMCUR, MESSAGE, DB_PAYDOCID, DB_PAYDOCDATE, CR_PAYDOCID, CR_PAYDOCDATE, OPERATOR_ID, WTIME, RTIME, PTYPE, MCOM, CONTROL_QUESTION, CONTROL_ANSWER, LIMITS_PAYER, LIMITS_PAYEE, BANK_PAYER, DIRECTION_PAYEE, COUNTRY_ISO, NTIME, BANK_PAYEE, CITYID_PAYEE, PAYER_RESIDENT, PAYEE_RESIDENT, EXCHANGE_RATE, DST_CUR, DST_COMCUR, DST_AMOUNT, DST_FCOM, DST_CCOM, DST_MCOM, DST_TCOM, NOPERATOR_ID, ROPERATOR_ID, PAYER_CARD, OID, OUTER_SYSTEM, STAN, CASHIN_ID, PAYEE_CARD, TR_OPTION, SOPERATOR_ID, FCONTROL0, ACTION_ID, REF_NUM) 
values (1250412006, to_date('14-10-2019 19:17:55', 'dd-mm-yyyy hh24:mi:ss'), 10000, '810', 7, to_date('1310-2019 19:17:55', 'dd-mm-yyyy hh24:mi:ss'), 'CRD2CSH', 546429872, 'RUS2CRD', 546429874, 546429904, 5000, 0, 0, null, null, '1', to_date('14-10-2019 19:17:55', 'dd-mm-yyyy hh24:mi:ss'), null, null, 381, to_date('14-10-2019 19:20:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-10-2019 19:20:05', 'dd-mm-yyyy hh24:mi:ss'), 'N', 0, null, null, null, null, 'CRD2CSH', 'QP$_RUS', 'RUS', to_date('14-10-2019 19:17:55', 'dd-mm-yyyy hh24:mi:ss'), 'RUS2CRD', 59, '1', '1', null, null, null, null, null, null, null, null, 26514, 381, null, null, null, null, null, null, 33554432, 26514, 0, null, 258148893);

insert into qp$_transfer_data (UIN, TCOM_ON_SEND, CCOM_ON_SEND, EXCHANGE_RATE_ON_SEND, DST_CUR_ON_SEND, DST_COMCUR_ON_SEND, DST_AMOUNT, DST_FCOM_ON_SEND, DST_TCOM_ON_SEND, DST_CCOM_ON_SEND, DST_MCOM_ON_SEND, CLCOM, DST_CLCOM, OKCCOM, OKC_OUTCOM, OKC_TCOM, TRF_ID_FCOM_ON_SEND, TRF_ID_TCOM_ON_SEND, TRF_ID_CCOM_ON_SEND, TRF_ID_MCOM_ON_SEND, TRF_ID_CLCOM_ON_SEND, TRF_ID_TCOM_ON_RCV, MONEY, CUR_ON_SEND, FCOM_ON_SEND, MCOM_ON_SEND, TRANSACT_ID, CALC_COMISS_OUTER_SYSTEM, CUR_DM_ID_SEND, CUR_RATES_ID_SEND, CUR_RATES_KN_COEF_SEND, CUR_DM_ID_RECEIVE, CUR_RATES_ID_RECEIVE, CUR_RATES_KN_COEF_RECEIVE, PO_TYPE, CUR_CLIENT_CATEG_PAYER, CUR_CLIENT_CATEG_PAYEE, CONSUMER_CREDIT_LAW, AGENT_TRF_PLAN_ON_SEND, BASE_TARIFF_ON_SEND, IND_TARIFF_ON_SEND, AGENT_TRF_PLAN_ON_RECEIVE, BASE_TARIFF_ON_RECEIVE, IND_TARIFF_ON_RECEIVE, PREP_FEE_UIN, CUR_RATES_FIXED_ID_SEND, CUR_RATES_FIXED_ID_RECEIVE, PRODUCT_ID, CREDIT_BANK_ID, PAYEE_COM, TRF_ID_PAYEECOM_ON_RCV, AGENT_TRF_PLAN_ON_RCV_PRECALC, BASE_TARIFF_ON_RCV_PRECALC, IND_TARIFF_ON_RCV_PRECALC, UUID_ON_SEND, UUID_ON_RECEIVE, EXT_TARIFF_ON_RCV_PRECALC, DELAYED_RCV_IS_CONFIRMED, ARM_SEND_SCHEME, PAYMENT_PURPOSE_CODE)
values (1250412006, 5000, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, 818831823, 818831825, 69535846, null, null, 621, 10000, '810', 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into qp$_doc_pay (DOC_NUM, UIN, DB_ORG, CR_ORG, DTYPE, W_TIME, STATUS, CUR, MONEY, ADD_INFO, IFMTYPE, FUNDS_RESERVED, NEXT_DATE, DB_DOC_DATE, CR_DOC_DATE, TX_ID, RNKO_REE_NUM, RNKO_DOC_NUM, REE_NUM, DB_BIN, DST_CUR, DST_MONEY, EXCHANGE_RATE, DOC_SCENARIO_ID)
values (1222966284, 1250412006, 'A000000', 'ZKP2CRD', 'P', to_date('14-10-2019 19:20:05', 'dd-mm-yyyy hh24:mi:ss'), 'T', '810', 10000, '|CT6:OUCDPR|KN3:890|CS3:RUS|CR3:RUS|RS3:RUS|RR3:RUS|PR7:CRD2CSH|PO3:VIS|EE', 'QC', 0, to_date('14-10-2019 19:20:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, 1222966285, 'CRD2CSH', null, null, null, 2015);

insert into qp$_doc_pay (DOC_NUM, UIN, DB_ORG, CR_ORG, DTYPE, W_TIME, STATUS, CUR, MONEY, ADD_INFO, IFMTYPE, FUNDS_RESERVED, NEXT_DATE, DB_DOC_DATE, CR_DOC_DATE, TX_ID, RNKO_REE_NUM, RNKO_DOC_NUM, REE_NUM, DB_BIN, DST_CUR, DST_MONEY, EXCHANGE_RATE, DOC_SCENARIO_ID)
values (1222966226, 1250412006, 'CRD2CSH', 'A000000', 'P', to_date('14-10-2019 19:17:55', 'dd-mm-yyyy hh24:mi:ss'), 'T', '810', 10000, '|CT6:INCCPR|KN2:70|DT10:14/10/2019|CS3:RUS|CR3:RUS|RS3:RUS|PO3:VIS|WS7:CRD2CSH|EE', 'QC', 0, to_date('14-10-2019 19:17:55', 'dd-mm-yyyy hh24:mi:ss'), null, null, 710907228, null, null, 1222960533, null, null, null, null, 1022);

insert into qp$_doc_pay (DOC_NUM, UIN, DB_ORG, CR_ORG, DTYPE, W_TIME, STATUS, CUR, MONEY, ADD_INFO, IFMTYPE, FUNDS_RESERVED, NEXT_DATE, DB_DOC_DATE, CR_DOC_DATE, TX_ID, RNKO_REE_NUM, RNKO_DOC_NUM, REE_NUM, DB_BIN, DST_CUR, DST_MONEY, EXCHANGE_RATE, DOC_SCENARIO_ID)
values (1222966227, 1250412006, 'CRD2CSH', 'AG00000', 'C', to_date('14-10-2019 19:17:55', 'dd-mm-yyyy hh24:mi:ss'), 'T', '810', 5000, '|CT6:INCCKN|KN2:45|DT10:14/10/2019|CS3:RUS|CR3:RUS|RS3:RUS|PO3:VIS|EE', 'Q', 0, to_date('14-10-2019 19:17:55', 'dd-mm-yyyy hh24:mi:ss'), null, null, 710907228, null, null, 1222958366, null, null, null, null, 1022);

insert into qp$_ree_pay (REE_NUM, DB_ORG, CR_ORG, DTYPE, W_TIME, MONEY, CUR, STATUS, ASSIGN, DB_DOC_DATE, CR_DOC_DATE, DST_MONEY, DST_CUR, EXCHANGE_RATE, ADD_INFO, DB_BIN, DB_DOC_NUM, CR_DOC_NUM, FUNDS_RESERVED, END_REE_TIME, TX_CNT, BEGIN_REE_TIME, SUB_REE_NUM, LIMIT_ID, CATEGORY, DR)
values (1222966285, 'A000000', 'ZKP2CRD', 'QC', to_date('14-10-2019 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 20000, '810', 'SENDED2IFM', null, null, null, null, null, null, '|CT6:OUCDPR|KN3:890|CS3:RUS|CR3:RUS|RS3:RUS|PO3:VIS|PR7:CRD2CSH', null, null, null, null, to_date('15-10-2019 03:30:00', 'dd-mm-yyyy hh24:mi:ss'), 0, to_date('14-10-2019 19:20:06', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, to_date('2019-10-14 00:00:00', 'dd-mm-yyyy hh24:mi:ss'));

insert into qp$_ree_pay (REE_NUM, DB_ORG, CR_ORG, DTYPE, W_TIME, MONEY, CUR, STATUS, ASSIGN, DB_DOC_DATE, CR_DOC_DATE, DST_MONEY, DST_CUR, EXCHANGE_RATE, ADD_INFO, DB_BIN, DB_DOC_NUM, CR_DOC_NUM, FUNDS_RESERVED, END_REE_TIME, TX_CNT, BEGIN_REE_TIME, SUB_REE_NUM, LIMIT_ID, CATEGORY, DR)
values (1222960533, 'CRD2CSH', 'A000000', 'QC', to_date('14-10-2019 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 385000, '810', 'SENDED2IFM', null, null, null, null, null, null, '|CT6:INCCPR|KN2:70|RS3:RUS|PO3:VIS|WS7:CRD2CSH', null, null, null, null, to_date('14-10-2019 23:30:00', 'dd-mm-yyyy hh24:mi:ss'), 0, to_date('14-10-2019 15:16:35', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, to_date('2019-10-14 00:00:00', 'dd-mm-yyyy hh24:mi:ss'));

insert into qp$_ree_pay (REE_NUM, DB_ORG, CR_ORG, DTYPE, W_TIME, MONEY, CUR, STATUS, ASSIGN, DB_DOC_DATE, CR_DOC_DATE, DST_MONEY, DST_CUR, EXCHANGE_RATE, ADD_INFO, DB_BIN, DB_DOC_NUM, CR_DOC_NUM, FUNDS_RESERVED, END_REE_TIME, TX_CNT, BEGIN_REE_TIME, SUB_REE_NUM, LIMIT_ID, CATEGORY, DR)
values (1222958366, 'CRD2CSH', 'AG00000', 'Q', to_date('14-10-2019 00:00:00', 'dd-mm-yyyy hh24:mi:ss'), 85000, '810', 'SENDED2IFM', null, null, null, null, null, null, '|CT6:INCCKN|KN2:45|PO3:VIS', null, null, null, null, to_date('15-10-2019 02:00:00', 'dd-mm-yyyy hh24:mi:ss'), 0, to_date('14-10-2019 10:23:23', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, to_date('14-10-2019 00:00:00', 'dd-mm-yyyy hh24:mi:ss'));

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('PAYEE_FROM_X_DIFFPAYER', 'ИВАНОВ МИХАИЛ СТЕПАНОВИЧ_RUS|73213216655_RUS', to_date('14-10-2019 19:17:52', 'dd-mm-yyyy hh24:mi:ss'), 1250412006, 0, 1);

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('MONTHLY_BANK_PERSON_FULL_LIMIT_SEND_PAYEE', 'ИВАНОВ МИХАИЛ СТЕПАНОВИЧ_59', to_date('14-10-2019 19:17:53', 'dd-mm-yyyy hh24:mi:ss'), 1250412006, 0, 10000);

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('EXCEED_DAY_WARN_SUMM', '73213216655', to_date('14-10-2019 19:17:53', 'dd-mm-yyyy hh24:mi:ss'), 1250412006, 0, 10000);

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('QPAY_ONLINE_SEND_PAYEE_LIMITS', 'ИВАНОВ МИХАИЛ СТЕПАНОВИЧ_+73213216644', to_date('14-10-2019 19:17:52', 'dd-mm-yyyy hh24:mi:ss'), 1250412006, 0, 10000);

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('QPAY_ONLINE_SEND_PAYER_LIMITS', '73213216655', to_date('14-10-2019 19:17:52', 'dd-mm-yyyy hh24:mi:ss'), 1250412006, 0, 10000);

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('ONL_RCV_TO_CARD_SUM_$D', '73213216644_RUS_C6DE57718359FE73C7D62DAA41F08249A346E1BDD884721DA132A69103402E71', to_date('14-10-2019 19:20:02', 'dd-mm-yyyy hh24:mi:ss'), 1250412006, 0, 1);

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('ONL_RCV_TO_CARD_CNT_$D', '73213216644_RUS_C6DE57718359FE73C7D62DAA41F08249A346E1BDD884721DA132A69103402E71', to_date('14-10-2019 19:20:02', 'dd-mm-yyyy hh24:mi:ss'), 1250412006, 0, 1);

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('TRANSFER_RUS_30D_PAYEE_ON_SEND_CNT_LMT', 'ИВАНОВ МИХАИЛ СТЕПАНОВИЧ_73213216644||ИВАНОВ МИХАИЛ СТЕПАНОВИЧ_59||ИВАНОВ МИХАИЛ СТЕПАНОВИЧ_73213216655', to_date('14-10-2019 19:17:54', 'dd-mm-yyyy hh24:mi:ss'), 1250412006, 0, 1);

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('MONTH_SEND_LEG_LIMIT', 'CRD2CSH|+73213216655;  ', to_date('14-10-2019 19:17:56', 'dd-mm-yyyy hh24:mi:ss'), 1250412006, 0, 10000);

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('MONTH_RECEIVE_LEG_LIMIT', 'RUS2CRD|Иванов Михаил Степанович;  ', to_date('14-10-2019 19:20:05', 'dd-mm-yyyy hh24:mi:ss'), 1250412006, 0, 1);

insert into qp$_hash2transfer (UIN, CARD_HASH, DTIME, CARD_HASH_TYPE)
values (1250412006, 'C6DE57718359FE73C7D62DAA41F08249A346E1BDD884721DA132A69103402E71', to_date('14-10-2019 19:20:03', 'dd-mm-yyyy hh24:mi:ss'), 'CARD_ID_HASH_RCV');

insert into qp$_hash2transfer (UIN, CARD_HASH, DTIME, CARD_HASH_TYPE)
values (1250412006, '459535FAA370A3B5F8B87203B089623C7AEB9325ABF241EC8A685B9C325047A3', to_date('14-10-2019 19:17:53', 'dd-mm-yyyy hh24:mi:ss'), 'CARD_ID_HASH_SEND');

--добавляем привязку карты другого пользователя с другим ФИО
insert into qp$_person (ID, EMAIL, FULLNAME, PAPER#, PHONE, COUNTRYISO, PAPER_CTYPE, PAPER_CNUMBER, PAPER_SERIALNUMBER, PAPER_ISSUER, PAPER_ISSUEDATE, PAPER_ISSUECITY, REGISTRATION, PAPER_ISSUERCODE, AGENT_PAYER, PERSON_TYPE, PAPER_EXPIRE_DATE, LASTNAME_LENGTH, FIRSTNAME_LENGTH, REGADDRESS, REGCOUNTRY, REGCITY, BIRTHDATE, CARD, REGADDRESS_ID, REGADDRESSLINE1_LENGTH, POSTALCODE, GENDER_ID)
values (546429994, null, 'Перевод по карте **1810', null, '+73213216655', 'XXX', null, null, null, null, null, null, null, null, 'CRD2CSH', 0, null, null, null, null, null, null, null, null, null, null, null, null);

insert into qp$_person (ID, EMAIL, FULLNAME, PAPER#, PHONE, COUNTRYISO, PAPER_CTYPE, PAPER_CNUMBER, PAPER_SERIALNUMBER, PAPER_ISSUER, PAPER_ISSUEDATE, PAPER_ISSUECITY, REGISTRATION, PAPER_ISSUERCODE, AGENT_PAYER, PERSON_TYPE, PAPER_EXPIRE_DATE, LASTNAME_LENGTH, FIRSTNAME_LENGTH, REGADDRESS, REGCOUNTRY, REGCITY, BIRTHDATE, CARD, REGADDRESS_ID, REGADDRESSLINE1_LENGTH, POSTALCODE, GENDER_ID)
values (546429995, null, 'Иванов Михаил Степанович', null, '+73213216633', 'XXX', null, null, null, null, null, null, null, null, null, 8, null, 6, 6, null, null, null, null, null, null, null, null, null);

insert into qp$_person (ID, EMAIL, FULLNAME, PAPER#, PHONE, COUNTRYISO, PAPER_CTYPE, PAPER_CNUMBER, PAPER_SERIALNUMBER, PAPER_ISSUER, PAPER_ISSUEDATE, PAPER_ISSUECITY, REGISTRATION, PAPER_ISSUERCODE, AGENT_PAYER, PERSON_TYPE, PAPER_EXPIRE_DATE, LASTNAME_LENGTH, FIRSTNAME_LENGTH, REGADDRESS, REGCOUNTRY, REGCITY, BIRTHDATE, CARD, REGADDRESS_ID, REGADDRESSLINE1_LENGTH, POSTALCODE, GENDER_ID)
values (546430019, null, 'Иванов Михаил Степанович', null, '73213216633', 'XXX', null, null, null, null, null, null, null, null, null, 0, null, 6, 6, null, null, null, null, null, null, null, null, null);

insert into qp$_transfer (UIN, DTIME, MONEY, CUR, STATUS, NOT_AFTER, AGENT_PAYER, PAYER, AGENT_PAYEE, PAYEE, REAL_PAYEE, CCOM, TCOM, FCOM, COMCUR, MESSAGE, DB_PAYDOCID, DB_PAYDOCDATE, CR_PAYDOCID, CR_PAYDOCDATE, OPERATOR_ID, WTIME, RTIME, PTYPE, MCOM, CONTROL_QUESTION, CONTROL_ANSWER, LIMITS_PAYER, LIMITS_PAYEE, BANK_PAYER, DIRECTION_PAYEE, COUNTRY_ISO, NTIME, BANK_PAYEE, CITYID_PAYEE, PAYER_RESIDENT, PAYEE_RESIDENT, EXCHANGE_RATE, DST_CUR, DST_COMCUR, DST_AMOUNT, DST_FCOM, DST_CCOM, DST_MCOM, DST_TCOM, NOPERATOR_ID, ROPERATOR_ID, PAYER_CARD, OID, OUTER_SYSTEM, STAN, CASHIN_ID, PAYEE_CARD, TR_OPTION, SOPERATOR_ID, FCONTROL0, ACTION_ID, REF_NUM)
values (1250412087, to_date('14-10-2019 19:25:08', 'dd-mm-yyyy hh24:mi:ss'), 10000, '810', 7, to_date('13-03-2020 19:25:08', 'dd-mm-yyyy hh24:mi:ss'), 'CRD2CSH', 546429994, 'RUS2CRD', 546429995, 546430019, 5000, 0, 0, null, null, '1', to_date('14-10-2019 19:25:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 381, to_date('14-10-2019 19:26:16', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-10-2019 19:26:16', 'dd-mm-yyyy hh24:mi:ss'), 'N', 0, null, null, null, null, 'CRD2CSH', 'QP$_RUS', 'RUS', to_date('14-10-2019 19:25:08', 'dd-mm-yyyy hh24:mi:ss'), 'RUS2CRD', 59, '1', '1', null, null, null, null, null, null, null, null, 26514, 381, null, null, null, null, null, null, 33554432, 26514, 0, null, 128102443);

insert into qp$_transfer_data (UIN, TCOM_ON_SEND, CCOM_ON_SEND, EXCHANGE_RATE_ON_SEND, DST_CUR_ON_SEND, DST_COMCUR_ON_SEND, DST_AMOUNT, DST_FCOM_ON_SEND, DST_TCOM_ON_SEND, DST_CCOM_ON_SEND, DST_MCOM_ON_SEND, CLCOM, DST_CLCOM, OKCCOM, OKC_OUTCOM, OKC_TCOM, TRF_ID_FCOM_ON_SEND, TRF_ID_TCOM_ON_SEND, TRF_ID_CCOM_ON_SEND, TRF_ID_MCOM_ON_SEND, TRF_ID_CLCOM_ON_SEND, TRF_ID_TCOM_ON_RCV, MONEY, CUR_ON_SEND, FCOM_ON_SEND, MCOM_ON_SEND, TRANSACT_ID, CALC_COMISS_OUTER_SYSTEM, CUR_DM_ID_SEND, CUR_RATES_ID_SEND, CUR_RATES_KN_COEF_SEND, CUR_DM_ID_RECEIVE, CUR_RATES_ID_RECEIVE, CUR_RATES_KN_COEF_RECEIVE, PO_TYPE, CUR_CLIENT_CATEG_PAYER, CUR_CLIENT_CATEG_PAYEE, CONSUMER_CREDIT_LAW, AGENT_TRF_PLAN_ON_SEND, BASE_TARIFF_ON_SEND, IND_TARIFF_ON_SEND, AGENT_TRF_PLAN_ON_RECEIVE, BASE_TARIFF_ON_RECEIVE, IND_TARIFF_ON_RECEIVE, PREP_FEE_UIN, CUR_RATES_FIXED_ID_SEND, CUR_RATES_FIXED_ID_RECEIVE, PRODUCT_ID, CREDIT_BANK_ID, PAYEE_COM, TRF_ID_PAYEECOM_ON_RCV, AGENT_TRF_PLAN_ON_RCV_PRECALC, BASE_TARIFF_ON_RCV_PRECALC, IND_TARIFF_ON_RCV_PRECALC, UUID_ON_SEND, UUID_ON_RECEIVE, EXT_TARIFF_ON_RCV_PRECALC, DELAYED_RCV_IS_CONFIRMED, ARM_SEND_SCHEME, PAYMENT_PURPOSE_CODE)
values (1250412087, 5000, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, 818831823, 818831825, 69535846, null, null, 621, 10000, '810', 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

insert into qp$_doc_pay (DOC_NUM, UIN, DB_ORG, CR_ORG, DTYPE, W_TIME, STATUS, CUR, MONEY, ADD_INFO, IFMTYPE, FUNDS_RESERVED, NEXT_DATE, DB_DOC_DATE, CR_DOC_DATE, TX_ID, RNKO_REE_NUM, RNKO_DOC_NUM, REE_NUM, DB_BIN, DST_CUR, DST_MONEY, EXCHANGE_RATE, DOC_SCENARIO_ID)
values (1222966362, 1250412087, 'CRD2CSH', 'A000000', 'P', to_date('14-10-2019 19:25:08', 'dd-mm-yyyy hh24:mi:ss'), 'T', '810', 10000, '|CT6:INCCPR|KN2:70|DT10:14/10/2019|CS3:RUS|CR3:RUS|RS3:RUS|PO3:VIS|WS7:CRD2CSH|EE', 'QC', 0, to_date('14-10-2019 19:25:08', 'dd-mm-yyyy hh24:mi:ss'), null, null, 710907319, null, null, 1222960533, null, null, null, null, 1022);

insert into qp$_doc_pay (DOC_NUM, UIN, DB_ORG, CR_ORG, DTYPE, W_TIME, STATUS, CUR, MONEY, ADD_INFO, IFMTYPE, FUNDS_RESERVED, NEXT_DATE, DB_DOC_DATE, CR_DOC_DATE, TX_ID, RNKO_REE_NUM, RNKO_DOC_NUM, REE_NUM, DB_BIN, DST_CUR, DST_MONEY, EXCHANGE_RATE, DOC_SCENARIO_ID)
values (1222966363, 1250412087, 'CRD2CSH', 'AG00000', 'C', to_date('14-10-2019 19:25:09', 'dd-mm-yyyy hh24:mi:ss'), 'T', '810', 5000, '|CT6:INCCKN|KN2:45|DT10:14/10/2019|CS3:RUS|CR3:RUS|RS3:RUS|PO3:VIS|EE', 'Q', 0, to_date('14-10-2019 19:25:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, 710907319, null, null, 1222958366, null, null, null, null, 1022);

insert into qp$_doc_pay (DOC_NUM, UIN, DB_ORG, CR_ORG, DTYPE, W_TIME, STATUS, CUR, MONEY, ADD_INFO, IFMTYPE, FUNDS_RESERVED, NEXT_DATE, DB_DOC_DATE, CR_DOC_DATE, TX_ID, RNKO_REE_NUM, RNKO_DOC_NUM, REE_NUM, DB_BIN, DST_CUR, DST_MONEY, EXCHANGE_RATE, DOC_SCENARIO_ID)
values (1222966381, 1250412087, 'A000000', 'ZKP2CRD', 'P', to_date('14-10-2019 19:26:16', 'dd-mm-yyyy hh24:mi:ss'), 'T', '810', 10000, '|CT6:OUCDPR|KN3:890|CS3:RUS|CR3:RUS|RS3:RUS|RR3:RUS|PR7:CRD2CSH|PO3:VIS|EE', 'QC', 0, to_date('14-10-2019 19:26:16', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, 1222966285, 'CRD2CSH', null, null, null, 2015);

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('MONTHLY_BANK_PERSON_FULL_LIMIT_SEND_PAYEE', 'ИВАНОВ МИХАИЛ СТЕПАНОВИЧ_59', to_date('14-10-2019 19:25:06', 'dd-mm-yyyy hh24:mi:ss'), 1250412087, 0, 10000);

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('QPAY_ONLINE_SEND_PAYEE_LIMITS', 'ИВАНОВ МИХАИЛ СТЕПАНОВИЧ_+73213216633', to_date('14-10-2019 19:25:06', 'dd-mm-yyyy hh24:mi:ss'), 1250412087, 0, 10000);

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('QPAY_ONLINE_SEND_PAYER_LIMITS', '73213216655', to_date('14-10-2019 19:25:06', 'dd-mm-yyyy hh24:mi:ss'), 1250412087, 0, 10000);

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('TRANSFER_RUS_30D_PAYEE_ON_SEND_CNT_LMT', 'ИВАНОВ МИХАИЛ СТЕПАНОВИЧ_73213216633||ИВАНОВ МИХАИЛ СТЕПАНОВИЧ_59||ИВАНОВ МИХАИЛ СТЕПАНОВИЧ_73213216655', to_date('14-10-2019 19:25:07', 'dd-mm-yyyy hh24:mi:ss'), 1250412087, 0, 1);

insert into qp$_limit_showcase (LIMIT_TYPE, LIMIT_KEY, LIMIT_DATE, UIN, EXT_ID, AMOUNT)
values ('MONTH_SEND_LEG_LIMIT', 'CRD2CSH|+73213216655;  ', to_date('14-10-2019 19:25:09', 'dd-mm-yyyy hh24:mi:ss'), 1250412087, 0, 10000);

insert into qp$_hash2transfer (UIN, CARD_HASH, DTIME, CARD_HASH_TYPE)
values (1250412087, '82EA97DEB8811894B6A0293B6F250342F3AD91067823C213F48BEEB9967D4B7B', to_date('14-10-2019 19:26:12', 'dd-mm-yyyy hh24:mi:ss'), 'CARD_ID_HASH_RCV');

insert into qp$_hash2transfer (UIN, CARD_HASH, DTIME, CARD_HASH_TYPE)
values (1250412087, '459535FAA370A3B5F8B87203B089623C7AEB9325ABF241EC8A685B9C325047A3', to_date('14-10-2019 19:25:06', 'dd-mm-yyyy hh24:mi:ss'), 'CARD_ID_HASH_SEND');


commit;
end;