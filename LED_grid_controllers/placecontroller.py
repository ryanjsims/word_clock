import pcbnew

def placeController(board, mmx, mmy, num):
    resistors = [1, 2, 3]
    for i in range(len(resistors)):
        resistors[i] += (num - 1) * 3
    transistors = [1, 2, 3]
    for i in range(len(transistors)):
        transistors[i] += (num - 1) * 3
    controller = board.FindModuleByReference("U" + str(num))
    controller.SetPosition(pcbnew.wxPoint(mmx * 1000000, mmy * 1000000))
    controller.SetOrientationDegrees(0)
    for i in range(len(resistors)):
        r = board.FindModuleByReference("R" + str(resistors[i]))
        r.SetPosition(pcbnew.wxPoint((mmx + 3.81 * (i)) * 1000000, (mmy - 15.24) * 1000000))
        r.SetOrientationDegrees(-90)
    for i in range(len(transistors)):
        q = board.FindModuleByReference("Q" + str(transistors[i]))
        q.SetPosition(pcbnew.wxPoint((mmx + 5.08 * i) * 1000000, (mmy - 21.59) * 1000000))
        q.SetOrientationDegrees(90)
    rn = board.FindModuleByReference("RN" + str(num))
    rn.SetPosition(pcbnew.wxPoint((mmx + 12.7 - 1.27) * 1000000, (mmy - 3.81) * 1000000))
    rn.SetOrientationDegrees(90)
