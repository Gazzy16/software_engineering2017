$(() => {
  let users = $('#subscription_user_user_id').html()
  console.log(users)
  return $('#subscription_user_user_id').change(() => {
    let users = $('#subscription_user_user_id :selected').text()
  })
})
