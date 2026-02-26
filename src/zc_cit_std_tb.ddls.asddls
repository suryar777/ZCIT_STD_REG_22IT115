@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZCIT_STD_TB'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_CIT_STD_TB
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_CIT_STD_TB
  association [1..1] to ZR_CIT_STD_TB as _BaseEntity on $projection.STUDENTID = _BaseEntity.STUDENTID
{
  key StudentID,
  FirstName,
  LastName,
  Gender,
  DateOfBirth,
  EmailID,
  PhoneNumber,
  CourseName,
  Department,
  AdmissionDate,
  PreviousQualification,
  Percentage,
  Status,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  _BaseEntity
}
