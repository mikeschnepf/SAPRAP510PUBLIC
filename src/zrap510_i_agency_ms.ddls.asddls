@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'dimension for agency'


@Analytics.dataCategory: #DIMENSION
@Analytics.internalName: #LOCAL
@ObjectModel.representativeKey: 'AgencyId'


define view entity ZRAP510_I_AGENCY_MS
as select from /dmo/agency
{
@ObjectModel.text.element: ['Name']
key agency_id    as AgencyId,
name         as Name,
postal_code  as PostalCode,
city         as City,
country_code as CountryCode
}
