Linux_tree
==========

1) For debugging my kernel, I have recompiled the kernel with FTRACE support (function tracer).

   You should enable the following flags:

* CONFIG_FTRACE=y
* CONFIG_HAVE_DYNAMIC_FTRACE=y
* CONFIG_HAVE_FUNCTION_TRACER=y
* CONFIG_HAVE_FUNCTION_GRAPH_TRACER=y
* CONFIG_STACKTRACE=y


2) In case you get a crash, which can be quite often for a novice kernel developer,
   you can easily use a ##kernel dump## for finding the origin for this crash. 
   all you have to do is to install "linux-crashdump" application on your distribution.
   So Now on every boot the kernel would reserve a sufficinent memory area for the kdump kernel.
   next time you would recieve a kernel crash, don't panic the crash dump would be stored in 
   /var/crash folder.
