// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Nick Name`
  String get nick_name {
    return Intl.message(
      'Nick Name',
      name: 'nick_name',
      desc: '',
      args: [],
    );
  }

  /// `Age`
  String get age {
    return Intl.message(
      'Age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get state {
    return Intl.message(
      'State',
      name: 'state',
      desc: '',
      args: [],
    );
  }

  /// `District`
  String get district {
    return Intl.message(
      'District',
      name: 'district',
      desc: '',
      args: [],
    );
  }

  /// `Block`
  String get block {
    return Intl.message(
      'Block',
      name: 'block',
      desc: '',
      args: [],
    );
  }

  /// `Village`
  String get village {
    return Intl.message(
      'Village',
      name: 'village',
      desc: '',
      args: [],
    );
  }

  /// `Ward No`
  String get ward_no {
    return Intl.message(
      'Ward No',
      name: 'ward_no',
      desc: '',
      args: [],
    );
  }

  /// `Pincode`
  String get pincode {
    return Intl.message(
      'Pincode',
      name: 'pincode',
      desc: '',
      args: [],
    );
  }

  /// `Mobile`
  String get mobile {
    return Intl.message(
      'Mobile',
      name: 'mobile',
      desc: '',
      args: [],
    );
  }

  /// `Are you above APL Category`
  String get apl_category {
    return Intl.message(
      'Are you above APL Category',
      name: 'apl_category',
      desc: '',
      args: [],
    );
  }

  /// `APL Category`
  String get bpl_category {
    return Intl.message(
      'APL Category',
      name: 'bpl_category',
      desc: '',
      args: [],
    );
  }

  /// `Do you have Ration Card?`
  String get ration_card {
    return Intl.message(
      'Do you have Ration Card?',
      name: 'ration_card',
      desc: '',
      args: [],
    );
  }

  /// `Ration Card NO`
  String get ration_card_no {
    return Intl.message(
      'Ration Card NO',
      name: 'ration_card_no',
      desc: '',
      args: [],
    );
  }

  /// `During COVID-19,During the main campagin did you applied for E-ration/ration card?`
  String get covid_19_campion {
    return Intl.message(
      'During COVID-19,During the main campagin did you applied for E-ration/ration card?',
      name: 'covid_19_campion',
      desc: '',
      args: [],
    );
  }

  /// `Recieve Ration during COVID-19`
  String get covid_19_ration_receive {
    return Intl.message(
      'Recieve Ration during COVID-19',
      name: 'covid_19_ration_receive',
      desc: '',
      args: [],
    );
  }

  /// `Do you have Ayushman card(Golden Card/Swasthya Card)?`
  String get ayushman_or_swasthya_card {
    return Intl.message(
      'Do you have Ayushman card(Golden Card/Swasthya Card)?',
      name: 'ayushman_or_swasthya_card',
      desc: '',
      args: [],
    );
  }

  /// `Do you have Aadhar Card?`
  String get have_aadhar_card {
    return Intl.message(
      'Do you have Aadhar Card?',
      name: 'have_aadhar_card',
      desc: '',
      args: [],
    );
  }

  /// `Aadhar Card No`
  String get aadhar_card_no {
    return Intl.message(
      'Aadhar Card No',
      name: 'aadhar_card_no',
      desc: '',
      args: [],
    );
  }

  /// `Do you have a savings bank account?`
  String get having_saving_bank_account {
    return Intl.message(
      'Do you have a savings bank account?',
      name: 'having_saving_bank_account',
      desc: '',
      args: [],
    );
  }

  /// `Do you have a Jan Dhan Account?`
  String get jan_dhan_account {
    return Intl.message(
      'Do you have a Jan Dhan Account?',
      name: 'jan_dhan_account',
      desc: '',
      args: [],
    );
  }

  /// `Is your Bank account linked with Aadhar Card?`
  String get bank_acct_link_with_aadhar_card {
    return Intl.message(
      'Is your Bank account linked with Aadhar Card?',
      name: 'bank_acct_link_with_aadhar_card',
      desc: '',
      args: [],
    );
  }

  /// `KYC verified from Bank?`
  String get kyc_verify_from_bank {
    return Intl.message(
      'KYC verified from Bank?',
      name: 'kyc_verify_from_bank',
      desc: '',
      args: [],
    );
  }

  /// `Are you Linked with Pradhan Mantri Suraksha BimaYojna(PMSBY,Rs12/-)`
  String get linked_with_pmsby {
    return Intl.message(
      'Are you Linked with Pradhan Mantri Suraksha BimaYojna(PMSBY,Rs12/-)',
      name: 'linked_with_pmsby',
      desc: '',
      args: [],
    );
  }

  /// `Are you linked with Pradhan Mantri Jeevan Jyoti Bima(PMJJBY,Rs330/-)`
  String get linked_with_pmjjby {
    return Intl.message(
      'Are you linked with Pradhan Mantri Jeevan Jyoti Bima(PMJJBY,Rs330/-)',
      name: 'linked_with_pmjjby',
      desc: '',
      args: [],
    );
  }

  /// `Are you linked with any other Social Security Scheme?`
  String get linked_with_social_security_scheme {
    return Intl.message(
      'Are you linked with any other Social Security Scheme?',
      name: 'linked_with_social_security_scheme',
      desc: '',
      args: [],
    );
  }

  /// `If yes,Specify`
  String get specify_social_scheme {
    return Intl.message(
      'If yes,Specify',
      name: 'specify_social_scheme',
      desc: '',
      args: [],
    );
  }

  /// `Did you recieve cash transfer during COVID-19?`
  String get recv_cash_transfer_during_covid_19 {
    return Intl.message(
      'Did you recieve cash transfer during COVID-19?',
      name: 'recv_cash_transfer_during_covid_19',
      desc: '',
      args: [],
    );
  }

  /// `Do you have voter Card?`
  String get having_voter_card {
    return Intl.message(
      'Do you have voter Card?',
      name: 'having_voter_card',
      desc: '',
      args: [],
    );
  }

  /// `Voter Id Number`
  String get voter_id_nmbr {
    return Intl.message(
      'Voter Id Number',
      name: 'voter_id_nmbr',
      desc: '',
      args: [],
    );
  }

  /// `Do you have PAN Card`
  String get having_pan_card {
    return Intl.message(
      'Do you have PAN Card',
      name: 'having_pan_card',
      desc: '',
      args: [],
    );
  }

  /// `Pan Card Number`
  String get specify_pan_card_no {
    return Intl.message(
      'Pan Card Number',
      name: 'specify_pan_card_no',
      desc: '',
      args: [],
    );
  }

  /// `Are You under Divyang category?(If applicable)`
  String get are_you_under_divyang_category {
    return Intl.message(
      'Are You under Divyang category?(If applicable)',
      name: 'are_you_under_divyang_category',
      desc: '',
      args: [],
    );
  }

  /// `Do you have a Divyang certificate?(If applicable)`
  String get having_divyang_certi {
    return Intl.message(
      'Do you have a Divyang certificate?(If applicable)',
      name: 'having_divyang_certi',
      desc: '',
      args: [],
    );
  }

  /// `If Yes,Specify Certificates number`
  String get divyang_certi_nmbr {
    return Intl.message(
      'If Yes,Specify Certificates number',
      name: 'divyang_certi_nmbr',
      desc: '',
      args: [],
    );
  }

  /// `Do you get Divyang pension?(if applicable)`
  String get getting_divyang_pension {
    return Intl.message(
      'Do you get Divyang pension?(if applicable)',
      name: 'getting_divyang_pension',
      desc: '',
      args: [],
    );
  }

  /// `Do you get Old age Pension(If applicable)`
  String get getting_old_age_pension {
    return Intl.message(
      'Do you get Old age Pension(If applicable)',
      name: 'getting_old_age_pension',
      desc: '',
      args: [],
    );
  }

  /// `Do you get Widow Pension(If applicable)`
  String get getting_any_window_pension {
    return Intl.message(
      'Do you get Widow Pension(If applicable)',
      name: 'getting_any_window_pension',
      desc: '',
      args: [],
    );
  }

  /// `Your Category in Skill?`
  String get category_skill {
    return Intl.message(
      'Your Category in Skill?',
      name: 'category_skill',
      desc: '',
      args: [],
    );
  }

  /// `Do you have a certificate related to your skill?`
  String get certificate_related_skill {
    return Intl.message(
      'Do you have a certificate related to your skill?',
      name: 'certificate_related_skill',
      desc: '',
      args: [],
    );
  }

  /// `If Yes then specify the skill`
  String get specify_your_skill {
    return Intl.message(
      'If Yes then specify the skill',
      name: 'specify_your_skill',
      desc: '',
      args: [],
    );
  }

  /// `Any particular skill training required?`
  String get particular_skill_required {
    return Intl.message(
      'Any particular skill training required?',
      name: 'particular_skill_required',
      desc: '',
      args: [],
    );
  }

  /// `If Yes then specify the skill training required`
  String get specify_your_skill_train_req {
    return Intl.message(
      'If Yes then specify the skill training required',
      name: 'specify_your_skill_train_req',
      desc: '',
      args: [],
    );
  }

  /// `Rehdi Patri/Street Vendor`
  String get street_vendor_or_rehdi_patri {
    return Intl.message(
      'Rehdi Patri/Street Vendor',
      name: 'street_vendor_or_rehdi_patri',
      desc: '',
      args: [],
    );
  }

  /// `Is Survey done?`
  String get is_survey_done {
    return Intl.message(
      'Is Survey done?',
      name: 'is_survey_done',
      desc: '',
      args: [],
    );
  }

  /// `Have you received ID card?`
  String get recieve_id_card {
    return Intl.message(
      'Have you received ID card?',
      name: 'recieve_id_card',
      desc: '',
      args: [],
    );
  }

  /// `Received Vending Certificate?`
  String get vending_certi {
    return Intl.message(
      'Received Vending Certificate?',
      name: 'vending_certi',
      desc: '',
      args: [],
    );
  }

  /// `Are You a Street Food Vendor?`
  String get street_food_vendor {
    return Intl.message(
      'Are You a Street Food Vendor?',
      name: 'street_food_vendor',
      desc: '',
      args: [],
    );
  }

  /// `Do you have FSSAI Proof Of registration?`
  String get fssai_reg {
    return Intl.message(
      'Do you have FSSAI Proof Of registration?',
      name: 'fssai_reg',
      desc: '',
      args: [],
    );
  }

  /// `Do You have FoSTac training certificate?`
  String get fostac_training_certi {
    return Intl.message(
      'Do You have FoSTac training certificate?',
      name: 'fostac_training_certi',
      desc: '',
      args: [],
    );
  }

  /// `Received any help from government in COVID-19?`
  String get covid_19_gov_hel_recv {
    return Intl.message(
      'Received any help from government in COVID-19?',
      name: 'covid_19_gov_hel_recv',
      desc: '',
      args: [],
    );
  }

  /// `Small Enterprise`
  String get small_enterprise {
    return Intl.message(
      'Small Enterprise',
      name: 'small_enterprise',
      desc: '',
      args: [],
    );
  }

  /// `Type Of Enterprise`
  String get type_of_enterprise {
    return Intl.message(
      'Type Of Enterprise',
      name: 'type_of_enterprise',
      desc: '',
      args: [],
    );
  }

  /// `Does your enterprise have a name?`
  String get enterprise_name {
    return Intl.message(
      'Does your enterprise have a name?',
      name: 'enterprise_name',
      desc: '',
      args: [],
    );
  }

  /// `Do you have Udyog Aadhar Card?`
  String get udyog_aadhar_card {
    return Intl.message(
      'Do you have Udyog Aadhar Card?',
      name: 'udyog_aadhar_card',
      desc: '',
      args: [],
    );
  }

  /// `Is Your business on Social Media?`
  String get business_on_social_media {
    return Intl.message(
      'Is Your business on Social Media?',
      name: 'business_on_social_media',
      desc: '',
      args: [],
    );
  }

  /// `Do you OWN/RENT Shop Office?`
  String get own_or_rent_shop {
    return Intl.message(
      'Do you OWN/RENT Shop Office?',
      name: 'own_or_rent_shop',
      desc: '',
      args: [],
    );
  }

  /// `In the case of remted,do you have rent agreement?`
  String get rent_agreement {
    return Intl.message(
      'In the case of remted,do you have rent agreement?',
      name: 'rent_agreement',
      desc: '',
      args: [],
    );
  }

  /// `Do you require training in Social Media?`
  String get training_on_social_media {
    return Intl.message(
      'Do you require training in Social Media?',
      name: 'training_on_social_media',
      desc: '',
      args: [],
    );
  }

  /// `Any particular skill training required`
  String get any_skill_or_training {
    return Intl.message(
      'Any particular skill training required',
      name: 'any_skill_or_training',
      desc: '',
      args: [],
    );
  }

  /// `If yes then Specify`
  String get specify_skill_training {
    return Intl.message(
      'If yes then Specify',
      name: 'specify_skill_training',
      desc: '',
      args: [],
    );
  }

  /// `Project report of business ready?`
  String get project_report_business {
    return Intl.message(
      'Project report of business ready?',
      name: 'project_report_business',
      desc: '',
      args: [],
    );
  }

  /// `Do you have a Balance Sheet pf your enterprise?`
  String get bal_sheet_of_enterprise {
    return Intl.message(
      'Do you have a Balance Sheet pf your enterprise?',
      name: 'bal_sheet_of_enterprise',
      desc: '',
      args: [],
    );
  }

  /// `Do you file Income Tax return?`
  String get income_tax_return {
    return Intl.message(
      'Do you file Income Tax return?',
      name: 'income_tax_return',
      desc: '',
      args: [],
    );
  }

  /// `Registered under Shop Establishment Act`
  String get reg_under_shop_estab_act {
    return Intl.message(
      'Registered under Shop Establishment Act',
      name: 'reg_under_shop_estab_act',
      desc: '',
      args: [],
    );
  }

  /// `Have you recieved Mudra Loan`
  String get reciv_mudra_loan {
    return Intl.message(
      'Have you recieved Mudra Loan',
      name: 'reciv_mudra_loan',
      desc: '',
      args: [],
    );
  }

  /// `Small Framer`
  String get farmer {
    return Intl.message(
      'Small Framer',
      name: 'farmer',
      desc: '',
      args: [],
    );
  }

  /// `Do you have Kisan Credit card?`
  String get fm_kisan_credit_card {
    return Intl.message(
      'Do you have Kisan Credit card?',
      name: 'fm_kisan_credit_card',
      desc: '',
      args: [],
    );
  }

  /// `Have you received benefits from PM Kisan Samman Nidhi Yojna?`
  String get fm_pm_ksny {
    return Intl.message(
      'Have you received benefits from PM Kisan Samman Nidhi Yojna?',
      name: 'fm_pm_ksny',
      desc: '',
      args: [],
    );
  }

  /// `Do you get Kisan Pension Yojna?`
  String get fm_kisan_pention_yojna {
    return Intl.message(
      'Do you get Kisan Pension Yojna?',
      name: 'fm_kisan_pention_yojna',
      desc: '',
      args: [],
    );
  }

  /// `Agriculture Laborer`
  String get agriculture_labr {
    return Intl.message(
      'Agriculture Laborer',
      name: 'agriculture_labr',
      desc: '',
      args: [],
    );
  }

  /// `Do you have an MGNREGA job card?`
  String get mgnrega_job_card {
    return Intl.message(
      'Do you have an MGNREGA job card?',
      name: 'mgnrega_job_card',
      desc: '',
      args: [],
    );
  }

  /// `Do you get work under MGNREGA?`
  String get work_undr_mgnrega {
    return Intl.message(
      'Do you get work under MGNREGA?',
      name: 'work_undr_mgnrega',
      desc: '',
      args: [],
    );
  }

  /// `How many days?`
  String get working_days_for_mgnrega {
    return Intl.message(
      'How many days?',
      name: 'working_days_for_mgnrega',
      desc: '',
      args: [],
    );
  }

  /// `Do you get payment?`
  String get get_any_payment {
    return Intl.message(
      'Do you get payment?',
      name: 'get_any_payment',
      desc: '',
      args: [],
    );
  }

  /// `Construction Worker`
  String get construct_worker {
    return Intl.message(
      'Construction Worker',
      name: 'construct_worker',
      desc: '',
      args: [],
    );
  }

  /// `Are you registered with the Welfare Board?`
  String get reg_with_welfare_board {
    return Intl.message(
      'Are you registered with the Welfare Board?',
      name: 'reg_with_welfare_board',
      desc: '',
      args: [],
    );
  }

  /// `Do you have labors Id card?`
  String get labour_id_card {
    return Intl.message(
      'Do you have labors Id card?',
      name: 'labour_id_card',
      desc: '',
      args: [],
    );
  }

  /// `Recieve the benefits of Auzaar Scheme or any other scheme?`
  String get recv_auzaar_or_other_scheme {
    return Intl.message(
      'Recieve the benefits of Auzaar Scheme or any other scheme?',
      name: 'recv_auzaar_or_other_scheme',
      desc: '',
      args: [],
    );
  }

  /// `If yes then mension the other scheme name`
  String get mension_other_scheme {
    return Intl.message(
      'If yes then mension the other scheme name',
      name: 'mension_other_scheme',
      desc: '',
      args: [],
    );
  }

  /// `Waste Worker`
  String get waste_worker {
    return Intl.message(
      'Waste Worker',
      name: 'waste_worker',
      desc: '',
      args: [],
    );
  }

  /// `Are you linked with Nagar Nigam?`
  String get ww_nagar_nigam_linked {
    return Intl.message(
      'Are you linked with Nagar Nigam?',
      name: 'ww_nagar_nigam_linked',
      desc: '',
      args: [],
    );
  }

  /// `Do you have an Employment ID card`
  String get ww_employment_id_card {
    return Intl.message(
      'Do you have an Employment ID card',
      name: 'ww_employment_id_card',
      desc: '',
      args: [],
    );
  }

  /// `Domestic Worker`
  String get domestic_worker {
    return Intl.message(
      'Domestic Worker',
      name: 'domestic_worker',
      desc: '',
      args: [],
    );
  }

  /// `Do you have Identity card related to your work?`
  String get work_related_id_card {
    return Intl.message(
      'Do you have Identity card related to your work?',
      name: 'work_related_id_card',
      desc: '',
      args: [],
    );
  }

  /// `If yes,who authorized it?`
  String get work_id_card_authorization {
    return Intl.message(
      'If yes,who authorized it?',
      name: 'work_id_card_authorization',
      desc: '',
      args: [],
    );
  }

  /// `Home Based Worker`
  String get home_based_worker {
    return Intl.message(
      'Home Based Worker',
      name: 'home_based_worker',
      desc: '',
      args: [],
    );
  }

  /// `Peice Rate/Own Account Worker`
  String get piece_rate_or_own_acct_workr {
    return Intl.message(
      'Peice Rate/Own Account Worker',
      name: 'piece_rate_or_own_acct_workr',
      desc: '',
      args: [],
    );
  }

  /// `Do you have an Artisian Card?`
  String get artisian_card {
    return Intl.message(
      'Do you have an Artisian Card?',
      name: 'artisian_card',
      desc: '',
      args: [],
    );
  }

  /// `Rickshaw Puller`
  String get rickshaw_puller {
    return Intl.message(
      'Rickshaw Puller',
      name: 'rickshaw_puller',
      desc: '',
      args: [],
    );
  }

  /// `Are you owner of your Rickshaw?`
  String get owner_of_your_rickshaw {
    return Intl.message(
      'Are you owner of your Rickshaw?',
      name: 'owner_of_your_rickshaw',
      desc: '',
      args: [],
    );
  }

  /// `Auto rickshaw`
  String get auto_rickshaw {
    return Intl.message(
      'Auto rickshaw',
      name: 'auto_rickshaw',
      desc: '',
      args: [],
    );
  }

  /// `Are you owner of your Auto Rickshaw?,`
  String get owner_of_your_auto_rickshaw {
    return Intl.message(
      'Are you owner of your Auto Rickshaw?,',
      name: 'owner_of_your_auto_rickshaw',
      desc: '',
      args: [],
    );
  }

  /// `E-rickshaw`
  String get e_rickshaw {
    return Intl.message(
      'E-rickshaw',
      name: 'e_rickshaw',
      desc: '',
      args: [],
    );
  }

  /// `Are you owner of your E-Rickshaw?`
  String get owner_of_your_e_rickshaw {
    return Intl.message(
      'Are you owner of your E-Rickshaw?',
      name: 'owner_of_your_e_rickshaw',
      desc: '',
      args: [],
    );
  }

  /// `Registered with any municipal Body`
  String get reg_with_municipal_body {
    return Intl.message(
      'Registered with any municipal Body',
      name: 'reg_with_municipal_body',
      desc: '',
      args: [],
    );
  }

  /// `License from municipal Body?`
  String get license_municipal_body {
    return Intl.message(
      'License from municipal Body?',
      name: 'license_municipal_body',
      desc: '',
      args: [],
    );
  }

  /// `Private Job`
  String get private_job {
    return Intl.message(
      'Private Job',
      name: 'private_job',
      desc: '',
      args: [],
    );
  }

  /// `Do you have an employment Identity card`
  String get emp_id_card {
    return Intl.message(
      'Do you have an employment Identity card',
      name: 'emp_id_card',
      desc: '',
      args: [],
    );
  }

  /// `Do you get an honorarium/salary on time?`
  String get honorarium_salary_on_time {
    return Intl.message(
      'Do you get an honorarium/salary on time?',
      name: 'honorarium_salary_on_time',
      desc: '',
      args: [],
    );
  }

  /// `Are you registered with Your Provident fund(PF)`
  String get reg_with_pf {
    return Intl.message(
      'Are you registered with Your Provident fund(PF)',
      name: 'reg_with_pf',
      desc: '',
      args: [],
    );
  }

  /// `Are you registered with ESIC(Employees' State Insurance)?`
  String get reg_with_esic {
    return Intl.message(
      'Are you registered with ESIC(Employees\' State Insurance)?',
      name: 'reg_with_esic',
      desc: '',
      args: [],
    );
  }

  /// `Others`
  String get others {
    return Intl.message(
      'Others',
      name: 'others',
      desc: '',
      args: [],
    );
  }

  /// `Detail Of Your Occupation`
  String get detail_of_your_occupation {
    return Intl.message(
      'Detail Of Your Occupation',
      name: 'detail_of_your_occupation',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'hi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}