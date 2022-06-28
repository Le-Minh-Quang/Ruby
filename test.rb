# 1 Mỗi Person có 2 instance variable là 'name' và 'age'. Tạo setter và getter cho 'name' và 'age'
class Person
    # 3Class Person có 1 class variable là count.
    @@count=0
    # 2 Khi khởi tạo 1 Person có thể truyền 'name' và 'age'
    def initialize(name, age)
        @name = name
        @age = age
        # 4Mỗi lần khởi tạo 1 Person thì biến count sẽ tăng lên 1.
        @@count+=1
    end
    def setname(name)
        @name = name
    end

    def setage(age)
        @age=age
    end
    def getage
        return @age
    end
    def getname
        return @name
    end
    def prints
        puts"Name : #{@name} Age: #{@age}" 
    end
    # 5 Person có 1 instane method tên là 'introduce' sẽ in ra kết quả là: "My name is [name của person đó]. I'm [age của person đó] years old".
    def introduce
        print "My name is #{@name}. I'm #{@age}years old"
    end
    #6 Person có 1 class method tên là 'total_count' sẽ in ra kết quả là: "Total number of people is [tổng số Person đã được tạo]"
    def total_count
        print("Total number of people is #{@@count}")
    end
    def sum1
        @age+=1
    end
 end
 person = Person.new("quang",20)
 puts person.getage
 puts person.getname
 person.setname("quang+1")
 person.setage(21)
 puts person.getage
 puts person.getname
 person.introduce
 person.prints
 #7 Dùng hàm 'times' tạo 1 mảng 'people' gồm 20 person với name là 'Person 1' cho đến 'Person 20', age của mỗi Person random từ 10 -> 90
 array=[]
 20.times{
    |i|
    newPerson=Person.new("Quang"+" #{i+1}",rand(10..90))
    array.push(newPerson)
 }
 20.times{
    |i|
    if(array[i].getage<18)
        array[i].prints
    end
 }
8 Với mảng 'people' lọc ra những Person có tuổi nhỏ hơn 18
 20.times{
    |i|
    if(array[i].getage<18)
        array.delete_at(i)
    end
}
#9 Với mảng 'people' xóa những Person có tuổi nhỏ hơn 18
array.delete_if{|person| person.getage<18}
#10 Sort mảng 'people' theo tuổi tăng dần.
 array.sort!{|a,b| a.getage<=>b.getage}
array.sort!{|a,b| b.getage<=>a.getage}
array.delete_at(1)
array.each do |i| 
    i.prints
 end
 array.map{|i|}
#16 Tạo 1 mảng 'people_2' tương tự câu 7, nối mảng 'people_2' vào 'people'
array1=[]
 20.times{
    |i|
    newPerson=Person.new("Quang"+" #{i+1}",rand(10..90))
    array1.push(newPerson)
 }
 array+=array1
 array.each do |i| 
    i.prints
 end
 puts array.length
 #Không dùng vòng lặp (dùng CÁC hàm của Array) lấy ra tất cả các 'age' của các Person trong mảng 'person'
 puts array.map{|p| p.getage}
 #14 Dùng CÁC vòng lặp trong Ruby và CÁC hàm (khả thi) của Array để tăng tuổi của từng Person trong mảng 'people' lên 1.
 array.map{|p| p.sum1}
 array.each do |i| 
    i.prints
 end
 array.delete_at(2)
 #13 Xem phần module enumerable của Ruby: https://ruby-doc.org/core-2.5.1/Enumerable.html (Array và Hash trong Ruby có include module này) để tìm ra Person lớn tuổi nhất, Person nhỏ tuổi nhất.
a= array.minmax { |a, b| a.getage <=> b.getage }
puts a[0].getage
puts a[1].getage
b =[1,2,3,4,5,3,4,2,3,2]
puts b.index(2);
c = [ "a", "b", "c", "d" ]
puts [[:foo, :bar], [1, 2]].to_h