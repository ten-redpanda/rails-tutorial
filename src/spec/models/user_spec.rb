require "rails_helper"

RSpec.describe User, type: :model do
  let(:valid_data) {
    User.new(name: "Example User", email: "user@example.com", password: "foobar", password_confirmation: "foobar")
  }

  it("should be valid") do
    expect(valid_data.valid?).to eq true
  end

  it("name should be present") do
    valid_data.name = "  "
    expect(valid_data.valid?).to eq false
  end

  it("email should be present") do
    valid_data.email = "  "
    expect(valid_data.valid?).to eq false
  end

  it("name should not be too long") do
    valid_data.name = "a" * 51
    expect(valid_data.valid?).to eq false
  end

  it("email should not be too long") do
    valid_data.email = "a" * 244 + "@example.com"
    expect(valid_data.valid?).to eq false
  end

  it("email validation should reject invalid addresses") do
    valid_data.email = "user@example,com"
    expect(valid_data.valid?).to eq false

    valid_data.email = "user_at_foo.org"
    expect(valid_data.valid?).to eq false

    valid_data.email = "user.name@example."
    expect(valid_data.valid?).to eq false

    valid_data.email = "foo@bar_baz.com"
    expect(valid_data.valid?).to eq false

    valid_data.email = "foo@bar+baz.com"
    expect(valid_data.valid?).to eq false
  end

  it("email addresses should be unique") do
    duplicate_user = valid_data.dup
    valid_data.save!
    expect(duplicate_user.valid?).to eq false
  end

  it("email addresses should be unique (upcase)") do
    duplicate_user = valid_data.dup
    duplicate_user.email = duplicate_user.email.upcase
    valid_data.save!
    expect(duplicate_user.valid?).to eq false
  end

  it("email addresses should be saved as lower-case") do
    mixed_case_email = "Foo@ExAMPle.CoM"
    valid_data.email = mixed_case_email
    valid_data.save!
    expect(valid_data.reload.email).to eq mixed_case_email.downcase
  end

  context "password validation test" do
    it("password should be present (noblank)") do
      valid_data.password = valid_data.password_confirmation = " " * 6
      expect(valid_data.valid?).to eq false
    end

    it("password should have a minimum length") do
      valid_data.password = valid_data.password_confirmation = "a" * 5
      expect(valid_data.valid?).to eq false
    end
  end
end
