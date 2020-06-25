import 'dart:collection';

class Keys {
  static const String YES = "yes";
  static const String NO = "no";
  static const String NA = "na";
  static const String MALE = "male";
  static const String FEMALE = "female";
  static const String OTHER = "other";
  static const String OTHERSS = "other";
  static const List<String> YES_NO = [YES, NO];
  static const List<String> YES_NO_OTHERS = [YES, NO, OTHERSS];
  static const List<String> YES_NO_NA = [YES, NO, NA];
  static const List<String> MALE_FEM_OTHER = [MALE, FEMALE, OTHER];

  static const String NAME = "name";
  static const String NICK_NAME = "nick_name";
  static const String AGE = "age";
  static const String GENDER = "gender";
  static const String APL_CATEGORY = "apl_category";
  static const String BPL_CATEGORY = "bpl_category";
  static const String RATION_CARD = "ration_card";
  static const String RATION_CARD_NO = "ration_card_no";
  static const String CVOID_19_CAMPION = "covid_19_campion";
  static const String CVOID_19_RATION_RECEIVE = "covid_19_ration_receive";
  static const String AYUSHMAN_OR_SWASTHYA_CARD = "ayushman_or_swasthya_card";
  static const String ENTER_VALID_RATION_CARD_N0 = "enter_valid_ration_card_no";
  static const String ENTER_RATION_CARD_N0 = "enter_ration_card_no";
  static const String VALID_AGE = "valid_age";

//Personal screen
  static const String PERSONAL_DETAIL = "personal_detail";
  static const String SOCIAL_AND_EMPLOYMENT_ELIGIBILITY =
      "social_and_employment_eligibility";
  static const String STATE = "state";
  static const String DISTRICT = "district";
  static const String BLOCK = "block";
  static const String VILLAGE = "village";
  static const String WARD_NO = "ward_no";
  static const String POSTAL_CODE = "pincode";
  static const String MOBILE = "mobile";
  static const String ENTER_VALID_MOBILE_NO = "enter_valid_mobile_no";
  static const String ENTER_VALID_POSTAL_CODE = "enter_valid_postal_code";

//FOR SOCIAL SECURITY INFORMATION SCREEN
  static const String SOCIAL_SECURITY_INFORMATION =
      "social_security_information";
  static const String HAVE_AADHAR_CARD = "have_aadhar_card";
  static const String AADHAR_CARD_NO = "aadhar_card_no";
  static const String HAVING_SAVING_BANK_ACCOUNT = "having_saving_bank_account";
  static const String JAN_DHAN_ACCOUNT = "jan_dhan_account";
  static const String BANK_ACCT_LINK_WITH_AADHAR_CARD =
      "bank_acct_link_with_aadhar_card";
  static const String KYC_VERIFY_FROM_BANK = "kyc_verify_from_bank";
  static const String LINKED_WITH_PMSBY = "linked_with_pmsby";
  static const String LINKED_WITH_PMJJBY = "linked_with_pmjjby";
  static const String LINKED_WITH_SOCIAL_SECURITY_SCHEME =
      "linked_with_social_security_scheme";
  static const String SPECIFY_SOCIAL_SECURITY_SCHEME = "specify_social_scheme";
  static const String RECV_CASH_TRANSFER_DURING_COVID_19 =
      "recv_cash_transfer_during_covid_19";
  static const String HAVING_VOTER_CARD = "having_voter_card";
  static const String VOTER_ID_NMBR = "voter_id_nmbr";
  static const String HAVING_PAN_CARD = "having_pan_card";
  static const String SPECIFY_PAN_CARD_NO = "specify_pan_card_no";
  static const String ARE_YOU_UNDER_DIVYANG_CATEGORY =
      "are_you_under_divyang_category";
  static const String HAVING_DIVYANG_CERTI = "having_divyang_certi";
  static const String DIVYANG_CERTI_NMBR = "divyang_certi_nmbr";
  static const String GETTING_DIVYANG_PENSION = "getting_divyang_pension";
  static const String GETTING_OLD_AGE_PENSION = "getting_old_age_pension";
  static const String GETTING_ANY_WINDOW_PENSION = "getting_any_window_pension";
  static const String ENTER_VALID_AADHAR_CARD_NO = "Enter_valid_aadhar_card_no";
  static const String SPECIFY_LINK_SOCIAL_SECURITY_SCHEME = "specify_link_social_scheme";
  static const String ENTER_VOTER_CARD = "enter_voter_card";
  static const String ENTER_VALID_VOTER_CARD = "enter_valid_voter_card";
  static const String ENTER_PAN_CARD = "enter_pan_card";
  static const String ENTER_VALID_PAN_CARD = "enter_valid_pan_card";
  static const String ENTER_DIVYANG_CERTI_NMBR = "enter_divyang_certi_nmbr";
  static const String ENTER_VALID_DIVYANG_CERTI_NMBR = "enter_valid_divyang_certi_nmbr";

//FOR SKILL SCREEN
  static const String SKILL = "skill";
  static const String CATEGORY_SKILL = "category_skill";
  static const String CERTI_RELATED_SKILL = "certificate_related_skill";
  static const String SPECIFY_YOUR_SKILL = "specify_your_skill";
  static const String PARTICULAR_SKILL_REQ = "particular_skill_required";
  static const String SPECIFY_YOUR_SKILL_TRAIN_REQ =
      "specify_your_skill_train_req";
  static const String IF_YES_SPECIFY_SKILL = "if_yes_then_specify_your_Skill";
  static const String SPECIFY_SKILL = "specify_your_Skill";
  static const String IF_YES_SPECIFY_TRAINING_SKILL_REQ =
      "if_yes_then_specify_skill_training_required ";

//FOR OCCUPATION SCREEN
  static const String OCCUPATION = "occupation";
  static const String HINT_OCCUPATION = "select_occupation";
  static const List<String> OCCUPATION_TYPES = [
    WASTE_WORKER,
    FARMER,
    STREET_VENDOR_OR_REHDI_PATRI,
    SMALL_ENTERPRISE,
    AGRICULTURAL_LABR,
    CONSTRUCTION_WORKER,
    DOMESTIC_WORKER,
    HOME_BASED_WORKER,
    RICKSHAW_PULLER,
    AUTO_RICKSHAW,
    E_RICKSHAW,
    PRIVATE_JOB,
    OTHERS
  ];

  static const String WASTE_WORKER = "waste_worker";
  static const String WW_NAGAR_NIGAM_LINKED = "ww_nagar_nigam_linked";
  static const String WW_EMPLOYMENT_ID_CARD = "ww_employment_id_card";

  static const String FARMER = "small_farmer";
  static const String FM_KCC = "fm_kisan_credit_card";
  static const String FM_PM_KSNY = "fm_pm_ksny";
  static const String FM_KPY = "fm_kisan_pention_yojna";

  static const String STREET_VENDOR_OR_REHDI_PATRI =
      "street_vendor_or_rehdi_patri";
  static const String IS_SURVEY_DONE = "is_survey_done";
  static const String RECIEVE_ID_CARD = "recieve_id_card";
  static const String VENDING_CERTI = "vending_certi";
  static const String STREET_FOOD_VENDOR = "street_food_vendor";
  static const String FSSAI_REG = "fssai_reg";
  static const String FOSTAC_TRAINING_CERTI = "fostac_training_certi";
  static const String COVID_19_GOV_HELP_RECV = "covid_19_gov_hel_recv";

  static const String SMALL_ENTERPRISE = "small_enterprise";
  static const String TYPE_OF_ENTERPRISE = "type_of_enterprise";
  static const String ENTERPRISE_NAME = "enterprise_name";
  static const String UDYOG_AADHAR_CARD = "udyog_aadhar_card";
  static const String BUSINESS_ON_SOCIAL_MEDIA = "business_on_social_media";
  static const String OWN_OR_RENT_SHOP = "own_or_rent_shop";
  static const String RENT_AGREEMENT = "rent_agreement";
  static const String TRAINING_ON_SOCL_MEDIA = "training_on_social_media";
  static const String ANY_SKILL_OR_TRAINING = "any_skill_or_training";
  static const String SPECIFY_SKILL_TRAINING = "specify_skill_training";
  static const String PROJECT_REPORT_BUSINESS = "project_report_business";
  static const String BAL_SHEET_OF_ENTERPRISE = "bal_sheet_of_enterprise";
  static const String INCOME_TAX_RETURN = "income_tax_return";
  static const String REG_UNDER_SHOP_ESTAB_ACT = "reg_under_shop_estab_act";
  static const String RECIV_MUDRA_LOAN = "reciv_mudra_loan";
  static const String SERVICE = "Service";
  static const String SALE_PURCHASE = "sale_purchase";
  static const String PRODUC_MANFC = "production_manufacturing";
  static const List<String> TYPES_SMALL_ENTERPRISE = [SERVICE,SALE_PURCHASE,PRODUC_MANFC,OTHERS];

  static const String AGRICULTURAL_LABR = "agriculture_labour";
  static const String MGNREGA_JOB_CARD = "mgnrega_job_card";
  static const String WORK_UNDR_MGNREGA = "work_undr_mgnrega";
  static const String WORKING_DAYS_FOR_MGNREGA = "working_days_for_mgnrega";
  static const String GET_ANY_PAYMENT = "get_any_payment";

  static const String CONSTRUCTION_WORKER = "construction_worker";
  static const String REG_WITH_WELFARE_BOARD = "reg_with_welfare_board";
  static const String LABOUR_ID_CARD = "labour_id_card";
  static const String RECV_AUZAAR_OR_OTHER_SCHEME =
      "recv_auzaar_or_other_scheme";
  static const String MENTION_OTHER_SCHEME = "mension_other_scheme";
  static const String MENTION_OTHER_SCHEME_REQ = "mension_other_scheme_req";

  static const String DOMESTIC_WORKER = "domestic_worker";
  static const String RAW = "raw";
  static const String POLICE = "police";
  static const String ANY_ORG = "any_organization";
  static const String OTHERS_DOMESTIC = "other_domestic";
  static const String WORK_RELATED_ID_CARD = "work_related_id_card";
  static const String WORK_ID_CARD_AUTHRIZATION = "work_id_card_authorization";
  static const List<String> WORKING_ID_CATEGORY = [RAW, POLICE, ANY_ORG,OTHERS_DOMESTIC];

  static const String HOME_BASED_WORKER = "home_based_worker";
  static const String PIECE_RATE_OR_OWN_ACCT_WORKR =
      "piece_rate_or_own_acct_workr";
  static const String Artisian_Card = "artisian_card";

  static const String RICKSHAW_PULLER = "rickshaw_puller";
  static const String OWNER_OF_YOUR_RICKSHAW = "owner_of_your_rickshaw";

  static const String AUTO_RICKSHAW = "auto_Rickshaw";
  static const String OWNER_OF_YOUR_AUTO_RICKSHAW =
      "owner_of_your_auto_rickshaw";

  static const String E_RICKSHAW = "e_rickshaw";
  static const String OWNER_OF_YOUR_E_RICKSHAW = "owner_of_your_e_rickshaw";
  static const String REG_WITH_MUNUICIPAL_BODY = "reg_with_municipal_body";
  static const String LICENSE_MUNICIPAL_BODY = "license_municipal_body";

  static const String PRIVATE_JOB = "private_job";
  static const String EMP_ID_CARD = "emp_id_card";
  static const String HONORARIUM_SALARY_ON_TIME = "honorarium_salary_on_time";
  static const String REG_WITH_PF = "reg_with_pf";
  static const String REG_WITH_ESIC = "reg_with_esic";

  static const String OTHERS = "others";
  static const String DETAIL_OF_YOUR_OCCUPATION = "detail_of_your_occupation";

  // States List
  static const String ANDAMAN_AND_NICOBAR = "andaman_and_nicobar";
  static const String ANDHRA_PRADESH = "andhra_pradesh";
  static const String ARUNACHAL_PRADESH = "arunachal_pradesh";
  static const String ASSAM = "assam";
  static const String BIHAR = "bihar";
  static const String CHANDIGARH = "chandigarh";
  static const String CHHATTISGARH = "chhattisgarh";
  static const String DAMAN_AND_DIU = "daman_and_diu";
  static const String DELHI_NCR = "delhi_ncr";
  static const String GOA = "goa";
  static const String GUJARAT = "gujarat";
  static const String HARYANA = "haryana";
  static const String HIMACHAL_PRADESH = "himachal_pradesh";
  static const String JAMMU_AND_KASHMIR = "jammu_and_kashmir";
  static const String JHARKHAND = "jharkhand";
  static const String KARNATAKA = "karnataka";
  static const String KERALA = "kerala";
  static const String LADAKH = "ladakh";
  static const String LAKSHADWEEP = "lakshadweep";
  static const String MADHYA_PRADESH = "madhya_pradesh";
  static const String MAHARASHTRA = "maharashtra";
  static const String MANIPUR = "manipur";
  static const String MEGHALAYA = "meghalaya";
  static const String MIZORAM = "mizoram";
  static const String NAGALAND = "nagaland";
  static const String ODISHA = "odisha";
  static const String PUDUCHERRY = "puducherry";
  static const String PUNJAB = "punjab";
  static const String RAJASTHAN = "rajasthan";
  static const String SIKKIM = "sikkim";
  static const String TAMIL_NADU = "tamil_nadu";
  static const String TELANGANA = "telangana";
  static const String TRIPURA = "tripura";
  static const String UTTAR_PRADESH = "uttar_pradesh";
  static const String UTTARAKHAND = "uttarakhand";
  static const String WEST_BENGAL = "west_bengal";
  static const List<String> STATES = [
    ANDAMAN_AND_NICOBAR,
    ANDHRA_PRADESH,
    ARUNACHAL_PRADESH,
    ASSAM,
    BIHAR,
    CHANDIGARH,
    CHHATTISGARH,
    DAMAN_AND_DIU,
    DELHI_NCR,
    GOA,
    GUJARAT,
    HARYANA,
    HIMACHAL_PRADESH,
    JAMMU_AND_KASHMIR,
    JHARKHAND,
    KARNATAKA,
    KERALA,
    LADAKH,
    LAKSHADWEEP,
    MADHYA_PRADESH,
    MAHARASHTRA,
    MANIPUR,
    MEGHALAYA,
    MIZORAM,
    NAGALAND,
    ODISHA,
    PUDUCHERRY,
    PUNJAB,
    RAJASTHAN,
    SIKKIM,
    TAMIL_NADU,
    TELANGANA,
    TRIPURA,
    UTTAR_PRADESH,
    UTTARAKHAND,
    WEST_BENGAL
  ];
  static const String SKILLED = "skilled";
  static const String SEMI_SKILLED = "semi_skilled";
  static const String HIGHLY_SKILLED = "highly_skilled";
  static const String UNSKILLED = "unskilled";
  static const List<String> CATEGORY_SKILLS = [SKILLED, SEMI_SKILLED, HIGHLY_SKILLED,UNSKILLED];
  static const String HINT_STATE = "select_state";
  static const String FIELD_CANNOT_EMPTY = "this_field_cannot_empty";


}
