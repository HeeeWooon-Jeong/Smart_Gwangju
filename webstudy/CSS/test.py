score_list = [['김미희', 89, 78, 99], ['서대희', 67, 88, 77], ['강예진', 100, 55, 96],['차현석',75,100,60]]  grades = {'A': 90, 'B': 80, 'C': 70, 'D': 60}  header = "이름  python      java      db      평균      학점" print(header)  for student in score_list:     name = student[0]     scores = student[1:]     average = sum(scores) / len(scores)     grade = ''     for key, value in grades.items():         if average >= value:             grade = key             break     row = f"{name:<5} "     row += ' '.join(f"{score:^7}" for score in scores)     row += f"    {average:^5.2f}       {grade}"     print(row)