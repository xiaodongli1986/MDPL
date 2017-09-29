
#http --auth xiaodongli:lx821118 --form --follow POST https://www.cosmosim.org/uws/query query="select x,y,z from MDR1.FOF where snapnum=85 order by mass desc limit 10" table="mytest" queue="long"
#uws --host https://www.cosmosim.org/uws/query --user xiaodongli --password lx821118 job new queue="long" query="select x,y,z from MDR1.FOF where snapnum=85 order by mass desc limit 10" table="mytest" --run
uws $cstr job new queue="long" query="select x,y,z from MDR1.FOF where snapnum=85 order by mass desc limit 10" table="mytest" --run
