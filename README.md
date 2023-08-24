# Assembly Code: Message Printer and Number Counter

This assembly code is a simple program that prints a message along with a counting number to the console. The code is written in x86 assembly language and is intended to run on DOS or a compatible environment.

## Table of Contents

- [Description](#description)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Description

The purpose of this assembly code is to demonstrate basic usage of x86 assembly language by printing a message repeatedly along with a counting number. The program uses DOS interrupt calls to achieve console output.

The code is structured as follows:

- **.data** section: This section contains the message to be printed, defined as a null-terminated string, and a variable `count` to keep track of the current count.

- **.code** section: This section contains the actual code that performs the printing and counting.

## Getting Started

To run this code, you will need an environment that supports DOS or a compatible x86 assembly environment. You might consider using an emulator or an environment that can execute 16-bit DOS programs.

## Usage

1. Assemble the code using an assembler compatible with x86 assembly (e.g., NASM).
2. Execute the generated binary in an environment that supports DOS or similar.
3. The program will repeatedly print the message "I love you" followed by a counting number from 0 to 1000.
4. The program will terminate after reaching the count of 1000.

## Contributing

Contributions to this code are welcome. If you find any issues or would like to enhance the code, feel free to open a pull request.

## License

This code is provided under the [MIT License](LICENSE). You are free to use, modify, and distribute the code in accordance with the terms of the license.

---

**Note:** This code is intended for educational and illustrative purposes. It demonstrates x86 assembly programming concepts and may not be suitable for production use. Use it at your own risk.
