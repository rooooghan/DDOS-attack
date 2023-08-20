
set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)  Phy/WirelessPhy            ;# network interface type
set val(mac)    Mac/802_11                 ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue    ;# interface queue type
set val(ll)     LL                         ;# link layer type
set val(ant)    Antenna/OmniAntenna        ;# antenna model
set val(ifqlen) 50000                         ;# max packet in ifq
set val(nn)     36                         ;# number of mobilenodes
set val(rp)     EAACK                       ;# routing protocol
set val(x)      1500                       ;# X dimension of topography
set val(y)      1500                       ;# Y dimension of topography
set val(stop)   10.0                       ;# time of simulation end
set val(threshold1)  80
set val(energy)      10


set ns [new Simulator]

set topo    [new Topography]
$topo load_flatgrid $val(x) $val(y)
create-god $val(nn)
set tracefile [open out.tr w]
$ns trace-all $tracefile
$ns use-newtrace

set f0 [open througput.tr w]
set f1 [open delivryratio.tr w]
set f2 [open packtdelay.tr w]
set f3 [open packtdropped.tr w]

set namfile [open out.nam w]
$ns namtrace-all $namfile
$ns namtrace-all-wireless $namfile $val(x) $val(y)
set chan [new $val(chan)];




$ns node-config -llType        $val(ll) \
                -macType       $val(mac) \
                -ifqType       $val(ifq) \
                -ifqLen        $val(ifqlen) \
                -antType       $val(ant) \
                -propType      $val(prop) \
                -adhocRouting  AODV \
                -phyType       $val(netif) \
                -channel       $chan \
                -topoInstance  $topo \
                -agentTrace    ON \
                -routerTrace   ON \
                -macTrace      ON \
                -movementTrace ON

$ns color 0 darkgreen
$ns color 1 blue
$ns color 2 green
$ns color 3 black
$ns color 4 red
$ns color 5 blue
$ns color 6 grey
$ns color 8 black

proc record {} {

  global sink0 sink1 sink2 sink3 sink4 sink5 sink6 sink7 sink8 sink9 sink10 sink11 sink12 sink13 sink14 sink15 sink16 sink17 sink18 sink19 sink20 sink21 sink22 sink23 sink24 sink25 sink26 sink27 sink28 sink29 sink30  f0 f1 f2 f3  
set ns [Simulator instance]
set time 0.05
   
   set bw0 [$sink0 set npkts_]
   set bw1 [$sink1 set npkts_]
   set bw2 [$sink2 set npkts_]
   set bw3 [$sink3 set npkts_]
   set bw4 [$sink4  set npkts_]
   set bw5 [$sink5 set npkts_]
   set bw6 [$sink6 set npkts_]
   set bw7 [$sink7 set npkts_]
   set bw8 [$sink8 set npkts_]
   set bw9 [$sink9 set npkts_]
   set bw10 [$sink10 set npkts_]
   set bw11 [$sink11 set npkts_]
   set bw12 [$sink12 set npkts_]
   set bw13 [$sink13 set npkts_]
   set bw14 [$sink14 set npkts_]
   set bw15 [$sink15 set npkts_]
   set bw16 [$sink16 set npkts_]
   set bw17 [$sink17 set npkts_]
   set bw18 [$sink18 set npkts_]
   set bw19 [$sink19 set npkts_]
   set bw20 [$sink20 set npkts_]
   set bw21 [$sink21 set npkts_]
   set bw22 [$sink22 set npkts_]
   set bw23 [$sink23 set npkts_]
   set bw24 [$sink24 set npkts_]
   set bw25 [$sink25 set npkts_]
   set bw26 [$sink26 set npkts_]
   set bw27 [$sink27 set npkts_]
   set bw28 [$sink28 set npkts_]
   set bw29 [$sink29 set npkts_]
   
   set energy 10
   set Size 12
 puts "No of Packets in nodes"
   puts "No of Packets in 0th node: $bw0"
   puts "No of Packets in 01th node: $bw1"
   puts "No of Packets in 02th node: $bw2"
   puts "No of Packets in 03th node: $bw3"
   puts "No of Packets in 04th node: $bw4"
   puts "No of Packets in 05th node: $bw5"
   puts "No of Packets in 06th node: $bw6"
   puts "No of Packets in 07th node: $bw7"
   puts "No of Packets in 08th node: $bw8"
   puts "No of Packets in 09th node: $bw9"
   puts "No of Packets in 10th node: $bw10"
   puts "No of Packets in 11th node: $bw11"
   puts "No of Packets in 12th node: $bw12"
   puts "No of Packets in 13th node: $bw13"
   puts "No of Packets in 14th node: $bw14"
   puts "No of Packets in 15th node: $bw15"
   puts "No of Packets in 16th node: $bw16"
   puts "No of Packets in 17th node: $bw17"
   puts "No of Packets in 18th node: $bw18"
   puts "No of Packets in 19th node: $bw19"
   puts "No of Packets in 20th node: $bw20"
   puts "No of Packets in 21th node: $bw21"
   puts "No of Packets in 22th node: $bw22"
   puts "No of Packets in 23th node: $bw23" 
   puts "No of Packets in 24th node: $bw24"
   puts "No of Packets in 25th node: $bw25"        
   puts "No of Packets in 26th node: $bw26"
   puts "No of Packets in 27th node: $bw27"
   puts "No of Packets in 28th node: $bw28"      
   puts "No of Packets in 29th node: $bw29"      
   
puts " *************************************************"
     set eg1 [expr $bw0]       
   set eg [expr $bw15]
   set band [expr $bw1]
   set estimate [expr $bw20]
   set simulate [expr $bw6]
   set bandwidth [expr $bw21]
   set ener [expr $bw11]
   set delay [expr $bw15*5.4356]
   set datarate [expr $bw16]
   set through [expr $bw17*37]
   set pdr [expr $bw1*11.56]
   set enr [expr $bw1*3.7654]
   set econ  [expr $bw3+$bw1+$bw6+$bw3]
   set id [expr $bw9*10]
   set rmr [expr $id-$bw9]
  
   
   set rmr3 [expr ($bw9*$energy)-$bw9]
   
   set node0 [expr ($bw0*$energy)-$bw0]
   set node1 [expr ($bw1*$energy)-$bw1]
   set node2 [expr ($bw2*$energy)-$bw2]
   set node3 [expr ($bw3*$energy)-$bw3]
   set node4 [expr ($bw4*$energy)-$bw4]
   set node5 [expr ($bw5*$energy)-$bw5]
   set node6 [expr ($bw6*$energy)-$bw6]
   set node7 [expr ($bw7*$energy)-$bw7]
   set node8 [expr ($bw8*$energy)-$bw8]   
   set node11 [expr ($bw11*$energy)-$bw11]
   set node12 [expr ($bw12*$energy)-$bw12]
   set node13 [expr ($bw13*$energy)-$bw13]
   set node14 [expr ($bw14*$energy)-$bw14]
   set node15 [expr ($bw15*$energy)-$bw15]
   set node16 [expr ($bw16*$energy)-$bw16]
   set node17 [expr ($bw17*$energy)-$bw17]
   set node18 [expr ($bw18*$energy)-$bw18]
   set node19 [expr ($bw19*$energy)-$bw19]
   set node29 [expr ($bw29*$energy)-$bw29]
   set node20 [expr ($bw20*$energy)-$bw20]
   set node21 [expr ($bw21*$energy)-$bw21]
   set node22 [expr ($bw13*$energy)-$bw13]
   set node23 [expr ($bw23*$energy)-$bw23]
   set node24 [expr ($bw24*$energy)-$bw24]
   set node25 [expr ($bw25*$energy)-$bw25]
   set node26 [expr ($bw26*$energy)-$bw26]
   set node27 [expr ($bw27*$energy)-$bw27]
   set node28 [expr ($bw28*$energy)-$bw28]
   
 
     
set now [$ns now]

   puts $f0 "$now [expr $bw0]"
   puts $f1 "$now [expr $bw1]"
   puts $f2 "$now [expr $bw2]"
   puts $f3 "$now [expr $bw9]"
  
   
   $ns at [expr $now+$time] "record"
   
  }

set node_(0) [$ns node]
$node_(0) set X_ 0.0
$node_(0) set Y_ 0.0
$node_(0) set Z_ 0.0
$ns initial_node_pos $node_(0) 40
set node_(1) [$ns node]
$node_(1) set X_ 0.0
$node_(1) set Y_ 0.0
$node_(1) set Z_ 0.0
$ns initial_node_pos $node_(1) 40
set node_(2) [$ns node]
$node_(2) set X_ 0.0
$node_(2) set Y_ 0.0
$node_(2) set Z_ 0.0
$ns initial_node_pos $node_(2) 40
set node_(3) [$ns node]
$node_(3) set X_ 0.0
$node_(3) set Y_ 0.0
$node_(3) set Z_ 0.0
$ns initial_node_pos $node_(3) 40
set node_(4) [$ns node]
$node_(4) set X_ 0.0
$node_(4) set Y_ 0.0
$node_(4) set Z_ 0.0
$ns initial_node_pos $node_(4) 40
set node_(5) [$ns node]
$node_(5) set X_ 0.0
$node_(5) set Y_ 0.0
$node_(5) set Z_ 0.0
$ns initial_node_pos $node_(5) 40
set node_(6) [$ns node]
$node_(6) set X_ 0.0
$node_(6) set Y_ 0.0
$node_(6) set Z_ 0.0
$ns initial_node_pos $node_(6) 40
set node_(7) [$ns node]
$node_(7) set X_ 0.0
$node_(7) set Y_ 0.0
$node_(7) set Z_ 0.0
$ns initial_node_pos $node_(7) 40
set node_(8) [$ns node]
$node_(8) set X_ 0.0
$node_(8) set Y_ 0.0
$node_(8) set Z_ 0.0
$ns initial_node_pos $node_(8) 40
set node_(9) [$ns node]
$node_(9) set X_ 0.0
$node_(9) set Y_ 0.0
$node_(9) set Z_ 0.0
$ns initial_node_pos $node_(9) 40
set node_(10) [$ns node]
$node_(10) set X_ 0.0
$node_(10) set Y_ 0.0
$node_(10) set Z_ 0.0
$ns initial_node_pos $node_(10) 40
set node_(11) [$ns node]
$node_(11) set X_ 0.0
$node_(11) set Y_ 0.0
$node_(11) set Z_ 0.0
$ns initial_node_pos $node_(11) 40
set node_(12) [$ns node]
$node_(12) set X_ 0.0
$node_(12) set Y_ 0.0
$node_(12) set Z_ 0.0
$ns initial_node_pos $node_(12) 40
set node_(13) [$ns node]
$node_(13) set X_ 0.0
$node_(13) set Y_ 0.0
$node_(13) set Z_ 0.0
$ns initial_node_pos $node_(13) 40
set node_(14) [$ns node]
$node_(14) set X_ 0.0
$node_(14) set Y_ 0.0
$node_(14) set Z_ 0.0
$ns initial_node_pos $node_(14) 40
set node_(15) [$ns node]
$node_(15) set X_ 0.0
$node_(15) set Y_ 0.0
$node_(15) set Z_ 0.0
$ns initial_node_pos $node_(15) 40
set node_(16) [$ns node]
$node_(16) set X_ 366
$node_(16) set Y_ 520
$node_(16) set Z_ 0.0
$ns initial_node_pos $node_(16) 40
set node_(17) [$ns node]
$node_(17) set X_ 9
$node_(17) set Y_ 398
$node_(17) set Z_ 0.0
$ns initial_node_pos $node_(17) 40
set node_(18) [$ns node]
$node_(18) set X_ 9
$node_(18) set Y_ 196
$node_(18) set Z_ 0.0
$ns initial_node_pos $node_(18) 40
set node_(19) [$ns node]
$node_(19) set X_ 65
$node_(19) set Y_ 636
$node_(19) set Z_ 0.0
$ns initial_node_pos $node_(19) 40
set node_(20) [$ns node]
$node_(20) set X_ 273
$node_(20) set Y_ 766
$node_(20) set Z_ 0.0
$ns initial_node_pos $node_(20) 40
set node_(21) [$ns node]
$node_(21) set X_ 513
$node_(21) set Y_ 762
$node_(21) set Z_ 0.0
$ns initial_node_pos $node_(21) 40
set node_(22) [$ns node]
$node_(22) set X_ 757
$node_(22) set Y_ 460
$node_(22) set Z_ 0.0
$ns initial_node_pos $node_(22) 40
set node_(23) [$ns node]
$node_(23) set X_ 751
$node_(23) set Y_ 274
$node_(23) set Z_ 0.0
$ns initial_node_pos $node_(23) 40
set node_(24) [$ns node]
$node_(24) set X_ 571
$node_(24) set Y_ 36
$node_(24) set Z_ 0.0
$ns initial_node_pos $node_(24) 40
set node_(25) [$ns node]
$node_(25) set X_ 159
$node_(25) set Y_ 58
$node_(25) set Z_ 0.0
$ns initial_node_pos $node_(25) 40
set node_(26) [$ns node]
$node_(26) set X_ 363
$node_(26) set Y_ 16
$node_(26) set Z_ 0.0
$ns initial_node_pos $node_(26) 40
set node_(27) [$ns node]
$node_(27) set X_ 697
$node_(27) set Y_ 648
$node_(27) set Z_ 0.0
$ns initial_node_pos $node_(27) 40
set node_(28) [$ns node]
$node_(28) set X_ 0.0
$node_(28) set Y_ 0.0
$node_(28) set Z_ 0.0
$ns initial_node_pos $node_(28) 40
set node_(29) [$ns node]
$node_(29) set X_ 673
$node_(29) set Y_ 154
$node_(29) set Z_ 0.0
$ns initial_node_pos $node_(29) 40
set node_(30) [$ns node]
$node_(30) set X_ 19
$node_(30) set Y_ 844
$node_(30) set Z_ 0.0
$ns initial_node_pos $node_(30) 40
set node_(31) [$ns node]
$node_(31) set X_ 286
$node_(31) set Y_ 899
$node_(31) set Z_ 0.0
$ns initial_node_pos $node_(31) 40
set node_(32) [$ns node]
$node_(32) set X_ 860
$node_(32) set Y_ 737
$node_(32) set Z_ 0.0
$ns initial_node_pos $node_(32) 40
set node_(33) [$ns node]
$node_(33) set X_ 965
$node_(33) set Y_ 251
$node_(33) set Z_ 0.0
$ns initial_node_pos $node_(33) 40
set node_(34) [$ns node]
$node_(34) set X_ 663
$node_(34) set Y_ 910
$node_(34) set Z_ 0.0
$ns initial_node_pos $node_(34) 40
set node_(35) [$ns node]
$node_(35) set X_ 856
$node_(35) set Y_ 20
$node_(35) set Z_ 0.0
$ns initial_node_pos $node_(35) 40


set sink0 [new Agent/LossMonitor]
set sink1 [new Agent/LossMonitor]
set sink2 [new Agent/LossMonitor]
set sink3 [new Agent/LossMonitor]
set sink4 [new Agent/LossMonitor]
set sink5 [new Agent/LossMonitor]
set sink6 [new Agent/LossMonitor]
set sink7 [new Agent/LossMonitor]
set sink8 [new Agent/LossMonitor]
set sink9 [new Agent/LossMonitor]
set sink10 [new Agent/LossMonitor]
set sink11 [new Agent/LossMonitor]
set sink12 [new Agent/LossMonitor]
set sink13 [new Agent/LossMonitor]
set sink14 [new Agent/LossMonitor]
set sink15 [new Agent/LossMonitor]
set sink16 [new Agent/LossMonitor]
set sink17 [new Agent/LossMonitor]
set sink18 [new Agent/LossMonitor]
set sink19 [new Agent/LossMonitor]
set sink20 [new Agent/LossMonitor]
set sink21 [new Agent/LossMonitor]
set sink22 [new Agent/LossMonitor]
set sink23 [new Agent/LossMonitor]
set sink24 [new Agent/LossMonitor]
set sink25 [new Agent/LossMonitor]
set sink26 [new Agent/LossMonitor]
set sink27 [new Agent/LossMonitor]
set sink28 [new Agent/LossMonitor]
set sink29 [new Agent/LossMonitor]

$ns attach-agent $node_(0) $sink0
$ns attach-agent $node_(1) $sink1
$ns attach-agent $node_(2) $sink2
$ns attach-agent $node_(3) $sink3
$ns attach-agent $node_(4) $sink4
$ns attach-agent $node_(5) $sink5
$ns attach-agent $node_(6) $sink6
$ns attach-agent $node_(7) $sink7
$ns attach-agent $node_(8) $sink8
$ns attach-agent $node_(9) $sink9
$ns attach-agent $node_(10) $sink10
$ns attach-agent $node_(11) $sink11
$ns attach-agent $node_(12) $sink12
$ns attach-agent $node_(13) $sink13
$ns attach-agent $node_(14) $sink14
$ns attach-agent $node_(15) $sink15
$ns attach-agent $node_(16) $sink16
$ns attach-agent $node_(17) $sink17
$ns attach-agent $node_(18) $sink18
$ns attach-agent $node_(19) $sink19
$ns attach-agent $node_(20) $sink20
$ns attach-agent $node_(21) $sink21
$ns attach-agent $node_(22) $sink22
$ns attach-agent $node_(23) $sink23
$ns attach-agent $node_(24) $sink24
$ns attach-agent $node_(25) $sink25
$ns attach-agent $node_(26) $sink26
$ns attach-agent $node_(27) $sink27
$ns attach-agent $node_(28) $sink28
$ns attach-agent $node_(29) $sink29

set udp0 [new Agent/UDP]
$udp0 set prio_ 1   
$ns attach-agent $node_(0) $udp0
set udp1 [new Agent/UDP]
$udp1 set prio_ 2
$ns attach-agent $node_(1) $udp1
set udp2 [new Agent/UDP]
$udp2 set prio_ 3
$ns attach-agent $node_(2) $udp2
set udp3 [new Agent/UDP]
$ns attach-agent $node_(3) $udp3
set udp4 [new Agent/UDP]
$udp4 set prio_ 4
$ns attach-agent $node_(4) $udp4
set udp5 [new Agent/UDP]
$ns attach-agent $node_(5) $udp5
set udp6 [new Agent/UDP]
$ns attach-agent $node_(6) $udp6
set udp7 [new Agent/UDP]
$ns attach-agent $node_(7) $udp7
set udp8 [new Agent/UDP]
$ns attach-agent $node_(8) $udp8
set udp9 [new Agent/UDP]
$ns attach-agent $node_(9) $udp9
set udp10 [new Agent/UDP]
$ns attach-agent $node_(10) $udp10
set udp11 [new Agent/UDP]
$udp11 set prio_ 5
$ns attach-agent $node_(11) $udp11
set udp12 [new Agent/UDP]
$udp12 set prio_ 6
$ns attach-agent $node_(12) $udp12
set udp13 [new Agent/UDP]
$udp13 set prio_ 7
$ns attach-agent $node_(13) $udp13
set udp14 [new Agent/UDP]
$udp14 set prio_ 8
$ns attach-agent $node_(14) $udp14
set udp15 [new Agent/UDP]
$ns attach-agent $node_(15) $udp15
set udp16 [new Agent/UDP]
$ns attach-agent $node_(16) $udp16
set udp17 [new Agent/UDP]
$ns attach-agent $node_(17) $udp17
set udp18 [new Agent/UDP]
$ns attach-agent $node_(18) $udp18
set udp19 [new Agent/UDP]
$ns attach-agent $node_(19) $udp19
set udp20 [new Agent/UDP]
$ns attach-agent $node_(20) $udp20
set udp21 [new Agent/UDP]
$ns attach-agent $node_(21) $udp21
set udp22 [new Agent/UDP]
$ns attach-agent $node_(22) $udp22
set udp23 [new Agent/UDP]
$ns attach-agent $node_(23) $udp23
set udp24 [new Agent/UDP]
$ns attach-agent $node_(24) $udp24
set udp25 [new Agent/UDP]
$ns attach-agent $node_(25) $udp25
set udp26 [new Agent/UDP]
$ns attach-agent $node_(26) $udp26
set udp27 [new Agent/UDP]
$ns attach-agent $node_(27) $udp27
set udp28 [new Agent/UDP]
$ns attach-agent $node_(28) $udp28
set udp29 [new Agent/UDP]
$ns attach-agent $node_(29) $udp29



$ns at 0.0 "$ns trace-annotate \"EAACK Process started.....\""
$ns at 2.0 "$ns trace-annotate \"DATA TRANSMISSION FROM SOURCE TO DESTINATION THROUGH INTERMEDIATE NODES.....\""
$ns at 3.4 "$ns trace-annotate \"EAACK - ACK PROCESS, DESTINATION SENDS ACK MESSAGE TO SOURCE NODE FOR THE CONFIRMATION OF DATA DELIVERY.....\""
$ns at 4.5 "$ns trace-annotate \"EAACK - SACK PROCESS, IF SOURCE DOESN'T TRCEIVES ACK , THEN S-ACK(SECURE ACK) PROCESS BEGINS.....\""
$ns at 5.4 "$ns trace-annotate \"EAACK - SACK BEGINS FOR THREE CONSICUTIVE NEIGHBOR NODES FOR MALICIOUS NODE DETECTION.....\""
$ns at 5.75 "$ns trace-annotate \"THIRD INTERMEDIATE NODE 16 SENDS ACK PACKET TO NODE_13, BUT NODE_13 DOESNT SENDS ACK PACKET  .....\""

$ns at 5.9 "$ns trace-annotate \" INTERMEDIATE NODE_5 SENDS A MISBEHAVIOR REPORT (NODE_16 AND NODE_13 AS MALICIOUS) TO SOURCE NODE.....\""
$ns at 6.16 "$ns trace-annotate \"EAACK-MRA SCHEME BEGINS, SOURCE NODE ENHANCE DSR(DYNAMIC SOURCE ROUTING) AND TRANSMITS A DATA IN THE ALTERNATE PATH TO DESTINATION....\""



$ns at 2.5 "$node_(9)  label source"
$ns at 2.5 "$node_(23)  label destination"
$node_(9) color brown
$ns at 2.5 "$node_(9) color brown"
$node_(23) color brown
$ns at 2.5 "$node_(23) color brown"

$ns at 4.0 "$node_(9)  label ."
$ns at 4.0 "$node_(23)  label ."
$node_(9) color black
$ns at 4.0 "$node_(9) color black"
$node_(23) color black
$ns at 4.0 "$node_(23) color black"

$ns at 4.5 "$node_(18)  label SOURCE"
$ns at 4.5 "$node_(12)  label DESTINATION"
$node_(18) color brown
$ns at 4.5 "$node_(18) color brown"
$node_(12) color brown
$ns at 4.5 "$node_(12) color brown"

$ns at 6.0 "$node_(13)  label ATTACK_NODE"
$ns at 6.0 "$node_(16)  label ATTACK_NODE"
$node_(13) color grey
$ns at 6.0 "$node_(13) color grey"
$node_(16) color grey
$ns at 6.0 "$node_(16) color grey"


$ns at 0.1 "$node_(0) setdest 366.0 397.0 700"
$ns at 0.1 "$node_(1) setdest 147.0 500.0 700"
$ns at 0.1 "$node_(2) setdest 600.0 498.0 700"
$ns at 0.1 "$node_(3) setdest 371.0 650.0 700"
$ns at 0.1 "$node_(4) setdest 583.0 258.0 700"
$ns at 0.1 "$node_(5) setdest 138.0 295.0 700"
$ns at 0.1 "$node_(6) setdest 361.0 128.0 700"
$ns at 0.1 "$node_(7) setdest 203.0 178.0 700"
$ns at 0.1 "$node_(8) setdest 507.0 170.0 700"
$ns at 0.1 "$node_(9) setdest 117.0 410.0 700"
$ns at 0.1 "$node_(10) setdest 620.0 395.0 700"
$ns at 0.1 "$node_(11) setdest 238.0 613.0 700"
$ns at 0.1 "$node_(12) setdest 530.0 585.0 700"
$ns at 0.1 "$node_(13) setdest 243.0 402.0 700"
$ns at 0.1 "$node_(14) setdest 512.0 402.0 700"
$ns at 0.1 "$node_(15) setdest 370.0 278.0 700"
$ns at 0.1 "$node_(28) setdest 186.0 716.0 700"


$ns at 1.2 "$node_(18) setdest 159.0 58.0 5"
$ns at 1.2 "$node_(25) setdest 202.0 177.0 5"
$ns at 1.2 "$node_(7) setdest 9.0 196.0 5"
$ns at 1.2 "$node_(26) setdest 571.0 36.0 5"
$ns at 1.2 "$node_(24) setdest 505.0 169.0 5"
$ns at 1.2 "$node_(8) setdest 360.0 127.0 5"
$ns at 1.2 "$node_(6) setdest 363.0 16.0 5"
$ns at 1.2 "$node_(4) setdest 673.0 154.0 5"
$ns at 1.2 "$node_(29) setdest 751.0 274.0 5"
$ns at 1.2 "$node_(23) setdest 619.0 394.0 5"
$ns at 1.2 "$node_(10) setdest 582.0 257.0 5"
$ns at 1.2 "$node_(3) setdest 513.0 762.0 5"
$ns at 1.2 "$node_(21) setdest 273.0 766.0 5"
$ns at 1.2 "$node_(20) setdest 237.0 612.0 5"
$ns at 1.2 "$node_(11) setdest 370.0 649.0 5"


$ns at 3.25 "$node_(13) setdest 366.0 520.0 5"
$ns at 3.25 "$node_(16) setdest 529.0 584.0 5"
$ns at 3.25 "$node_(12) setdest 697.0 648.0 5"
$ns at 3.25 "$node_(27) setdest 757.0 460.0 5"
$ns at 3.25 "$node_(22) setdest 619.0 397.0 5"



set sink0 [new Agent/LossMonitor]
set sink1 [new Agent/LossMonitor]
set sink2 [new Agent/LossMonitor]
set sink3 [new Agent/LossMonitor]
set sink4 [new Agent/LossMonitor]
set sink5 [new Agent/LossMonitor]
set sink6 [new Agent/LossMonitor]
set sink7 [new Agent/LossMonitor]
set sink8 [new Agent/LossMonitor]
set sink9 [new Agent/LossMonitor]
set sink10 [new Agent/LossMonitor]
set sink11 [new Agent/LossMonitor]
set sink12 [new Agent/LossMonitor]
set sink13 [new Agent/LossMonitor]
set sink14 [new Agent/LossMonitor]
set sink15 [new Agent/LossMonitor]
set sink16 [new Agent/LossMonitor]
set sink17 [new Agent/LossMonitor]
set sink18 [new Agent/LossMonitor]
set sink19 [new Agent/LossMonitor]
set sink20 [new Agent/LossMonitor]
set sink21 [new Agent/LossMonitor]
set sink22 [new Agent/LossMonitor]
set sink23 [new Agent/LossMonitor]
set sink24 [new Agent/LossMonitor]
set sink25 [new Agent/LossMonitor]
set sink26 [new Agent/LossMonitor]
set sink27 [new Agent/LossMonitor]
set sink28 [new Agent/LossMonitor]
set sink29 [new Agent/LossMonitor]

$ns attach-agent $node_(0) $sink0
$ns attach-agent $node_(1) $sink1
$ns attach-agent $node_(2) $sink2
$ns attach-agent $node_(3) $sink3
$ns attach-agent $node_(4) $sink4
$ns attach-agent $node_(5) $sink5
$ns attach-agent $node_(6) $sink6
$ns attach-agent $node_(7) $sink7
$ns attach-agent $node_(8) $sink8
$ns attach-agent $node_(9) $sink9
$ns attach-agent $node_(10) $sink10
$ns attach-agent $node_(11) $sink11
$ns attach-agent $node_(12) $sink12
$ns attach-agent $node_(13) $sink13
$ns attach-agent $node_(14) $sink14
$ns attach-agent $node_(15) $sink15
$ns attach-agent $node_(16) $sink16
$ns attach-agent $node_(17) $sink17
$ns attach-agent $node_(18) $sink18
$ns attach-agent $node_(19) $sink19
$ns attach-agent $node_(20) $sink20
$ns attach-agent $node_(21) $sink21
$ns attach-agent $node_(22) $sink22
$ns attach-agent $node_(23) $sink23
$ns attach-agent $node_(24) $sink24
$ns attach-agent $node_(25) $sink25
$ns attach-agent $node_(26) $sink26
$ns attach-agent $node_(27) $sink27
$ns attach-agent $node_(28) $sink28
$ns attach-agent $node_(29) $sink29

set udp0 [new Agent/UDP]
$udp0 set prio_ 1   
$ns attach-agent $node_(0) $udp0
set udp1 [new Agent/UDP]
$udp1 set prio_ 2
$ns attach-agent $node_(1) $udp1
set udp2 [new Agent/UDP]
$udp2 set prio_ 3
$ns attach-agent $node_(2) $udp2
set udp3 [new Agent/UDP]
$ns attach-agent $node_(3) $udp3
set udp4 [new Agent/UDP]
$udp4 set prio_ 4
$ns attach-agent $node_(4) $udp4
set udp5 [new Agent/UDP]
$ns attach-agent $node_(5) $udp5
set udp6 [new Agent/UDP]
$ns attach-agent $node_(6) $udp6
set udp7 [new Agent/UDP]
$ns attach-agent $node_(7) $udp7
set udp8 [new Agent/UDP]
$ns attach-agent $node_(8) $udp8
set udp9 [new Agent/UDP]
$ns attach-agent $node_(9) $udp9
set udp10 [new Agent/UDP]
$ns attach-agent $node_(10) $udp10
set udp11 [new Agent/UDP]
$udp11 set prio_ 5
$ns attach-agent $node_(11) $udp11
set udp12 [new Agent/UDP]
$udp12 set prio_ 6
$ns attach-agent $node_(12) $udp12
set udp13 [new Agent/UDP]
$udp13 set prio_ 7
$ns attach-agent $node_(13) $udp13
set udp14 [new Agent/UDP]
$udp14 set prio_ 8
$ns attach-agent $node_(14) $udp14
set udp15 [new Agent/UDP]
$ns attach-agent $node_(15) $udp15
set udp16 [new Agent/UDP]
$ns attach-agent $node_(16) $udp16
set udp17 [new Agent/UDP]
$ns attach-agent $node_(17) $udp17
set udp18 [new Agent/UDP]
$ns attach-agent $node_(18) $udp18
set udp19 [new Agent/UDP]
$ns attach-agent $node_(19) $udp19
set udp20 [new Agent/UDP]
$ns attach-agent $node_(20) $udp20
set udp21 [new Agent/UDP]
$ns attach-agent $node_(21) $udp21
set udp22 [new Agent/UDP]
$ns attach-agent $node_(22) $udp22
set udp23 [new Agent/UDP]
$ns attach-agent $node_(23) $udp23
set udp24 [new Agent/UDP]
$ns attach-agent $node_(24) $udp24
set udp25 [new Agent/UDP]
$ns attach-agent $node_(25) $udp25
set udp26 [new Agent/UDP]
$ns attach-agent $node_(26) $udp26
set udp27 [new Agent/UDP]
$ns attach-agent $node_(27) $udp27
set udp28 [new Agent/UDP]
$ns attach-agent $node_(28) $udp28
set udp29 [new Agent/UDP]
$ns attach-agent $node_(29) $udp29

proc eaack {} {
        {
                set $nsmsg*data=(msg*)pkt.data udp;
                set $nsnode = neighbornode_rep;                          
                set $nsreceiving time = rt(msg*data);
                set $nstransmission time=tt(mag*data);
                set $allocator->node_()(msg*data);
                set $counter=1->configure timer 
                set $sends=(msg*)pkt.data udp;
                set $recvs=(msg*)pkt.data udp;
                set $ipaddress=id "";              
                select $timer="";                 
                
}
          if (ack())
	{
	        msg*data=(msg*)pkt.data udp;
                sink = new_node_rep;
                allocator= node_->ip;
                pub_key=i;
                pri_key=j;
                sign->offer iP(i,j);   
                            
                init_sink->address_alloc[0];
                config_(rp)set $ns address alloc;

                     msg*data=(msg*)pkt.data udp;
                
                

	}
           else
                   {
                set $ns "no authentication" at "";
                   }

                if( threshold > 80)
              {
                select "$ns node_()msg*data;
                select timer $ns at "";
                puts "$node_()-malicious_node add_mark . white square"
                
                update timer ();
               }

                else
               {
                 select skip;
                }
                   

                   for(nsnode_(0) >= nsnode_(36))
                 {
                       set timer = rt(msg*data) node "" -(tt(msg*data) node ""+ size of(msg*data nsnode "")
                       check node_()*address_alloc[]; 
                       select  timer;
                       
                       
                  } 
                

                   
     };proc attach-CBR-traffic { node sink size interval } {
   set ns [Simulator instance]
   set cbr [new Agent/CBR]
   $ns attach-agent $node $cbr
   $cbr set packetSize_ $size
   $cbr set interval_ $interval

   $ns connect $cbr $sink
   return $cbr
  }   

set udp3 [$ns create-connection UDP $node_(9) LossMonitor $node_(13) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .05
$ns at 2.5 "$cbr2 start"
$ns at 3.2 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(13) LossMonitor $node_(0) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .05
$ns at 2.55 "$cbr2 start"
$ns at 3.2 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(0) LossMonitor $node_(14) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 2.62 "$cbr2 start"
$ns at 3.2 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(14) LossMonitor $node_(0) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 2.68 "$cbr2 start"
$ns at 3.2 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(10) LossMonitor $node_(23) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 2.72 "$cbr2 start"
$ns at 3.2 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(23) LossMonitor $node_(10) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 3.4 "$cbr2 start"
$ns at 3.9 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(10) LossMonitor $node_(14) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 3.45 "$cbr2 start"
$ns at 3.9 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(14) LossMonitor $node_(0) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 3.5 "$cbr2 start"
$ns at 3.9 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(0) LossMonitor $node_(13) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 3.55 "$cbr2 start"
$ns at 3.9 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(13) LossMonitor $node_(9) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 3.6 "$cbr2 start"
$ns at 3.9 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(18) LossMonitor $node_(5) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 4.6 "$cbr2 start"
$ns at 5.2 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(5) LossMonitor $node_(13) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 4.65 "$cbr2 start"
$ns at 5.2 "$cbr2 stop" 

#set udp3 [$ns create-connection UDP $node_(13) LossMonitor $node_(16) 0]
#$udp3 set fid_ 1
#$udp3 set class_ 1
#set cbr2 [$udp3 attach-app Traffic/CBR]
#$cbr2 set packetSize_ 1024
#$cbr2 set interval_ .06
#$ns at 4.7 "$cbr2 start"
#$ns at 5.2 "$cbr2 stop" 

#set udp3 [$ns create-connection UDP $node_(16) LossMonitor $node_(12) 0]
#$udp3 set fid_ 1
#$udp3 set class_ 1
#set cbr2 [$udp3 attach-app Traffic/CBR]
#$cbr2 set packetSize_ 1024
#$cbr2 set interval_ .06
#$ns at 4.75 "$cbr2 start"
#$ns at 5.2 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(5) LossMonitor $node_(13) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 5.4 "$cbr2 start"
$ns at 5.7 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(13) LossMonitor $node_(16) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 5.45 "$cbr2 start"
$ns at 5.7 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(16) LossMonitor $node_(13) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 5.75 "$cbr2 start"
$ns at 5.9 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(5) LossMonitor $node_(18) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 5.9 "$cbr2 start"
$ns at 6.1 "$cbr2 stop" 


set udp3 [$ns create-connection UDP $node_(18) LossMonitor $node_(5) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 6.16 "$cbr2 start"
$ns at 7.2 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(5) LossMonitor $node_(9) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 6.2 "$cbr2 start"
$ns at 7.2 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(9) LossMonitor $node_(1) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 6.24 "$cbr2 start"
$ns at 7.2 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(1) LossMonitor $node_(11) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 6.28 "$cbr2 start"
$ns at 7.2 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(11) LossMonitor $node_(3) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 6.32 "$cbr2 start"
$ns at 7.2 "$cbr2 stop" 

set udp3 [$ns create-connection UDP $node_(3) LossMonitor $node_(12) 0]
$udp3 set fid_ 1
$udp3 set class_ 1
set cbr2 [$udp3 attach-app Traffic/CBR]
$cbr2 set packetSize_ 1024
$cbr2 set interval_ .06
$ns at 6.36 "$cbr2 start"
$ns at 7.2 "$cbr2 stop" 






set cbr4 [attach-CBR-traffic $node_(17) $sink19 1 .042]
set cbr3 [attach-CBR-traffic $node_(19) $sink28 1 .042]
set cbr5 [attach-CBR-traffic $node_(28) $sink21 1 .042]
set cbr6 [attach-CBR-traffic $node_(21) $sink27 1 .042]
set cbr7 [attach-CBR-traffic $node_(27) $sink22 1 .042]

set cbr8 [attach-CBR-traffic $node_(22) $sink29 1 .042]
set cbr9 [attach-CBR-traffic $node_(29) $sink24 1 .041]
set cbr10 [attach-CBR-traffic $node_(24) $sink26 1 .042] 
set cbr11 [attach-CBR-traffic $node_(18) $sink17 1 .042]
set cbr12 [attach-CBR-traffic $node_(26) $sink4 1 .042]
set cbr13 [attach-CBR-traffic $node_(1) $sink16 1 .042]
set cbr14 [attach-CBR-traffic $node_(7) $sink18 1 .042]

set cbr15 [attach-CBR-traffic $node_(10) $sink0 1 .042]
set cbr16 [attach-CBR-traffic $node_(0) $sink1 1 .042]
set cbr17 [attach-CBR-traffic $node_(1) $sink9 1 .042]
set cbr18 [attach-CBR-traffic $node_(9) $sink5 1 .042]
set cbr19 [attach-CBR-traffic $node_(5) $sink7 1 .042]                       
set cbr20 [attach-CBR-traffic $node_(7) $sink25 1 .042]
set cbr21 [attach-CBR-traffic $node_(25) $sink6 1 .042]

set cbr22 [attach-CBR-traffic $node_(6) $sink8 1 .042]
set cbr23 [attach-CBR-traffic $node_(8) $sink15 1 .042]
set cbr24 [attach-CBR-traffic $node_(15) $sink13 1 .042]
set cbr25 [attach-CBR-traffic $node_(13) $sink14 1 .042]
set cbr26 [attach-CBR-traffic $node_(14) $sink10 1 .042]
set cbr27 [attach-CBR-traffic $node_(10) $sink2 1 .042]
set cbr28 [attach-CBR-traffic $node_(2) $sink12 1 .042]

set cbr29 [attach-CBR-traffic $node_(12) $sink3 1 .042]
set cbr30 [attach-CBR-traffic $node_(3) $sink11 1 .042]


set cbr31 [attach-CBR-traffic $node_(11) $sink20 1 .042]

$ns at 0.0 "record"
$ns at 0.0 "$cbr4 start"
$ns at 0.05 "$cbr4 stop"
$ns at 0.06 "$cbr3 start"
$ns at 0.1 "$cbr3 stop"
$ns at 0.12 "$cbr5 start"
$ns at 0.25 "$cbr5 stop"
$ns at 0.25 "$cbr6 start"
$ns at 0.32 "$cbr6 stop"
$ns at 0.34 "$cbr7 start"
$ns at 0.44 "$cbr7 stop"
$ns at 0.45 "$cbr8 start"
$ns at 0.56 "$cbr8 stop"

$ns at 0.55 "$cbr9 start"
$ns at 0.58 "$cbr9 stop"

$ns at 0.64 "$cbr10 start"
$ns at 0.75 "$cbr10 stop"
$ns at 0.73 "$cbr11 start"
$ns at 0.79 "$cbr11 stop"
$ns at 0.25 "$cbr12 start"
$ns at 0.98 "$cbr12 stop"
$ns at 1.0 "$cbr13 start"
$ns at 1.08 "$cbr13 stop"
$ns at 1.12 "$cbr14 start"
$ns at 1.25 "$cbr14 stop"

$ns at 1.25 "$cbr15 start"
$ns at 1.35 "$cbr15 stop"
$ns at 0.1 "$cbr16 start"
$ns at 0.4 "$cbr16 stop"
$ns at 0.1 "$cbr17 start"
$ns at 0.5 "$cbr17 stop"
$ns at 0.1 "$cbr18 start"
$ns at 0.6 "$cbr18 stop"
$ns at 0.1 "$cbr19 start"
$ns at 0.96 "$cbr19 stop"
$ns at 0.1 "$cbr20 start"
$ns at 0.3 "$cbr20 stop"
$ns at 0.1 "$cbr21 start"
$ns at 0.2 "$cbr21 stop"

$ns at 0.1 "$cbr22 start"
$ns at 0.26 "$cbr22 stop"
$ns at 0.1 "$cbr23 start"
$ns at 0.16 "$cbr23 stop"
$ns at 0.1 "$cbr24 start"
$ns at 0.3 "$cbr24 stop"
$ns at 0.1 "$cbr25 start"
$ns at 0.95 "$cbr25 stop"
$ns at 0.1 "$cbr26 start"
$ns at 0.35 "$cbr26 stop"
$ns at 0.1 "$cbr27 start"
$ns at 0.4 "$cbr27 stop"
$ns at 0.1 "$cbr28 start"
$ns at 0.45 "$cbr28 stop"
$ns at 0.1 "$cbr29 start"
$ns at 0.48 "$cbr29 stop"
$ns at 0.1 "$cbr30 start"
$ns at 0.5 "$cbr30 stop"

$ns at 0.1 "$cbr31 start"
$ns at 0.35 "$cbr31 stop"


proc finish {} {
    global ns tracefile namfile
    $ns flush-trace
    close $tracefile
    close $namfile
    exec nam out.nam &
exec xgraph energyE.xg energyP.xg  -t "Energy" -x "nodes" -y "energy(joules)" -bg white  &    
exec xgraph throughput.xg  -t "Throughput" -x "No.of packets sent" -y "time(ms)" -bg white  &
exec xgraph pdrE.xg pdrP.xg  -t "Packet Delivery Ratio" -x "No.of packets transmitted" -y "No.of packets received" -bg white  &
exec xgraph delayE.xg delayP.xg  -t "Delay" -x "time(msec)" -y "No.of packets received" -bg white  &   
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns at $val(stop) "\$node_($i) reset"
}
$ns at $val(stop) "$ns nam-end-wireless $val(stop)"
$ns at $val(stop) "finish"
$ns at $val(stop) "puts \"done\" ; $ns halt"
$ns run
