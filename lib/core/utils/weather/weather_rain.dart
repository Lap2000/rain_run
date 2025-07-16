int getRainDrops(double? rainVolume) {
  if (rainVolume == null || rainVolume <= 0) {
    return 0;
  }

  if (rainVolume < 0.5) {
    return 10;
  } else if (rainVolume < 2.5) {
    return 30;
  } else if (rainVolume < 7.6) {
    return 60;
  } else if (rainVolume < 50.0) {
    return 100;
  } else {
    return 200;
  }
}

bool checkRaining(String? weatherMain) =>
    weatherMain == 'Rain' || weatherMain == 'Drizzle' || weatherMain == 'Thunderstorm';
