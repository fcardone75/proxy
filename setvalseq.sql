# Inserisci la prosstima 
SELECT setval('additional_contribution_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "additional_contribution"));
# Inserisci la prosstima 
SELECT setval('application_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "application"));
# Inserisci la prosstima 
SELECT setval('application_attachment_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "application_attachment"));
# Inserisci la prosstima 
SELECT setval('application_group_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "application_group"));
# Inserisci la prosstima 
SELECT setval('application_import_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "application_import"));
# Inserisci la prosstima 
SELECT setval('application_import_template_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "application_import_template"));
# Inserisci la prosstima 
SELECT setval('application_message_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "application_message"));
# Inserisci la prosstima 
SELECT setval('application_message_attachment_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "application_message_attachment"));
# Inserisci la prosstima 
SELECT setval('application_status_log_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "application_status_log"));
# Inserisci la prosstima 
SELECT setval('assurance_enterprise_import_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "assurance_enterprise_import"));
# Inserisci la prosstima 
SELECT setval('ateco_code_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "ateco_code"));
# Inserisci la prosstima 
SELECT setval('bank_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "bank"));
# Inserisci la prosstima 
SELECT setval('bank_leasing_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "bank_leasing"));
# Inserisci la prosstima 
SELECT setval('city_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "city"));
# Inserisci la prosstima 
SELECT setval('company_size_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "company_size"));
# Inserisci la prosstima 
SELECT setval('confidi_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "confidi"));
# Inserisci la prosstima 
SELECT setval('country_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "country"));
# Inserisci la prosstima 
# Inserisci la prosstima 
SELECT setval('ext_log_entries_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "ext_log_entries"));
# Inserisci la prosstima 
SELECT setval('financial_destination_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "financial_destination"));
# Inserisci la prosstima 
SELECT setval('financing_import_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "financing_import"));
# Inserisci la prosstima 
SELECT setval('financing_provisioning_certification_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "financing_provisioning_certification"));
# Inserisci la prosstima 
SELECT setval('leasing_destination_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "leasing_destination"));
# Inserisci la prosstima 
SELECT setval('leasing_import_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "leasing_import"));
# Inserisci la prosstima 
SELECT setval('legal_form_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "legal_form"));
# Inserisci la prosstima 
SELECT setval('login_failure_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "login_failure"));
# Inserisci la prosstima 
SELECT setval('periodicity_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "periodicity"));
# Inserisci la prosstima 
SELECT setval('protocol_number_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "protocol_number"));
# Inserisci la prosstima 
SELECT setval('registry_file_audit_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "registry_file_audit"));
# Inserisci la prosstima 
SELECT setval('report_import_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "report_import"));
# Inserisci la prosstima 
# Inserisci la prosstima 
SELECT setval('user_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "user"));
# Inserisci la prosstima 
SELECT setval('user_password_id_seq', (SELECT COALESCE(MAX(id), 0) + 1 FROM "user_password"));
