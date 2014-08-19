Linux_tree
==========

1) For debugging my kernel tree, I have recompiled the kernel with FTRACE support (function tracer).

   You should enable the following flags:

* CONFIG_FTRACE=y
* CONFIG_HAVE_DYNAMIC_FTRACE=y
* CONFIG_HAVE_FUNCTION_TRACER=y
* CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
* CONFIG_STACKTRACE=y

In the kernel tree the ftrace is well written & explained, you should take a peek:

https://www.kernel.org/doc/Documentation/trace/ftrace.txt

###### step 1:
Ftrace offers a collection of traces in the kernel, choose among them:

to view all traces type use **cat /sys/kernel/debug/tracing/available_events** .

###### step 2:

Ftrace holds a long list of events, you can configure easily which event you would like to trace.

The list of events are in the file available_events (On my system there are 941 events types! ). 

See for yourself via: **cat /sys/kernel/debug/tracing/available_events**
you can easily locate the event since the events are sorted by catergories i.e:

- [ ]			kmem
- [ ]			syscalls
- [ ]			skb
- [ ]			net
- [ ]			napi
- [ ]       sock
- [ ]       udp
- [ ]			block
- [ ]			ext4
- [ ]			ext3
- [ ]			power
- [ ]			signal
- [ ]			timer
- [ ]			gpio









2) In case you get a crash, which can be quite often for a novice kernel developer,
   you can easily use a **kernel dump** for finding the origin for this crash. 
   all you have to do is to install "linux-crashdump" application on your distribution.
   
   So now on every boot the kernel would reserve a sufficient memory area for the kdump kernel.
   next time you would recieve a kernel crash, don't panic the crash dump would be stored in 
   **/var/crash** folder.

