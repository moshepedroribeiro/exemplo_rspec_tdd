require 'student'
require 'course'

describe 'Mocks' do
  it '#bar' do
    # Setup
    student = Student.new

    # Verify
    expect(student).to receive(:bar)

    # Exercise
    student.bar
  end

  it 'args' do
    student = Student.new
    expect(student).to receive(:foo).with(123)
    student.foo(123)
  end

  it 'repeticao' do
    student = Student.new
    expect(student).to receive(:foo).with(123).twice
    student.foo(123)
    student.foo(123)
  end

  it 'return' do
    student = Student.new
    expect(student).to receive(:foo).with(123).and_return('Banana')
    puts student.foo(123)
  end
end