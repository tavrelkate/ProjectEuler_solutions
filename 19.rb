#start_data

day = 0

mounth = 1

year = 1900

year_start_count = 1901

year_end_count = 2001

mounth_with_31 = [1, 3, 5, 7, 8, 10, 12]

mounth_with_30 = [4, 6, 9, 11]

count = 0

def Febrary_leap?(day, year)

	if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)

		return true

	else

		return false
	end
end

while (year < year_end_count)

	(1..7).each { |day_of_week|

		day += 1

		p "#{year} #{mounth} #{day} #{day_of_week}"

		if (day == 31 && mounth_with_31.include?(mounth)) ||

			 (day == 30 && mounth_with_30.include?(mounth)) ||

				(mounth == 2 && Febrary_leap?(day, year) && day == 29) || 
				
					(mounth == 2 && !Febrary_leap?(day, year) && day == 28)

			day = 0

			if mounth == 12 

				mounth = 1 

				year += 1
			else 

				mounth += 1
			end

		end

		break if (year == year_end_count)

	}
	
	if (day == 1 && year >= year_start_count)

		count += 1 
	end
end

print " count : #{count} "
