# @param when
#   When  Enum['@yearly','@monthly','@weekly','@daily','@hourly','@annually','@midnight']
#   Every Enum['sec','min', 'hour','day', 'week']
function nxlog::partial_schedule(
    Enum['When','Every'] $keyword,
    String $period,
    String $exec,
    ) >> String {

      #TODO(optional): input validation for When/Every
      $schedule = "
          <Schedule>
            ${keyword}  ${period}
            Exec	${exec}
          </Schedule>    
          "
  }
