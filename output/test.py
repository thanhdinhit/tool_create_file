# test.py
import os
import sys

strInit = "DinhNT"
def echo(phrase: str):
    print(phrase)

def main():
    phrase = strInit
    echo(phrase)
    return 0

if __name__ == '__main__':
    sys.exit(main())