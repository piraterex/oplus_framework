.class Landroid/telephony/ModemActivityInfo$1;
.super Ljava/lang/Object;
.source "ModemActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ModemActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/ModemActivityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ModemActivityInfo;
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 193
    .local v6, "timestamp":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 194
    .local v8, "sleepTimeMs":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 195
    .local v9, "idleTimeMs":I
    sget-object v0, Landroid/telephony/ActivityStatsTechSpecificInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 196
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Landroid/os/Parcelable;

    .line 198
    .local v10, "tempSpecifiers":[Landroid/os/Parcelable;
    array-length v0, v10

    new-array v11, v0, [Landroid/telephony/ActivityStatsTechSpecificInfo;

    .line 200
    .local v11, "activityStatsTechSpecificInfo":[Landroid/telephony/ActivityStatsTechSpecificInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, v10

    if-ge v0, v1, :cond_0

    .line 201
    aget-object v1, v10, v0

    check-cast v1, Landroid/telephony/ActivityStatsTechSpecificInfo;

    aput-object v1, v11, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    .end local v0    # "i":I
    :cond_0
    new-instance v12, Landroid/telephony/ModemActivityInfo;

    move-object v0, v12

    move-wide v1, v6

    move v3, v8

    move v4, v9

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ModemActivityInfo;-><init>(JII[Landroid/telephony/ActivityStatsTechSpecificInfo;)V

    return-object v12
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Landroid/telephony/ModemActivityInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ModemActivityInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/ModemActivityInfo;
    .locals 1
    .param p1, "size"    # I

    .line 209
    new-array v0, p1, [Landroid/telephony/ModemActivityInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Landroid/telephony/ModemActivityInfo$1;->newArray(I)[Landroid/telephony/ModemActivityInfo;

    move-result-object p1

    return-object p1
.end method
