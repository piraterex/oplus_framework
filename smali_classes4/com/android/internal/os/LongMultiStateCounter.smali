.class public final Lcom/android/internal/os/LongMultiStateCounter;
.super Ljava/lang/Object;
.source "LongMultiStateCounter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/os/LongMultiStateCounter;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field final blacklist mNativeObject:J

.field private final blacklist mStateCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 60
    const-class v0, Lcom/android/internal/os/LongMultiStateCounter;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/os/LongMultiStateCounter;->native_getReleaseFunc()J

    move-result-wide v1

    .line 61
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/LongMultiStateCounter;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 180
    new-instance v0, Lcom/android/internal/os/LongMultiStateCounter$1;

    invoke-direct {v0}, Lcom/android/internal/os/LongMultiStateCounter$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/LongMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 3
    .param p1, "stateCount"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string/jumbo v0, "stateCount must be greater than 0"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 72
    iput p1, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    .line 73
    invoke-static {p1}, Lcom/android/internal/os/LongMultiStateCounter;->native_init(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    .line 74
    sget-object v2, Lcom/android/internal/os/LongMultiStateCounter;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 75
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/android/internal/os/LongMultiStateCounter;->native_initFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    .line 79
    sget-object v2, Lcom/android/internal/os/LongMultiStateCounter;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 81
    invoke-static {v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->native_getStateCount(J)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    .line 82
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/os/LongMultiStateCounter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static native blacklist native_addCount(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_getCount(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_getReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_getStateCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_incrementValue(JJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_init(I)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_initFromParcel(Landroid/os/Parcel;)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_reset(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_setEnabled(JZJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist native_setState(JIJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private native blacklist native_toString(J)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist native_updateValue(JJJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private native blacklist native_writeToParcel(JLandroid/os/Parcel;I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public blacklist addCount(J)V
    .locals 2
    .param p1, "count"    # J

    .line 133
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/os/LongMultiStateCounter;->native_addCount(JJ)V

    .line 134
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCount(I)J
    .locals 3
    .param p1, "state"    # I

    .line 147
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    if-ge p1, v0, :cond_0

    .line 151
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/android/internal/os/LongMultiStateCounter;->native_getCount(JI)J

    move-result-wide v0

    return-wide v0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outside the range: [0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getStateCount()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    return v0
.end method

.method public blacklist getTotalCount()J
    .locals 5

    .line 158
    const-wide/16 v0, 0x0

    .line 159
    .local v0, "total":J
    const/4 v2, 0x0

    .local v2, "state":I
    :goto_0
    iget v3, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    if-ge v2, v3, :cond_0

    .line 160
    iget-wide v3, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v3, v4, v2}, Lcom/android/internal/os/LongMultiStateCounter;->native_getCount(JI)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v2    # "state":I
    :cond_0
    return-wide v0
.end method

.method public blacklist incrementValue(JJ)V
    .locals 6
    .param p1, "count"    # J
    .param p3, "timestampMs"    # J

    .line 126
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/LongMultiStateCounter;->native_incrementValue(JJJ)V

    .line 127
    return-void
.end method

.method public blacklist reset()V
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->native_reset(J)V

    .line 141
    return-void
.end method

.method public blacklist setEnabled(ZJ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "timestampMs"    # J

    .line 93
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->native_setEnabled(JZJ)V

    .line 94
    return-void
.end method

.method public blacklist setState(IJ)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "timestampMs"    # J

    .line 104
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    if-ge p1, v0, :cond_0

    .line 108
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->native_setState(JIJ)V

    .line 109
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outside the range: [0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/LongMultiStateCounter;->mStateCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 167
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/LongMultiStateCounter;->native_toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateValue(JJ)J
    .locals 6
    .param p1, "value"    # J
    .param p3, "timestampMs"    # J

    .line 119
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/LongMultiStateCounter;->native_updateValue(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 172
    iget-wide v0, p0, Lcom/android/internal/os/LongMultiStateCounter;->mNativeObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/os/LongMultiStateCounter;->native_writeToParcel(JLandroid/os/Parcel;I)V

    .line 173
    return-void
.end method
