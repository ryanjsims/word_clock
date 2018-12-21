import pcbnew

def moveModule(this, ref, mmx, mmy, deg):
    mod = this.FindModuleByReference(ref)
    mod.SetPosition(pcbnew.wxPoint(mmx * 1000000, mmy * 1000000))
    mod.SetOrientationDegrees(deg)

def moveLEDs(this, mmxStart, mmyStart, mmSpacing, rows, cols):
    for i in range(rows):
        for j in range(cols):
            moveModule(this, "D" + str((i+1) + (j * rows)), mmxStart + mmSpacing * j, mmyStart + mmSpacing * i, 90.0)
