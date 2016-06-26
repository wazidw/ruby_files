#!/usr/bin/ruby

# 输入所有TA人员名字    输入名字，使用逗号区分

print "输入所有TA人员名字,使用英文逗号区分名字: "
teachers = gets.chomp

# 输入所有到场学员的名字   输入名字，使用逗号区分

print "输入所有TA人员名字,使用英文逗号区分名字: "
students = gets.chomp

# 输入每组最高数量   输入每组随机人数

print "输入每组随机人数: "
num = gets.chomp

# # 根据 1TA vs N 学员的随机算法匹配

teacher_arr = teachers.split(",")

student_arr = students.split(",")


def pairing(teacher_arr,student_arr,num)
  teacher_arr.map do |t|
    temp = student_arr.sample(num)
    student_arr -= temp
    {t => temp}
  end  
end

pairing(teachers,students,num)
# teachers = ["wazit",'aa']
# students = ["ss",'saa']
# num = 1


# 获取所有TA人员名称，获取输入所有到场学员的名字

# 循环TA人员名称，随机获取学员名称。

# 设置匹配，并去除已匹配学员


#  输出匹配结果

