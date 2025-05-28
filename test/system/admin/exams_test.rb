require "application_system_test_case"

class Admin::ExamsTest < ApplicationSystemTestCase
  setup do
    @admin_exam = admin_exams(:one)
  end

  test "visiting the index" do
    visit admin_exams_url
    assert_selector "h1", text: "Exams"
  end

  test "should create exam" do
    visit admin_exams_url
    click_on "New exam"

    fill_in "Description", with: @admin_exam.description
    fill_in "Duration minutes", with: @admin_exam.duration_minutes
    fill_in "Instructor", with: @admin_exam.instructor_id
    fill_in "Max attempts", with: @admin_exam.max_attempts
    fill_in "Title", with: @admin_exam.title
    click_on "Create Exam"

    assert_text "Exam was successfully created"
    click_on "Back"
  end

  test "should update Exam" do
    visit admin_exam_url(@admin_exam)
    click_on "Edit this exam", match: :first

    fill_in "Description", with: @admin_exam.description
    fill_in "Duration minutes", with: @admin_exam.duration_minutes
    fill_in "Instructor", with: @admin_exam.instructor_id
    fill_in "Max attempts", with: @admin_exam.max_attempts
    fill_in "Title", with: @admin_exam.title
    click_on "Update Exam"

    assert_text "Exam was successfully updated"
    click_on "Back"
  end

  test "should destroy Exam" do
    visit admin_exam_url(@admin_exam)
    click_on "Destroy this exam", match: :first

    assert_text "Exam was successfully destroyed"
  end
end
