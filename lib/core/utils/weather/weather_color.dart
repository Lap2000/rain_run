import 'package:flutter/material.dart';

import '../../../presentation/models/weather_model.dart';

List<Color> setBackgroundColorBasedOnWeather(WeatherConditionModel? weather) {
  try {
    final String? weatherMain = weather?.main;
    final String? weatherIcon = weather?.icon;

    List<Color> newBackgroundColors;

    final bool isDay = weatherIcon?.endsWith('d') ?? true;
    final String dayOrNightKey = isDay ? 'day' : 'night';

    newBackgroundColors =
        _weatherColorMap[weatherMain]?[dayOrNightKey] ?? _defaultColors[dayOrNightKey]!;

    return newBackgroundColors;
  } catch (error) {
    return <Color>[];
  }
}

Map<String, Map<String, List<Color>>> _weatherColorMap = <String, Map<String, List<Color>>>{
  'Clear': <String, List<Color>>{
    'day': <Color>[const Color(0xFF87CEEB), const Color(0xFF6495ED)], // Ngày trong xanh
    'night': <Color>[const Color(0xFF283655), const Color(0xFF4D648D)], // Đêm trong xanh
  },
  'Clouds': <String, List<Color>>{
    'day': <Color>[const Color(0xFFB0C4DE), const Color(0xFFD3D3D3)], // Mây ngày
    'night': <Color>[const Color(0xFF5A6D7E), const Color(0xFF3A4750)], // Mây đêm
  },
  'Rain': <String, List<Color>>{
    'day': <Color>[const Color(0xFF708090), const Color(0xFF8C9CAE)], // Mưa ngày
    'night': <Color>[const Color(0xFF4F6274), const Color(0xFF3B4C5A)], // Mưa đêm
  },
  'Drizzle': <String, List<Color>>{
    // Drizzle cũng có thể dùng chung màu với Rain
    'day': <Color>[const Color(0xFF708090), const Color(0xFF8C9CAE)], // Mưa phùn ngày
    'night': <Color>[const Color(0xFF4F6274), const Color(0xFF3B4C5A)], // Mưa phùn đêm
  },
  'Thunderstorm': <String, List<Color>>{
    'day': <Color>[const Color(0xFF4682B4), const Color(0xFF2F4F4F)], // Sấm sét ngày
    'night': <Color>[const Color(0xFF2A4A6A), const Color(0xFF1A2F3F)], // Sấm sét đêm
  },
  'Snow': <String, List<Color>>{
    'day': <Color>[const Color(0xFFADD8E6), const Color(0xFFB0C4DE)], // Tuyết ngày
    'night': <Color>[const Color(0xFFD6D6FF), const Color(0xFFC0C0F0)], // Tuyết đêm
  },
  // Các trạng thái sương mù/khói tương tự nhau
  'Mist': <String, List<Color>>{
    'day': <Color>[
      const Color(0xFFDCDCDC),
      const Color(0xFFC0C0C0)
    ], // Sương mù ngày (xám nhạt điển hình)
    'night': <Color>[
      const Color(0xFFA9A9A9),
      const Color(0xFF808080)
    ], // Sương mù đêm (xám đậm hơn)
  },
  'Smoke': <String, List<Color>>{
    'day': <Color>[
      const Color(0xFFB2B2B2),
      const Color(0xFFA8A8A8)
    ], // Khói ngày (xám trung bình, hơi ám vàng)
    'night': <Color>[const Color(0xFF696969), const Color(0xFF4F4F4F)], // Khói đêm (xám đậm hơn)
  },
  'Haze': <String, List<Color>>{
    'day': <Color>[
      const Color(0xFFC8D0D8),
      const Color(0xFFD4DBE2)
    ], // Haze ngày (xám xanh nhạt, bầu không khí mờ)
    'night': <Color>[
      const Color(0xFF7F8C9B),
      const Color(0xFF6D7C8A)
    ], // Haze đêm (xám xanh đậm hơn)
  },
  'Dust': <String, List<Color>>{
    'day': <Color>[
      const Color(0xFFD1C1AA),
      const Color(0xFFC7B599)
    ], // Bụi ngày (tông nâu vàng nhạt)
    'night': <Color>[
      const Color(0xFF8B735F),
      const Color(0xFF7A6450)
    ], // Bụi đêm (tông nâu vàng đậm)
  },
  'Fog': <String, List<Color>>{
    'day': <Color>[
      const Color(0xFFEAEAEA),
      const Color(0xFFD8D8D8)
    ], // Sương mù dày đặc ngày (rất nhạt, gần trắng)
    'night': <Color>[
      const Color(0xFFBCBCBC),
      const Color(0xFFA0A0A0)
    ], // Sương mù dày đặc đêm (xám nhạt)
  },
  'Sand': <String, List<Color>>{
    'day': <Color>[
      const Color(0xFFD2B48C),
      const Color(0xFFC3A06B)
    ], // Cát ngày (tông be, vàng cát)
    'night': <Color>[const Color(0xFF9C7F5F), const Color(0xFF8A6E4D)], // Cát đêm (tông be đậm hơn)
  },
  'Ash': <String, List<Color>>{
    'day': <Color>[const Color(0xFFA9A9A9), const Color(0xFF8D8D8D)], // Tro ngày (xám tro)
    'night': <Color>[const Color(0xFF545454), const Color(0xFF3D3D3D)], // Tro đêm (xám than)
  },
  'Squall': <String, List<Color>>{
    'day': <Color>[
      const Color(0xFF778899),
      const Color(0xFF696969)
    ], // Gió giật ngày (xám xanh hơi tối)
    'night': <Color>[const Color(0xFF475A6C), const Color(0xFF363636)], // Gió giật đêm (tối hơn)
  },
  'Tornado': <String, List<Color>>{
    'day': <Color>[
      const Color(0xFF505050),
      const Color(0xFF303030)
    ], // Lốc xoáy ngày (xám đen u ám)
    'night': <Color>[const Color(0xFF202020), const Color(0xFF101010)], // Lốc xoáy đêm (rất tối)
  },
};

final Map<String, List<Color>> _defaultColors = <String, List<Color>>{
  'day': <Color>[const Color(0xFFADD8E6), const Color(0xFFB0E0E6)], // Màu mặc định ban ngày
  'night': <Color>[const Color(0xFF2C3E50), const Color(0xFF34495E)], // Màu mặc định ban đêm
};
