REM  It is to create loan_product table
/*
-Project Title		:loan_product
-developer/Analyst name	:Himanshu
-Developed date		:21-Apr-2019
*/
Prompt for creating table loan_product...

create table loan_product(product_title varchar2(30),
prod_summary varchar2(150),
interest_type char(1),
interest_rate number(4,2),
security_reqd char(1),
min_loan_amt number(11,2),
max_loan_amt number(11,2),
term_min interval year to month,
term_max interval year to month,
repayment_frequency interval year to month,
repayment_amt number(11,2),
early_repay_allowed char(1),
min_age_limit number(2),
max_age_limit number(2),
resident varchar2(15),
prod_start_dt date ,
prod_end_dt date,
prod_status char(1));

Prompt adding check constraint...

alter table loan_product add constraint interest_type_ck check(interest_type='F' or interest_type='V');

alter table loan_product add constraint security_reqd_ck check(security_reqd='O' or security_reqd='M');

alter table loan_product add constraint early_repay_allowed_ck check(early_repay_allowed='Y' or early_repay_allowed='N');

alter table loan_product add constraint prod_status_ck check(prod_status='O' or prod_status='C' or prod_status='H');

Prompt adding not null constraint...

alter table loan_product modify(product_title constraint prod_title_nn not null);

alter table loan_product modify(prod_summary constraint prod_summary_nn not null);

alter table loan_product modify(interest_type constraint interest_type_nn not null);

alter table loan_product modify(interest_rate constraint interest_rate_nn not null);

alter table loan_product modify(security_reqd constraint security_reqd_nn not null);

alter table loan_product modify(min_loan_amt constraint min_loan_amt_nn not null);

alter table loan_product modify(max_loan_amt constraint max_loan_amt_nn not null);

alter table loan_product modify(term_min constraint term_min_nn not null);

alter table loan_product modify(term_max constraint term_max_nn not null);

alter table loan_product modify(repayment_frequency constraint repayment_frequency_nn not null);

alter table loan_product modify(repayment_amt constraint repayment_amt_nn not null);

alter table loan_product modify(early_repay_allowed constraint early_repay_allowed_nn not null);

alter table loan_product modify(min_age_limit constraint min_age_limit_nn not null);

alter table loan_product modify(max_age_limit constraint max_age_limit_nn not null);

alter table loan_product modify(prod_status constraint prod_status_nn not null);






