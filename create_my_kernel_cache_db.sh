#!/bin/bash
echo "Generating database for parsing..."

MAIN_DIR=/home/gil/mySourceCode/Kernel_workspace

# The file extention: S - stands for assembly file

find "$MAIN_DIR/kernel_src_3.15.2/linux-3.15.2/include/linux/" -name "*.[chxsS]" -print > $MAIN_DIR/list_of_files.input
find "$MAIN_DIR/kernel_src_3.15.2/linux-3.15.2/include/memory" -name "*.[chxsS]" -print >> $MAIN_DIR/list_of_files.input
find "$MAIN_DIR/kernel_src_3.15.2/linux-3.15.2/include/net/" -name "*.[chxsS]" -print >> $MAIN_DIR/list_of_files.input
find "$MAIN_DIR/kernel_src_3.15.2/linux-3.15.2/include/asm-generic/" -name "*.[chxsS]" -print >> $MAIN_DIR/list_of_files.input
find "$MAIN_DIR/kernel_src_3.15.2/linux-3.15.2/include/uapi/linux" -name "*.[chxsS]" -print >> $MAIN_DIR/list_of_files.input 
find "$MAIN_DIR/kernel_src_3.15.2/linux-3.15.2/kernel/" -name "*.[chxsS]" -print >> $MAIN_DIR/list_of_files.input
find "$MAIN_DIR/kernel_src_3.15.2/linux-3.15.2/ipc/" -name "*.[chxsS]" -print >> $MAIN_DIR/list_of_files.input
find "$MAIN_DIR/kernel_src_3.15.2/linux-3.15.2/lib/" -name "*.[chxsS]" -print >> $MAIN_DIR/list_of_files.input
find "$MAIN_DIR/kernel_src_3.15.2/linux-3.15.2/mm/" -name "*.[chxsS]" -print >> $MAIN_DIR/list_of_files.input
find "$MAIN_DIR/kernel_src_3.15.2/linux-3.15.2/net/" -name "*.[chxsS]" -print >> $MAIN_DIR/list_of_files.input
find "$MAIN_DIR/kernel_src_3.15.2/linux-3.15.2/arch/x86" -name "*.[chxsS]" -print >> $MAIN_DIR/list_of_files.input
find "$MAIN_DIR/kernel_src_3.15.2/linux-3.15.2/fs/" -name "*.[chxsS]" -print >> $MAIN_DIR/list_of_files.input
find "$MAIN_DIR/my_kernel_modules/" -name "*.[chxsS]" -print >> $MAIN_DIR/list_of_files.input

ctags -L $MAIN_DIR/list_of_files.input



