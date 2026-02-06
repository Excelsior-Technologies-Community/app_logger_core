## app_logger_core

app_logger_code is a simple Flutter logging library that shows clear, designed logs in the terminal.

It helps developers quickly understand info, warning, error, success, and debug logs without showing anything in the app UI.


-----------------------------------------------------

## Features

- Terminal-only logs
- Info, Success, Warning, Error, Debug levels
- Emoji-based log identification
- Color-coded logs
- Timestamp support
- Custom log tags
- No UI impact


------------------------------------------------------

## Preview (Terminal)


<img width="1917" height="1001" alt="Screenshot 2026-02-06 152707" src="https://github.com/user-attachments/assets/5367a0db-4971-47c1-b508-929a96cadf9c" />

<img width="1919" height="1021" alt="Screenshot 2026-02-06 150724" src="https://github.com/user-attachments/assets/df7a5d4a-6d0b-4442-9a06-0048987ebbc6" />

```
ℹ️ [MAIN] Application started
✅ [AUTH] Login successful
⚠️ [API] Slow response
❌ [API] Request failed
🐛 [DEBUG] Button clicked
```

-------------------------------------------------------

## Installation

Add this to `pubspec.yaml`:
```
app_logger_code:
git:
url: https://github.com/Excelsior-Technologies-Community/app_logger_core/edit/stage
```
then run:
```
flutter pub get
```

-------------------------------------------------------

## File Structure
```
app_logger_code/
│
├─ lib/
│   ├─ app_logger_core.dart        # Main public library file (exports logger & log levels)
│   │
│   └─ src/
│       ├─ app_logger.dart         # Core logger logic (formats & prints logs)
│       ├─ log_level.dart          # Log level enum (info, success, warning, error, debug)
│       └─ log_style.dart          # Terminal colors & styles (ANSI codes)
│
├─ example/
│   └─ main.dart                   # Example Flutter app showing how to use the logger
│
├─ pubspec.yaml                    
├─ README.md                       
└─ LICENSE                        
```

-------------------------------------------------------

## Usage
```
import 'package:app_logger_code/app_logger_core.dart';

AppLogger.log('App started');

AppLogger.log(
  'Login successful',
  level: LogLevel.success,
  tag: 'AUTH',
);
```

----------------------------------------------------------

## How It Works
```
This package uses dart:developer to print logs.

No widgets, dialogs, overlays, or UI elements are used.
Logs are shown only in the terminal/debug console
```

--------------------------------------------------------

## Disable Logs in Release
```
AppLogger.enableLogs = !bool.fromEnvironment('dart.vm.product');
```

--------------------------------------------------------

## MIT License
```
Copyright (c) 2026

Permission is hereby granted, free of charge, to any person obtaining a copy
of this app_logger_code library and associated documentation files
(the “Software”), to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY...
```
