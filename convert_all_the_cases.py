import unittest

# Here's our "unit".
def change_case(identifier, targetCase):
    if targetCase == "snake":
        list(identifier)
    elif targetCase == "camel":

    elif targetCase == "kebab":

    else :
        return None
# Here's our "unit tests".
class changeCaseTests(unittest.TestCase):

    def testOne(self):
        i =
        t =
        self.failUnless(i.change_case(1))

    def testTwo(self):
        self.failIf(IsOdd(2))

def main():
    unittest.main()

if __name__ == '__main__':
    main()
