"""Insert a description of this module."""
import argparse
import sys

OPTS = None

def parse_args():
    parser = argparse.ArgumentParser()
    # Add calls to parser.add_argument(...) here
    if len(sys.argv) == 1:
        parser.print_help()
        sys.exit(1)
    return parser.parse_args()

def main():
    pass

if __name__ == '__main__':
    OPTS = parse_args()
    main()
