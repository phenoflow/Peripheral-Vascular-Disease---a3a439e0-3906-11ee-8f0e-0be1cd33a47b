# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2023.

import sys, csv, re

codes = [{"code":"14AG.00","system":"readv2"},{"code":"2I17.00","system":"readv2"},{"code":"F05..00","system":"readv2"},{"code":"G80..00","system":"readv2"},{"code":"G800.00","system":"readv2"},{"code":"G800.11","system":"readv2"},{"code":"G800.12","system":"readv2"},{"code":"G800000","system":"readv2"},{"code":"G800100","system":"readv2"},{"code":"G800200","system":"readv2"},{"code":"G800300","system":"readv2"},{"code":"G800400","system":"readv2"},{"code":"G800500","system":"readv2"},{"code":"G800z00","system":"readv2"},{"code":"G801.00","system":"readv2"},{"code":"G801000","system":"readv2"},{"code":"G801100","system":"readv2"},{"code":"G801200","system":"readv2"},{"code":"G801400","system":"readv2"},{"code":"G801500","system":"readv2"},{"code":"G801600","system":"readv2"},{"code":"G801700","system":"readv2"},{"code":"G801800","system":"readv2"},{"code":"G801900","system":"readv2"},{"code":"G801A00","system":"readv2"},{"code":"G801B00","system":"readv2"},{"code":"G801z00","system":"readv2"},{"code":"G802.00","system":"readv2"},{"code":"G80y.00","system":"readv2"},{"code":"G80y.11","system":"readv2"},{"code":"G80y000","system":"readv2"},{"code":"G80y200","system":"readv2"},{"code":"G80y300","system":"readv2"},{"code":"G80y400","system":"readv2"},{"code":"G80y500","system":"readv2"},{"code":"G80y600","system":"readv2"},{"code":"G80y700","system":"readv2"},{"code":"G80y800","system":"readv2"},{"code":"G80y900","system":"readv2"},{"code":"G80yz00","system":"readv2"},{"code":"G80z.00","system":"readv2"},{"code":"G80z000","system":"readv2"},{"code":"G80z100","system":"readv2"},{"code":"G80zz00","system":"readv2"},{"code":"G821.00","system":"readv2"},{"code":"G836.00","system":"readv2"},{"code":"Gyu8000","system":"readv2"},{"code":"Gyu8100","system":"readv2"},{"code":"J621.11","system":"readv2"},{"code":"L412.00","system":"readv2"},{"code":"L412000","system":"readv2"},{"code":"L412211","system":"readv2"},{"code":"L412400","system":"readv2"},{"code":"L412500","system":"readv2"},{"code":"L412511","system":"readv2"},{"code":"L412600","system":"readv2"},{"code":"L412611","system":"readv2"},{"code":"L412z00","system":"readv2"},{"code":"L415.00","system":"readv2"},{"code":"L415000","system":"readv2"},{"code":"L415100","system":"readv2"},{"code":"L415300","system":"readv2"},{"code":"L415600","system":"readv2"},{"code":"L41z511","system":"readv2"},{"code":"SP12000","system":"readv2"},{"code":"SP12100","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('peripheral-vascular-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["peripheral-vascular-disease-thombophlebitis---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["peripheral-vascular-disease-thombophlebitis---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["peripheral-vascular-disease-thombophlebitis---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
