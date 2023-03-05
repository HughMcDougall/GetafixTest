from argparse import ArgumentParser

def main():
    ap = ArgumentParser(description='This is a test argparse file')

    ap.add_argument('-a', '--input1', metavar='A', type=int,    help='Test input number 1',         default=10)
    ap.add_argument('-b', '--input2', metavar='B', type=float,  help='Test input number 2',         default=20)
    ap.add_argument('-c', '--input3', metavar='C', type=str,    help='Test input number 3',         default="Hello")

    args = ap.parse_args()

    print(type(args.input1))
    print(type(args.input2))
    print(type(args.input3))

    print(args.input1)
    print(args.input2)
    print(args.input3)

if __name__ == "__main__":
    main()