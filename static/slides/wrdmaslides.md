layout: true
class: left, top, theYellowBackground
.tohome[[![:scale 30%](/images/home-icon.png "home")](../..)]
---
name: OpeningPage
class: center, middle, main-title, inverse
# Disrupting the Internet
## Wireless RDMA on D2D Mobile Devices
## **C**luster **A**s **A**pplication **P**latform

### Yitzhak Bar Geva, Prof. Jon Crowcroft
### November 2015
---
name: ExplodingInternet1
# [The growth rate of the Internet](http://www.livinginternet.com/i/ip_growth.htm)<br/>exceeds that of any previous technology...
![:scale 105%](/images/internetofthingsgrowth.png)
--
count: false
 
 #### The Internet is growing exponentially in three different directions -- size, processing power, and software sophistication -- making it the fastest growing technology humankind has ever created
---
count: false
name: Except4
# All the superlatives are true
--
 except that...

--
count: false

# .left-column[This is a rerun.]
<div class="embed video-player">
<iframe width="560" height="315" src="https://www.youtube.com/embed/n1mpgOQmFCA?list=PL1ACKARftyBDLK67SIj6cba5uk24fE-ff&rel=0&autoplay=1&controls=0&fs=0&loop=1&modestbranding=1&showinfo=0" frameborder="0"></iframe>
</div>

# .center[We've been there before]
---

name: NotTheFirst
class: center
# This isn't the first disruption
.left-column[
  ## Personal Computers
]
.right-column[
	![:scale 100%](/images/MainframesDisrupted.jpg)
]
---
count: false

name: NotTheFirst2
class: center
# This isn't the first disruption
.left-column[
  ## Personal Computers
  ## Internet
]
.right-column[
	![:scale 105%](/images/Disruption.png)
]
---
name: NotTheFirst3
class: center
count: false
# This isn't the first disruption
.left-column[
  ## Personal Computers
  ## Internet
  ## Mobile
]
.right-column[
	![:scale 100%](/images/Growth-Global-Mobile-Internet-Google-ex1_inline_tcm80-181547.png)
]
---
name: Waves of Disruptions
class: center, top
background-image: /images/waves-of-disruption.jpg
## .left[Looking back from 2025...</br>the 2020 vision will have been disrupted]
![:scale 95%](/images/waves-of-disruption.jpg)
--

# .center[_**By what?**_]
---
name: Platform
# .center[**The Platform** is the disruptor]
.pull-right[![:scale 100%](/images/batman.jpg)]
--
count: false

### .left[Each wave is a vastly more pervasive computing&nbsp;platform]
--
count: false

### .left[What computing&nbsp;platform could be more&nbsp;pervasive, less&nbsp;expensive, more&nbsp;programmable than tens&nbsp;of&nbsp;billions of wireless&nbsp;devices?]
---
name: Bubbles
class: center
# Concentric Technology Bubbles <br/> Each wave envelopes its predecessors
![:scale 75%](/images/bubbles_in_bubbles.jpg)
---
background-image: url(/images/ViewItFromOutside.png)
name: ViewFromOutside
class: center
---
count: false
class: left, top
## Heard of quest for</br>the Future Internet Architecture?
--
count: false
## __the__?? .smaller[Future Internet Architecture]</br>What? Only one?
--
count: false

## Why not an unlimited number of free&#8209;to&#8209;evolve Internet architectures, flowing side&nbsp;by&nbsp;side?
--
count: false

## Why can't networks be programmed?
---

<div class="embed video-player">
<iframe width="800" height="475" src="https://www.youtube.com/embed/J9t_Vt2jJLI?list=PL1ACKARftyBC3Aun18Mj_9lz5h0K1vHiQ&start=0&rel=0&controls=1&fs=1&loop=0&vq=hd720&autoplay=1" frameborder="0" allowfullscreen></iframe>
</div>
---

name: LeftBehind
class: left, top

## Today's Internet/Cloud

## Modern day analogy of the Mainframe Age

.left.medium[
### Remote resources at great distances
- Generates enormous traffic flows
- Dependent on providers
- Communications strata is bulky and wasteful
- Development stymied by protocols
- Computation and communications are disparate regimes
]
---

## High Protocol Wall (networking today)

![:scale 100%](/images/TCPIPStackHiWall1.png)

---
count: false

## Low Protocol Wall (RDMA is even slimmer)
![:scale 100%](/images/TCPIPStackLoWall.png)

---
name: ThatWas
class: left, top
# Next see where the model really shines...
![:scale 80%](/images/shine.jpg)

.footnote[[Press here for an introduction to RDMA and InfiBand](#RDMAIntro)]
---
name: cellularD2D
class: left, top
# .center[Cellular D2D]
Close proximity D2D mobile or wireless device _cluster-carpets_ are the next generation application platform. _Cluster-Carpet_ is a cluster woven so tightly that individual devices are indistinguishable to the application.

Distributed apps over on-the-fly clusters in the cloud are gaining popularity, but todays networking strata is sorely lacking for the job and remote clouds are unnecessary for close-proximity applications.

The widely used RDMA clustering model with verbs programming has been a standard in HPC data centers for decades. Becomes the ideal model for wireless carpets. Cluster-carpet applications are <u>_unaware_ of being distributed</u>.

# **Easy to grasp model**...
---
name: EasyToGrasp1
# Take an HPC Computing center.
.center[![:scale 98%](/images/hpc-solution-diagram_sm.jpg)]
---
name: EasyToGrasp2
count: false
# replace the wire links with wireless
.center[![:scale 96%](/images/hpc-diagram_wireless.png)]
---
name: EasyToGrasp3
count: false
# replace the compute nodes with wireless devices
.center[![:scale 96%](/images/hpc-diagram_mobile.png)]
---
name: 4thGen
class: top, center, theWhiteBackground
background-image: url("/images/4thGen.png")
---
name:LetItSinkIn
# It's an autonomous computing platform
# .left[ ![:scale 40%](/images/waitamoment.png) and let it sink in]
---
name: entirelynew1

# .center[New network/computing realm]
.left-column[
  ## Power
]
.right-column.medium[
### Order of magnitude more clusters than devices
- Multicore mobile devices, powerhouses
- Much higher device density.
- World's computational power is everywhere

### Orthogonal to the Internet
- Doesn't change or improve the Internet
- Coexists with the Internet.
- Cluster-carpets can be IP addressable.
]
---
count: false
name: entirelynew2

# .center[New network/computing realm]
.left-column[
  ## Traffic
]
.right-column.medium[
### No need for external service providers

### Intra-cluster network traffic
- Close proximity means speed
- No burden on existing infrastructure
- Weave carpet-clusters together
]
---
count: false
name: entirelynew3

# .center[New network/computing realm]
.left-column[
  ### Programming and applications
]
.right-column.medium[
- Networking evolves at software speed
- People and device Swarm applications
- Classic for military deployment
- Mob data mining and Virtual Reality

.left[![:scale 90%](/images/people_swarm.jpg)]]
---
count: false
name: entirelynew4
class: left, top

# .center[Entirely new network/computing realm]

.left.medium[
### Cluster-Carpeting
- Devices pool their cores and storage
- Devices can belong to multiple clusters simultaneously 
- Every carpet can (optionally) be an IP addressable node
   - tens of billions of Internet devices become trillions
- Clusters can cluster
   - Multi-million node global clusters

.right[![:scale 50%](/images/cluster model transparent.png)]
]
---
class: left, top
# .center[Avoid Pitfalls]
.left[![:scale 50%](/images/fallingintohole.png)]
.medium[
Performance is not paramount at the outset
  - Obsession with performance got us into the protocol pit
  - Not essential. Can be dealt with later, as in the past.
]
--
count: false
.medium[
**The classic mistake:** Binding the platform with what can be done with it.
]
---
<!-- <iframe frameborder="0" scrolling="no" style="border:0px" src="https://books.google.co.il/books?id=FDoEAAAAMBAJ&lpg=PA36&ots=89cydPBpPy&dq=predictions%20the%20internet%20web%201980&pg=PA36&output=embed" width=500 height=500></iframe>
   -->

.center[![:scale 105%](/images/Metcalfe.png)]
### Bob Metcalfe [InfoWorld Dec 23-30, 1996](https://books.google.co.il/books?id=FDoEAAAAMBAJ&pg=PA36&lpg=PA36&dq=predictions+the+internet+web+1980&source=bl&ots=89cydPBpPy&sig=UUkw-DwV1UptDVj5q3iOrqqLzzM&hl=en&sa=X&ved=0CD8Q6AEwB2oVChMInMKzmIeEyQIVwYUPCh1ITg8y#v=onepage&q=predictions%20the%20internet%20web%201980&f=true)
---

### Ken Olson<sup>*</sup>, .footnote.left[founder and CEO of Digital Equipment Corporation, 1977]whom Bill Gates had idolized as a teenager, had been debunking the PC since 1977, when he told a convention of the World Future Society,
--
count: false

> # *_"There is no reason for any individual to have a computer in his home."_*

--
count: false

### Metcalfe and Olson's mistake was binding the platform with what could be done with it. We had no inkling in advance of what could be done with the computer, with the web, with the smartphone.

???

## Metcalfe and Olson's mistake was binding the platform with what could be done with it. We never have an inkling. No one knew what could be done with personal computers, no one knew what could be done with the web, no one knew what could be done with smartphones. Let's not repeat that mistake.
---
name: NotSoSimple1
class: top, center, theGreyBackground
background-image: url("/images/SimpleConceptual.png")
---
name: NotSoSimple2
class: top, center, theGreyBackground
background-image: url("/images/Challenges.png")
---
name: NotSoSimple3
class: top, center, theGreyBackground
background-image: url("/images/NothingWeDont.png")
---
name: implementation_ideas
class: top, left
# .center[Doable implementation ideas]

## [Erlang RTS over RDMA (like JVM 7)](#RDMADescr6)
- Hand in glove with the cluster-carpet model
  - Erlang easily propagates processes over all cores
- [Dual Androids in one device with Xen](https://vimeo.com/78023395)
- [Erlang on Xen](http://erlangonxen.org/)
---
name: nutshell
class: left, top
# That's it in a netshell.
## .center[![:scale 60%](/images/nutshell.png)</br>Next, an pictorial description of RDMA]
---
name: RDMAIntro
class: top, center, theWhiteBackground
background-image: url("/images/Overview of RDMA and ROCE.png")
---
name: RDMAIntro1
class: top, center, theWhiteBackground
background-image: url("/images/RDMA Technology Overview.png")
---
name: RDMAIntro3
class: top, center, theGreyBackground
background-image: url("/images/Remote Direct Memory Access.png")
---
name: RDMAIntro4
class: top, center, theGreyBackground
background-image: url("/images/RDMA Benefits.png")
---
name: RDMAIntro5
class: top, center, theGreyBackground
background-image: url("/images/RDMA Technologies.png")
---
name: RDMAIntro6
class: top, center, theGreyBackground
background-image: url("/images/RDMA Architecture Layering.png")
---
name: RDMAIntro7
class: top, center, theBlackBackground
background-image: url("/images/Kernel Bypass.png")
---
name: RDMAIntro8
class: top, center, theBlackBackground
background-image: url("/images/ofed.png")
---
name: RDMADescr3
class: top, center, theGreyBackground
background-image: url("/images/RDMA User Space programmable.png")
---
name: RDMADescr4
class: top, center, theWhiteBackground
background-image: url("/images/Upper Layer Protocols.png")
---
name: RDMADescr5
class: top, center, theGreyBackground
background-image: url("/images/verbs.png")
---
name: RDMADescr6
class: top, center, theGreyBackground
background-image: url("/images/Java\ 7\ VM\ over\ verbs.png")
---
name: RDMADescr7
class: top, center, theWhiteBackground
background-image: url("/images/Programmable.png")
---
name: RDMADescr8
class: top, center, theWhiteBackground
background-image: url("/images/Not Programmable.png")
---
name: RDMADescr9
class: top, center, theWhiteBackground
background-image: url("/images/InfiniBand.png")
---
name: RDMADescr10
class: top, center, theWhiteBackground
background-image: url("/images/InfiniBand in Kernel.png")
---
name: RDMADescr11
class: top, center, theWhiteBackground
background-image: url("/images/ROCE - RDMA over.png")
---
name: RDMADescr12
class: top, center, theWhiteBackground
background-image: url("/images/ROCE in kernel.png")
---
name: RDMADescr13
class: top, center, theWhiteBackground
background-image: url("/images/Internet Wide Area RDMA.png")
---
name: RDMADescr14
class: top, center, theWhiteBackground
background-image: url("/images/iWarp in Kernel.png")
---
name: RDMADescr15
class: top, center, theWhiteBackground
background-image: url("/images/Soft RDMA Drivers.png")
---
name: RDMADescr16
class: top, center, theWhiteBackground
background-image: url("/images/Soft RoCE.png")
---
name: RDMADescr17
class: top, center, theWhiteBackground
background-image: url("/images/Soft RoCE.png")
---
name: RDMADescr18
class: top, center, theWhiteBackground
background-image: url("/images/Virtualized_RDMA.png")
---
name: RDMADescr19
class: top, center, theWhiteBackground
background-image: url("/images/RDMA_GPU.png")
