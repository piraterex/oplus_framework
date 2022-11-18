.class final Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;
.super Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JvmMemoryAccessor"
.end annotation


# direct methods
.method constructor blacklist <init>(Lsun/misc/Unsafe;)V
    .locals 0
    .param p1, "unsafe"    # Lsun/misc/Unsafe;

    .line 570
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    .line 571
    return-void
.end method


# virtual methods
.method public blacklist copyMemory(J[BJJ)V
    .locals 10
    .param p1, "srcOffset"    # J
    .param p3, "target"    # [B
    .param p4, "targetIndex"    # J
    .param p6, "length"    # J

    .line 645
    move-object v0, p0

    iget-object v1, v0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long v6, v2, p4

    const/4 v2, 0x0

    move-wide v3, p1

    move-object v5, p3

    move-wide/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory([BJ[BJJ)V

    .line 646
    return-void
.end method

.method public blacklist copyMemory([BJJJ)V
    .locals 10
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # J
    .param p4, "targetOffset"    # J
    .param p6, "length"    # J

    .line 650
    move-object v0, p0

    iget-object v1, v0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/android/framework/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    add-long v3, v2, p2

    const/4 v5, 0x0

    move-object v2, p1

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory([BJ[BJJ)V

    .line 651
    return-void
.end method

.method public blacklist getBoolean(Ljava/lang/Object;J)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 615
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public blacklist getByte(J)B
    .locals 1
    .param p1, "address"    # J

    .line 575
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    return v0
.end method

.method public blacklist getByte(Ljava/lang/Object;J)B
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 605
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method public blacklist getDouble(Ljava/lang/Object;J)D
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 635
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getFloat(Ljava/lang/Object;J)F
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 625
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method public blacklist getInt(J)I
    .locals 1
    .param p1, "address"    # J

    .line 585
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v0

    return v0
.end method

.method public blacklist getLong(J)J
    .locals 2
    .param p1, "address"    # J

    .line 595
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 655
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->staticFieldBase(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v1, p1}, Lsun/misc/Unsafe;->staticFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist putBoolean(Ljava/lang/Object;JZ)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # Z

    .line 620
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    .line 621
    return-void
.end method

.method public blacklist putByte(JB)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "value"    # B

    .line 580
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 581
    return-void
.end method

.method public blacklist putByte(Ljava/lang/Object;JB)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # B

    .line 610
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 611
    return-void
.end method

.method public blacklist putDouble(Ljava/lang/Object;JD)V
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # D

    .line 640
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    .line 641
    return-void
.end method

.method public blacklist putFloat(Ljava/lang/Object;JF)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # F

    .line 630
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 631
    return-void
.end method

.method public blacklist putInt(JI)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "value"    # I

    .line 590
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(JI)V

    .line 591
    return-void
.end method

.method public blacklist putLong(JJ)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "value"    # J

    .line 600
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$JvmMemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putLong(JJ)V

    .line 601
    return-void
.end method
