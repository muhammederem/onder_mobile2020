String returnDate(String realDate, [bool check = false]) {
  String year = realDate.substring(0, 4);
  String month = realDate.substring(4, 6);
  String day = realDate.substring(6, 8);

  String date;

  switch (month) {
    case "01":
      {
        date = day + " Ocak";
      }
      break;
    case "02":
      {
        date = day + " Şubat";
      }
      break;
    case "03":
      {
        date = day + " Mart";
      }
      break;
    case "04":
      {
        date = day + " Nisan";
      }
      break;
    case "05":
      {
        date = day + " Mayıs";
      }
      break;
    case "06":
      {
        date = day + " Haziran";
      }
      break;
    case "07":
      {
        date = day + " Temmuz";
      }
      break;
    case "08":
      {
        date = day + " Ağustos";
      }
      break;
    case "09":
      {
        date = day + " Eylül";
      }
      break;
    case "10":
      {
        date = day + " Ekim";
      }
      break;
    case "11":
      {
        date = day + " Kasım";
      }
      break;
    case "12":
      {
        date = day + " Aralık";
      }
      break;
  }
  if (check) {
    return date + " " + year;
  } else {
    return date;
  }
}
