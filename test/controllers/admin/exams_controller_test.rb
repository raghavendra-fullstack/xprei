require "test_helper"

class Admin::ExamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_exam = admin_exams(:one)
  end

  test "should get index" do
    get admin_exams_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_exam_url
    assert_response :success
  end

  test "should create admin_exam" do
    assert_difference("Admin::Exam.count") do
      post admin_exams_url, params: { admin_exam: { description: @admin_exam.description, duration_minutes: @admin_exam.duration_minutes, instructor_id: @admin_exam.instructor_id, max_attempts: @admin_exam.max_attempts, title: @admin_exam.title } }
    end

    assert_redirected_to admin_exam_url(Admin::Exam.last)
  end

  test "should show admin_exam" do
    get admin_exam_url(@admin_exam)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_exam_url(@admin_exam)
    assert_response :success
  end

  test "should update admin_exam" do
    patch admin_exam_url(@admin_exam), params: { admin_exam: { description: @admin_exam.description, duration_minutes: @admin_exam.duration_minutes, instructor_id: @admin_exam.instructor_id, max_attempts: @admin_exam.max_attempts, title: @admin_exam.title } }
    assert_redirected_to admin_exam_url(@admin_exam)
  end

  test "should destroy admin_exam" do
    assert_difference("Admin::Exam.count", -1) do
      delete admin_exam_url(@admin_exam)
    end

    assert_redirected_to admin_exams_url
  end
end
