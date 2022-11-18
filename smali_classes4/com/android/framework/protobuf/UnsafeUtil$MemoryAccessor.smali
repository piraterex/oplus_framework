.class abstract Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MemoryAccessor"
.end annotation


# instance fields
.field blacklist unsafe:Lsun/misc/Unsafe;


# direct methods
.method constructor blacklist <init>(Lsun/misc/Unsafe;)V
    .locals 0
    .param p1, "unsafe"    # Lsun/misc/Unsafe;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 494
    return-void
.end method


# virtual methods
.method public final blacklist arrayBaseOffset(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 541
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public final blacklist arrayIndexScale(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 545
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public abstract blacklist copyMemory(J[BJJ)V
.end method

.method public abstract blacklist copyMemory([BJJJ)V
.end method

.method public abstract blacklist getBoolean(Ljava/lang/Object;J)Z
.end method

.method public abstract blacklist getByte(J)B
.end method

.method public abstract blacklist getByte(Ljava/lang/Object;J)B
.end method

.method public abstract blacklist getDouble(Ljava/lang/Object;J)D
.end method

.method public abstract blacklist getFloat(Ljava/lang/Object;J)F
.end method

.method public abstract blacklist getInt(J)I
.end method

.method public final blacklist getInt(Ljava/lang/Object;J)I
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 505
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public abstract blacklist getLong(J)J
.end method

.method public final blacklist getLong(Ljava/lang/Object;J)J
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 513
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final blacklist getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 533
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
.end method

.method public final blacklist objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 497
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract blacklist putBoolean(Ljava/lang/Object;JZ)V
.end method

.method public abstract blacklist putByte(JB)V
.end method

.method public abstract blacklist putByte(Ljava/lang/Object;JB)V
.end method

.method public abstract blacklist putDouble(Ljava/lang/Object;JD)V
.end method

.method public abstract blacklist putFloat(Ljava/lang/Object;JF)V
.end method

.method public abstract blacklist putInt(JI)V
.end method

.method public final blacklist putInt(Ljava/lang/Object;JI)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # I

    .line 509
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 510
    return-void
.end method

.method public abstract blacklist putLong(JJ)V
.end method

.method public final blacklist putLong(Ljava/lang/Object;JJ)V
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # J

    .line 517
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 518
    return-void
.end method

.method public final blacklist putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # Ljava/lang/Object;

    .line 537
    iget-object v0, p0, Lcom/android/framework/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 538
    return-void
.end method
