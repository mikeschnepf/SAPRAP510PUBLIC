@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'query for travel data'
@Analytics.query: true


define view entity ZRAP510_C_TRAVEL_QUERY_MS
  as select from ZRAP510_I_TRAVEL_CUBE_MS
{
      @AnalyticsDetails.query.axis: #ROWS
  key TravelID,
      @AnalyticsDetails.query.axis: #ROWS
      AgencyID,
      @AnalyticsDetails.query.axis: #ROWS
      CustomerID,
      @AnalyticsDetails.query.axis: #ROWS
      BeginDate,
      @AnalyticsDetails.query.axis: #ROWS
      EndDate,
      @AnalyticsDetails.query.axis: #ROWS
      BookingFee,
      @AnalyticsDetails.query.axis: #ROWS
      CurrencyCode,
      @AnalyticsDetails.query.axis: #ROWS
      OverallStatus,
      @AnalyticsDetails.query.axis: #COLUMNS
      CustomerCountry,
      @AnalyticsDetails.query.axis: #ROWS
      CustomerCity,
      TotalOfTravels,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice as TravelPrice


}
