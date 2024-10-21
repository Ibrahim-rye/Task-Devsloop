require "minitest/autorun"
require_relative "person"

class TestPerson < Minitest::Test
  # name, email, age

  def setup
    @person = Person.new("Matt", 32, "mt@gmail.com")
  end

  def test_name
    assert_equal("Matt", @person.name)  
  end

  def test_age
    assert_equal(32, @person.age)
  end

  def test_email
    assert_equal("mt@gmail.com", @person.email)
  end

  def test_greet
    assert_equal("Hello, my name is Matt", @person.greet)
  end

  def test_is_adult
    assert(@person.is_adult?)
  end

  def test_not_adult
    person = Person.new("Jane", 12, "jn@gmail.com")
    refute(person.is_adult?)
  end

end