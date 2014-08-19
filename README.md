Linux_tree
==========

1) For debugging my kernel tree, I have recompiled the kernel with FTRACE support (function tracer).

   You should enable the following flags:

* CONFIG_FTRACE=y
* CONFIG_HAVE_DYNAMIC_FTRACE=y
* CONFIG_HAVE_FUNCTION_TRACER=y
* CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
* CONFIG_STACKTRACE=y

In the kernel tree the ftrace is well explained, you should take a peek:

https://www.kernel.org/doc/Documentation/trace/ftrace.txt

###step 1:###

Ftrace holds a long list of events, you can configure easily which event you would like to trace.
the list of events are in the file available_events. 

See for yourself via: cat /sys/kernel/debug/tracing/available_events
those events are sorted by catergory

2) In case you get a crash, which can be quite often for a novice kernel developer,
   you can easily use a **kernel dump** for finding the origin for this crash. 
   all you have to do is to install "linux-crashdump" application on your distribution.
   
   So now on every boot the kernel would reserve a sufficinent memory area for the kdump kernel.
   next time you would recieve a kernel crash, don't panic the crash dump would be stored in 
   **/var/crash** folder.
