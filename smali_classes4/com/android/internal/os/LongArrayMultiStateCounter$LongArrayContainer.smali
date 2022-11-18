.class public Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;
.super Ljava/lang/Object;
.source "LongArrayMultiStateCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/LongArrayMultiStateCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongArrayContainer"
.end annotation


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mLength:I

.field final blacklist mNativeObject:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLength(Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mLength:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 64
    const-class v0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->native_getReleaseFunc()J

    move-result-wide v1

    .line 65
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 3
    .param p1, "length"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mLength:I

    .line 75
    invoke-static {p1}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->native_init(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mNativeObject:J

    .line 76
    sget-object v2, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 77
    return-void
.end method

.method private static native blacklist native_getReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private native blacklist native_getValues(J[J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_init(I)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private native blacklist native_setValues(J[J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public blacklist getValues([J)V
    .locals 3
    .param p1, "array"    # [J

    .line 94
    array-length v0, p1

    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mLength:I

    if-ne v0, v1, :cond_0

    .line 98
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mNativeObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->native_getValues(J[J)V

    .line 99
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid array length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setValues([J)V
    .locals 3
    .param p1, "array"    # [J

    .line 83
    array-length v0, p1

    iget v1, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mLength:I

    if-ne v0, v1, :cond_0

    .line 87
    iget-wide v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mNativeObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->native_setValues(J[J)V

    .line 88
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid array length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 103
    iget v0, p0, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->mLength:I

    new-array v0, v0, [J

    .line 104
    .local v0, "array":[J
    invoke-virtual {p0, v0}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;->getValues([J)V

    .line 105
    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
