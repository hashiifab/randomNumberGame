import 'dart:io';
import 'dart:math';

int generateRandomNumber() {
  var random = Random();
  return random.nextInt(100) + 1;
}

void main() {
  int randomNumber = generateRandomNumber();
  int attempts = 0;
  bool guessedCorrectly = false;
  
  print("Selamat datang di Judi Halal");
  print("Tebak angka antara 1 hingga 100.");

  while (!guessedCorrectly) {
    attempts++;
    stdout.write("Masukkan angka: ");
    int? guess = int.tryParse(stdin.readLineSync()!);

    if (guess == null) {
      print("Angka gak valid.");
      continue;
    }

    if (guess < randomNumber) {
      print("Kekurangan.");
    } else if (guess > randomNumber) {
      print("Kelebihan.");
    } else {
      guessedCorrectly = true;
      print(
          "Hoki sekali seumur hidup anda telah dipakai dalam $attempts kali tebakan.");
    }
  }
}
