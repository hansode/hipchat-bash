# -*-Shell-script-*-
#

. ${BASH_SOURCE[0]%/*}/base.sh

task_history() {
  # https://www.hipchat.com/docs/apiv2/method/view_room_history
  call_api -X GET $(urlencode_data \
  ) \
  $(base_uri)/${namespace}/${room_id}/${cmd}?$(query_string \
    $(add_param auth_token   string required) \
    $(add_param format       string optional) \
    $(add_param date         string required) \
    $(add_param timezone     string optional) \
  )
}

task_list() {
  # https://www.hipchat.com/docs/apiv2/method/get_all_rooms
  call_api -X GET $(urlencode_data \
  ) \
  $(base_uri)/${namespace}?$(query_string \
    $(add_param auth_token   string required) \
    $(add_param format       string optional) \
  )
}
