# -*-Shell-script-*-
#

. ${BASH_SOURCE[0]%/*}/base.sh

task_create() {
  # https://www.hipchat.com/docs/api/method/rooms/create
  call_api -X POST $(urlencode_data \
    $(add_param auth_token   string required) \
    $(add_param name         string required) \
    $(add_param privacy      string optional) \
    $(add_param topic        string optional) \
    $(add_param guest_access string optional) \
    $(add_param format       string optional) \
  ) \
  $(base_uri)/${namespace}/${cmd}
}

task_delete() {
  # https://www.hipchat.com/docs/api/method/rooms/delete
  call_api -X POST $(urlencode_data \
    $(add_param auth_token   string required) \
    $(add_param room_id      string required) \
    $(add_param format       string optional) \
  ) \
  $(base_uri)/${namespace}/${cmd}
}

task_history() {
  # https://www.hipchat.com/docs/api/method/rooms/history
  call_api -X GET $(urlencode_data \
    $(add_param auth_token   string required) \
    $(add_param room_id      string required) \
    $(add_param date         string required) \
    $(add_param timezone     string optional) \
    $(add_param format       string optional) \
  ) \
  $(base_uri)/${namespace}/${cmd}
}

task_message() {
  # https://www.hipchat.com/docs/api/method/rooms/message
  call_api -X POST $(urlencode_data \
    $(add_param auth_token   string required) \
    $(add_param room_id      string required) \
    $(add_param from         string required) \
    $(add_param message     strfile required) \
    $(add_param notify       string optional) \
    $(add_param color        string optional) \
    $(add_param format       string optional) \
  ) \
  $(base_uri)/${namespace}/${cmd}
}

task_topic() {
  # https://www.hipchat.com/docs/api/method/rooms/topic
  call_api -X POST $(urlencode_data \
    $(add_param auth_token   string required) \
    $(add_param room_id      string required) \
    $(add_param topic        string required) \
    $(add_param from         string optional) \
    $(add_param format       string optional) \
  ) \
  $(base_uri)/${namespace}/${cmd}
}

task_show() {
  # https://www.hipchat.com/docs/api/method/rooms/history
  call_api -X GET $(urlencode_data \
    $(add_param auth_token   string required) \
    $(add_param room_id      string required) \
    $(add_param format       string optional) \
  ) \
  $(base_uri)/${namespace}/${cmd}
}
