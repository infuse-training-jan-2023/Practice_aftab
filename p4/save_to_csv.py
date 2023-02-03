import csv
def save_to_csv(data):
    filename  = 'records'
    with open(filename, 'w', newline='') as file:
        writer = csv.writer(file)
        for row in list(data):
            writer.writerow(row)
