require 'test_helper'

class ProcessA17MartinMarkovsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @process_a17_martin_markov = process_a17_martin_markovs(:one)
  end

  test "should get index" do
    get process_a17_martin_markovs_url
    assert_response :success
  end

  test "should get new" do
    get new_process_a17_martin_markov_url
    assert_response :success
  end

  test "should create process_a17_martin_markov" do
    assert_difference('ProcessA17MartinMarkov.count') do
      post process_a17_martin_markovs_url, params: { process_a17_martin_markov: { name: @process_a17_martin_markov.name } }
    end

    assert_redirected_to process_a17_martin_markov_url(ProcessA17MartinMarkov.last)
  end

  test "should show process_a17_martin_markov" do
    get process_a17_martin_markov_url(@process_a17_martin_markov)
    assert_response :success
  end

  test "should get edit" do
    get edit_process_a17_martin_markov_url(@process_a17_martin_markov)
    assert_response :success
  end

  test "should update process_a17_martin_markov" do
    patch process_a17_martin_markov_url(@process_a17_martin_markov), params: { process_a17_martin_markov: { name: @process_a17_martin_markov.name } }
    assert_redirected_to process_a17_martin_markov_url(@process_a17_martin_markov)
  end

  test "should destroy process_a17_martin_markov" do
    assert_difference('ProcessA17MartinMarkov.count', -1) do
      delete process_a17_martin_markov_url(@process_a17_martin_markov)
    end

    assert_redirected_to process_a17_martin_markovs_url
  end
end
