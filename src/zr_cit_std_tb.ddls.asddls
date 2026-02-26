@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZCIT_STD_TB'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_CIT_STD_TB
  as select from ZCIT_STD_TB
{
  key student_id as StudentID,
  first_name as FirstName,
  last_name as LastName,
  gender as Gender,
  date_of_birth as DateOfBirth,
  email_id as EmailID,
  phone_number as PhoneNumber,
  course_name as CourseName,
  department as Department,
  admission_date as AdmissionDate,
  previous_qualification as PreviousQualification,
  percentage as Percentage,
  status as Status,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt
}
