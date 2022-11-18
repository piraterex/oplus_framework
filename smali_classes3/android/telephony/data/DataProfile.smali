.class public final Landroid/telephony/data/DataProfile;
.super Ljava/lang/Object;
.source "DataProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/DataProfile$Builder;,
        Landroid/telephony/data/DataProfile$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TYPE_3GPP:I = 0x1

.field public static final whitelist TYPE_3GPP2:I = 0x2

.field public static final whitelist TYPE_COMMON:I


# instance fields
.field private final blacklist mApnSetting:Landroid/telephony/data/ApnSetting;

.field private blacklist mPreferred:Z

.field private blacklist mSetupTimestamp:J

.field private final blacklist mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

.field private final greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 495
    new-instance v0, Landroid/telephony/data/DataProfile$1;

    invoke-direct {v0}, Landroid/telephony/data/DataProfile$1;-><init>()V

    sput-object v0, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    .line 126
    const-class v0, Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/ApnSetting;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/ApnSetting;

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 127
    const-class v0, Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/TrafficDescriptor;

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/DataProfile;->mSetupTimestamp:J

    .line 130
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/data/DataProfile-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/DataProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/data/DataProfile$Builder;)V
    .locals 7
    .param p1, "builder"    # Landroid/telephony/data/DataProfile$Builder;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmApnSetting(Landroid/telephony/data/DataProfile$Builder;)Landroid/telephony/data/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 89
    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmTrafficDescriptor(Landroid/telephony/data/DataProfile$Builder;)Landroid/telephony/data/TrafficDescriptor;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    .line 90
    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmPreferred(Landroid/telephony/data/DataProfile$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    .line 92
    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmType(Landroid/telephony/data/DataProfile$Builder;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 93
    invoke-static {p1}, Landroid/telephony/data/DataProfile$Builder;->-$$Nest$fgetmType(Landroid/telephony/data/DataProfile$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    goto :goto_2

    .line 94
    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 95
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v2

    .line 102
    .local v2, "networkTypes":I
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "operator":Ljava/lang/String;
    if-eqz v2, :cond_4

    if-eqz v0, :cond_1

    .line 105
    const-string v3, "45507"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    invoke-static {v2}, Landroid/telephony/ServiceState;->bearerBitmapHasCdma(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    invoke-static {v2}, Landroid/telephony/ServiceState;->bearerBitmapHasGsm(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    int-to-long v3, v2

    const-wide/16 v5, 0x2878

    and-long/2addr v3, v5

    int-to-long v5, v2

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 112
    const/4 v1, 0x2

    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    goto :goto_1

    .line 113
    :cond_2
    int-to-long v3, v2

    const-wide/32 v5, 0xdd387

    and-long/2addr v3, v5

    int-to-long v5, v2

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 115
    const/4 v1, 0x1

    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    goto :goto_1

    .line 117
    :cond_3
    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    goto :goto_1

    .line 109
    :cond_4
    :goto_0
    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    .line 119
    .end local v0    # "operator":Ljava/lang/String;
    .end local v2    # "networkTypes":I
    :goto_1
    goto :goto_2

    .line 120
    :cond_5
    iput v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    .line 122
    :goto_2
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/data/DataProfile$Builder;Landroid/telephony/data/DataProfile-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/data/DataProfile;-><init>(Landroid/telephony/data/DataProfile$Builder;)V

    return-void
.end method

.method private static blacklist networkCapabilityToApnType(I)I
    .locals 1
    .param p0, "networkCapability"    # I

    .line 421
    sparse-switch p0, :sswitch_data_0

    .line 452
    const/4 v0, 0x0

    return v0

    .line 445
    :sswitch_0
    const/16 v0, 0x2000

    return v0

    .line 447
    :sswitch_1
    const/16 v0, 0x1000

    return v0

    .line 449
    :sswitch_2
    const/16 v0, 0x4000

    return v0

    .line 441
    :sswitch_3
    const/16 v0, 0x400

    return v0

    .line 439
    :sswitch_4
    const/16 v0, 0x11

    return v0

    .line 437
    :sswitch_5
    const/16 v0, 0x200

    return v0

    .line 435
    :sswitch_6
    const/16 v0, 0x800

    return v0

    .line 443
    :sswitch_7
    const/16 v0, 0x100

    return v0

    .line 433
    :sswitch_8
    const/16 v0, 0x80

    return v0

    .line 431
    :sswitch_9
    const/16 v0, 0x40

    return v0

    .line 429
    :sswitch_a
    const/16 v0, 0x20

    return v0

    .line 427
    :sswitch_b
    const/16 v0, 0x8

    return v0

    .line 425
    :sswitch_c
    const/4 v0, 0x4

    return v0

    .line 423
    :sswitch_d
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0x1 -> :sswitch_c
        0x2 -> :sswitch_b
        0x3 -> :sswitch_a
        0x4 -> :sswitch_9
        0x5 -> :sswitch_8
        0x7 -> :sswitch_7
        0x9 -> :sswitch_6
        0xa -> :sswitch_5
        0xc -> :sswitch_4
        0x17 -> :sswitch_3
        0x1d -> :sswitch_2
        0x1e -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public blacklist canSatisfy(I)Z
    .locals 2
    .param p1, "networkCapability"    # I

    .line 409
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    .line 410
    invoke-static {p1}, Landroid/telephony/data/DataProfile;->networkCapabilityToApnType(I)I

    move-result v1

    .line 409
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist canSatisfy([I)Z
    .locals 5
    .param p1, "networkCapabilities"    # [I

    .line 389
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 390
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 391
    .local v3, "netCap":I
    invoke-virtual {p0, v3}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 392
    return v1

    .line 390
    .end local v3    # "netCap":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 397
    :cond_2
    return v1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 510
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 511
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 512
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/DataProfile;

    .line 513
    .local v2, "that":Landroid/telephony/data/DataProfile;
    iget v3, p0, Landroid/telephony/data/DataProfile;->mType:I

    iget v4, v2, Landroid/telephony/data/DataProfile;->mType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    iget-object v4, v2, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 514
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    iget-object v4, v2, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    .line 515
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 513
    :goto_0
    return v0

    .line 511
    .end local v2    # "that":Landroid/telephony/data/DataProfile;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getApn()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 154
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getApnSetting()Landroid/telephony/data/ApnSetting;
    .locals 1

    .line 368
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object v0
.end method

.method public whitelist getAuthType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v0

    return v0

    .line 178
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBearerBitmask()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v0

    return v0

    .line 294
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLastSetupTimestamp()J
    .locals 2

    .line 471
    iget-wide v0, p0, Landroid/telephony/data/DataProfile;->mSetupTimestamp:J

    return-wide v0
.end method

.method public blacklist getMaxConnections()I
    .locals 1

    .line 230
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMaxConns()I

    move-result v0

    return v0

    .line 233
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaxConnectionsTime()I
    .locals 1

    .line 218
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMaxConnsTime()I

    move-result v0

    return v0

    .line 221
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMtu()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtuV4()I

    move-result v0

    return v0
.end method

.method public whitelist getMtuV4()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v0

    return v0

    .line 317
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMtuV6()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result v0

    return v0

    .line 329
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPassword()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getProfileId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result v0

    return v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getProtocolType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v0

    return v0

    .line 166
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getRoamingProtocolType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v0

    return v0

    .line 281
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSupportedApnTypesBitmask()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 266
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    return v0

    .line 269
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;
    .locals 1

    .line 376
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    return-object v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 209
    iget v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    return v0
.end method

.method public whitelist getUserName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getWaitTime()I
    .locals 1

    .line 244
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getWaitTime()I

    move-result v0

    return v0

    .line 247
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 520
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    .line 255
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isEnabled()Z

    move-result v0

    return v0

    .line 258
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isPersistent()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result v0

    return v0

    .line 341
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isPreferred()Z
    .locals 1

    .line 360
    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    return v0
.end method

.method public blacklist setLastSetupTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 462
    iput-wide p1, p0, Landroid/telephony/data/DataProfile;->mSetupTimestamp:J

    .line 463
    return-void
.end method

.method public blacklist setPreferred(Z)V
    .locals 0
    .param p1, "preferred"    # Z

    .line 351
    iput-boolean p1, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    .line 352
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DataProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 488
    iget v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApnSetting:Landroid/telephony/data/ApnSetting;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 490
    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 491
    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mPreferred:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 492
    iget-wide v0, p0, Landroid/telephony/data/DataProfile;->mSetupTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 493
    return-void
.end method
