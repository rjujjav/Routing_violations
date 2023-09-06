
import oa, sys

techlib = oa.oaLib.open("NCSU_TechLib_FreePDK15","/mnt/designkits/ncsu/FreePDK15/cdslib/NCSU_TechLib_FreePDK15")
tech = oa.oaTech.open(techlib)
lib = oa.oaLib.open("newlib","./newlib")
des = oa.oaDesign.open("newlib",sys.argv[1],"layout","r")
blk = des.getTopBlock()
ns = oa.oaNativeNS()
pst=oa.oaType('PathSeg')
p1=oa.oaPoint()
p2=oa.oaPoint()
netlength={}
for shape in blk.getShapes():
  ln=shape.getLayerNum()
  ln=oa.oaLayer.find(tech,ln)
  if ln:
    ln=ln.getName()
  else:
    ln='(none)'
  pn=shape.getPurposeNum()
  pn=oa.oaPurpose.find(tech,pn)
  pn=pn.getName()
  nn=shape.getNet()
  if nn:
    nn=nn.getName()
  else:
    nn='None'
  t=shape.getType()
  if t==pst:
    shape.getPoints(p1,p2)
    pathlen=(abs(p1[0]-p2[0])+abs(p1[1]-p2[1]))/2000
    if nn in netlength:
      netlength[nn]+=pathlen
    else:
      netlength[nn]=pathlen
    t=t.getName()
    print(f"{t} ({ln} {pn}) {nn} ({p1[0]/2000} {p1[1]/2000}) ({p2[0]/2000} {p2[1]/2000})")
  else:
    t=t.getName()
    print(f"{t} ({ln} {pn}) {nn}")

total=0
for nn in netlength:
  if nn not in ('VDD','VSS'):
    total+=netlength[nn]
print("Total length",total)


