@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cube for travel data'
@Analytics.dataCategory: #CUBE
@Analytics.internalName: #LOCAL

define view entity ZRAP510_I_TRAVEL_CUBE_MS
 as select from ZRAP100_I_TRAVEL_SOL

  association [0..1] to ZRAP510_I_AGENCY_MS   as _Agency   on $projection.AgencyID = _Agency.AgencyId
  association [0..1] to ZRAP510_I_CUSTOMER_MS as _Customer on $projection.CustomerID = _Customer.CustomerId


{
  key TravelID,
      @ObjectModel.foreignKey.association: '_Agency'
      AgencyID,
      @ObjectModel.foreignKey.association: '_Customer'
      CustomerID,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      @Aggregation.default: #SUM
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      @Aggregation.default: #SUM
      TotalPrice,
      CurrencyCode,      
      OverallStatus,
      @ObjectModel.foreignKey.association: '_CustomerCountry'
      _Customer.CountryCode as CustomerCountry,
      _Customer.City        as CustomerCity,
 @EndUserText.label: 'Total of Travels'
      @Aggregation.default: #SUM
      1                     as TotalOfTravels,
      /* Associations */
      _Agency,
      _Customer,
      _Customer._Country    as _CustomerCountry
}
