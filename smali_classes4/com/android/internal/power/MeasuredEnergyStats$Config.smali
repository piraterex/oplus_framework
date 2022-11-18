.class public Lcom/android/internal/power/MeasuredEnergyStats$Config;
.super Ljava/lang/Object;
.source "MeasuredEnergyStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/power/MeasuredEnergyStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private final blacklist mCustomBucketNames:[Ljava/lang/String;

.field private final blacklist mStateNames:[Ljava/lang/String;

.field private final blacklist mSupportedMultiStateBuckets:[Z

.field private final blacklist mSupportedStandardBuckets:[Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmStateNames(Lcom/android/internal/power/MeasuredEnergyStats$Config;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mStateNames:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedStandardBuckets(Lcom/android/internal/power/MeasuredEnergyStats$Config;)[Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mSupportedStandardBuckets:[Z

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBucketName(Lcom/android/internal/power/MeasuredEnergyStats$Config;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->getBucketName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/MeasuredEnergyStats$Config;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->getNumberOfBuckets()I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>([Z[Ljava/lang/String;[I[Ljava/lang/String;)V
    .locals 5
    .param p1, "supportedStandardBuckets"    # [Z
    .param p2, "customBucketNames"    # [Ljava/lang/String;
    .param p3, "supportedMultiStateBuckets"    # [I
    .param p4, "stateNames"    # [Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mSupportedStandardBuckets:[Z

    .line 98
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mCustomBucketNames:[Ljava/lang/String;

    .line 99
    array-length v2, p1

    array-length v1, v1

    add-int/2addr v2, v1

    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mSupportedMultiStateBuckets:[Z

    .line 101
    array-length v1, p3

    :goto_1
    if-ge v0, v1, :cond_2

    aget v2, p3, v0

    .line 102
    .local v2, "bucket":I
    iget-object v3, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mSupportedStandardBuckets:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mSupportedMultiStateBuckets:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v2

    .line 101
    .end local v2    # "bucket":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_2
    if-eqz p4, :cond_3

    move-object v0, p4

    goto :goto_2

    :cond_3
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mStateNames:[Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/power/MeasuredEnergyStats$Config;
    .locals 7
    .param p0, "in"    # Landroid/os/Parcel;

    .line 157
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .local v0, "supportedStandardBucketCount":I
    new-array v1, v0, [Z

    .line 163
    .local v1, "supportedStandardBuckets":[Z
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 164
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "customBucketNames":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 166
    .local v3, "supportedMultiStateBucketCount":I
    new-array v4, v3, [I

    .line 167
    .local v4, "supportedMultiStateBuckets":[I
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->readIntArray([I)V

    .line 168
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "stateNames":[Ljava/lang/String;
    new-instance v6, Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-direct {v6, v1, v2, v4, v5}, Lcom/android/internal/power/MeasuredEnergyStats$Config;-><init>([Z[Ljava/lang/String;[I[Ljava/lang/String;)V

    return-object v6
.end method

.method private blacklist getBucketName(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .line 207
    invoke-static {p1}, Lcom/android/internal/power/MeasuredEnergyStats;->-$$Nest$smisValidStandardBucket(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-class v0, Lcom/android/internal/power/MeasuredEnergyStats;

    const-string v1, "POWER_BUCKET_"

    invoke-static {v0, v1, p1}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 210
    :cond_0
    invoke-static {p1}, Lcom/android/internal/power/MeasuredEnergyStats;->-$$Nest$smindexToCustomBucket(I)I

    move-result v0

    .line 211
    .local v0, "customBucket":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CUSTOM_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    .local v1, "name":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mCustomBucketNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mCustomBucketNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getNumberOfBuckets()I
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mSupportedStandardBuckets:[Z

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mCustomBucketNames:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static blacklist writeToParcel(Lcom/android/internal/power/MeasuredEnergyStats$Config;Landroid/os/Parcel;)V
    .locals 6
    .param p0, "config"    # Lcom/android/internal/power/MeasuredEnergyStats$Config;
    .param p1, "out"    # Landroid/os/Parcel;

    .line 125
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 127
    return-void

    .line 130
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 131
    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mSupportedStandardBuckets:[Z

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mSupportedStandardBuckets:[Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 133
    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mCustomBucketNames:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, "multiStateBucketCount":I
    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mSupportedMultiStateBuckets:[Z

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_2

    aget-boolean v4, v2, v0

    .line 136
    .local v4, "supported":Z
    if-eqz v4, :cond_1

    .line 137
    add-int/lit8 v1, v1, 0x1

    .line 135
    .end local v4    # "supported":Z
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_2
    new-array v0, v1, [I

    .line 141
    .local v0, "supportedMultiStateBuckets":[I
    const/4 v2, 0x0

    .line 142
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "bucket":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mSupportedMultiStateBuckets:[Z

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 143
    aget-boolean v4, v4, v3

    if-eqz v4, :cond_3

    .line 144
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "index":I
    .local v4, "index":I
    aput v3, v0, v2

    move v2, v4

    .line 142
    .end local v4    # "index":I
    .restart local v2    # "index":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 147
    .end local v3    # "bucket":I
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 149
    iget-object v3, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mStateNames:[Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 150
    return-void
.end method


# virtual methods
.method public blacklist getCustomBucketNames()[Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mCustomBucketNames:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStateNames()[Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mStateNames:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isCompatible(Lcom/android/internal/power/MeasuredEnergyStats$Config;)Z
    .locals 2
    .param p1, "other"    # Lcom/android/internal/power/MeasuredEnergyStats$Config;

    .line 114
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mSupportedStandardBuckets:[Z

    iget-object v1, p1, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mSupportedStandardBuckets:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mCustomBucketNames:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mCustomBucketNames:[Ljava/lang/String;

    .line 115
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mSupportedMultiStateBuckets:[Z

    iget-object v1, p1, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mSupportedMultiStateBuckets:[Z

    .line 116
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mStateNames:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mStateNames:[Ljava/lang/String;

    .line 118
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0
.end method

.method public blacklist isSupportedBucket(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 182
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mSupportedStandardBuckets:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public blacklist isSupportedMultiStateBucket(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 194
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats$Config;->mSupportedMultiStateBuckets:[Z

    aget-boolean v0, v0, p1

    return v0
.end method
