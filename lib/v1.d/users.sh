# -*-Shell-script-*-
#

. ${BASH_SOURCE[0]%/*}/base.sh

task_create() {
  # https://www.hipchat.com/docs/api/method/users/create
  call_api -X POST $(urlencode_data \
    $(add_param auth_token      string required) \
    $(add_param email           string required) \
    $(add_param name            string optional) \
    $(add_param mention_name    string optional) \
    $(add_param title           string optional) \
    $(add_param is_group_admin  string optional) \
    $(add_param password        string optional) \
    $(add_param timezone        string optional) \
    $(add_param format          string optional) \
  ) \
  $(base_uri)/${namespace}/${cmd}
}

task_delete() {
  # https://www.hipchat.com/docs/api/method/users/delete
  call_api -X POST $(urlencode_data \
    $(add_param auth_token      string required) \
    $(add_param user_id         string required) \
    $(add_param format          string optional) \
  ) \
  $(base_uri)/${namespace}/${cmd}
}

task_list() {
  # https://www.hipchat.com/docs/api/method/users/list
  call_api -X GET $(urlencode_data \
    $(add_param auth_token      string required) \
    $(add_param include_deleted string optional) \
    $(add_param format          string optional) \
  ) \
  $(base_uri)/${namespace}/${cmd}
}

task_show() {
  # https://www.hipchat.com/docs/api/method/users/show
  call_api -X GET $(urlencode_data \
    $(add_param auth_token      string required) \
    $(add_param user_id         string required) \
    $(add_param format          string optional) \
  ) \
  $(base_uri)/${namespace}/${cmd}
}

task_undelete() {
  # https://www.hipchat.com/docs/api/method/users/undelete
  call_api -X POST $(urlencode_data \
    $(add_param auth_token      string required) \
    $(add_param user_id         string required) \
    $(add_param format          string optional) \
  ) \
  $(base_uri)/${namespace}/${cmd}
}

task_update() {
  # https://www.hipchat.com/docs/api/method/users/update
  call_api -X POST $(urlencode_data \
    $(add_param auth_token      string required) \
    $(add_param user_id         string required) \
    $(add_param email           string required) \
    $(add_param name            string optional) \
    $(add_param mention_name    string optional) \
    $(add_param title           string optional) \
    $(add_param is_group_admin  string optional) \
    $(add_param password        string optional) \
    $(add_param timezone        string optional) \
    $(add_param format          string optional) \
  ) \
  $(base_uri)/${namespace}/${cmd}
}
