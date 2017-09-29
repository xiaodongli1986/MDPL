
for ((snapnum=79;snapnum>=79;snapnum--))
do
for ((iz=1;iz<=21;iz++))
do
continue
z2=$(($iz*10))
z1=$(($z2-10))
echo $iz $z1 $z2
#http --auth xiaodongli:lx821118 --form --follow POST https://www.cosmosim.org/uws/query query="select x,y,z,vx,vy,vz,mass,fofId from MDR1.FOF where snapnum=85 and z<${z2} and z>${z1}" table="MDR1zslices.${iz}"
#http --auth xiaodongli:lx821118 --form --follow POST https://www.cosmosim.org/uws/query query="select x,y,z,vx,vy,vz,mass,fofId from BigMDPL.FOF where snapnum=85" table="MDR1zslices.${iz}"
#http --auth xiaodongli:lx821118 --form --follow POST https://www.cosmosim.org/uws/query query="SELECT * from BigMDPL.Rockstar where snapnum=${snapnum}  and z<${z2} and z>${z1}" table="BigMDPL_snapnum${snapnum}_slice${iz}" 
http --auth xiaodongli:lx821118 --form --follow POST https://www.cosmosim.org/uws/query query="SELECT DISTINCT * FROM BigMDPL.Redshifts ORDER BY snapnum DESC" table="BigMDPL_snapnum${snapnum}_slice${iz}" 
done
done


http --auth xiaodongli:lx821118 --form --follow POST https://www.cosmosim.org/uws/query query="SELECT DISTINCT * FROM BigMDPL.Redshifts ORDER BY snapnum DESC" table="BigMDPL_reds"
