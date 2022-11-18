.class public final Landroid/telephony/PreciseDataConnectionState$Builder;
.super Ljava/lang/Object;
.source "PreciseDataConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PreciseDataConnectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mApnSetting:Landroid/telephony/data/ApnSetting;

.field private blacklist mFailCause:I

.field private blacklist mId:I

.field private blacklist mLinkProperties:Landroid/net/LinkProperties;

.field private blacklist mNetworkType:I

.field private blacklist mState:I

.field private blacklist mTransportType:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mTransportType:I

    .line 345
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mId:I

    .line 348
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mState:I

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mNetworkType:I

    .line 354
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    .line 360
    iput v0, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mFailCause:I

    .line 363
    iput-object v1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/PreciseDataConnectionState;
    .locals 10

    .line 449
    new-instance v9, Landroid/telephony/PreciseDataConnectionState;

    iget v1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mTransportType:I

    iget v2, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mId:I

    iget v3, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mState:I

    iget v4, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mNetworkType:I

    iget-object v5, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    iget v6, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mFailCause:I

    iget-object v7, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/telephony/PreciseDataConnectionState;-><init>(IIIILandroid/net/LinkProperties;ILandroid/telephony/data/ApnSetting;Landroid/telephony/PreciseDataConnectionState-IA;)V

    return-object v9
.end method

.method public blacklist setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/PreciseDataConnectionState$Builder;
    .locals 0
    .param p1, "apnSetting"    # Landroid/telephony/data/ApnSetting;

    .line 439
    iput-object p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 440
    return-object p0
.end method

.method public blacklist setFailCause(I)Landroid/telephony/PreciseDataConnectionState$Builder;
    .locals 0
    .param p1, "failCause"    # I

    .line 428
    iput p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mFailCause:I

    .line 429
    return-object p0
.end method

.method public blacklist setId(I)Landroid/telephony/PreciseDataConnectionState$Builder;
    .locals 0
    .param p1, "id"    # I

    .line 383
    iput p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mId:I

    .line 384
    return-object p0
.end method

.method public blacklist setLinkProperties(Landroid/net/LinkProperties;)Landroid/telephony/PreciseDataConnectionState$Builder;
    .locals 0
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    .line 416
    iput-object p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    .line 417
    return-object p0
.end method

.method public blacklist setNetworkType(I)Landroid/telephony/PreciseDataConnectionState$Builder;
    .locals 0
    .param p1, "networkType"    # I

    .line 405
    iput p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mNetworkType:I

    .line 406
    return-object p0
.end method

.method public blacklist setState(I)Landroid/telephony/PreciseDataConnectionState$Builder;
    .locals 0
    .param p1, "state"    # I

    .line 394
    iput p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mState:I

    .line 395
    return-object p0
.end method

.method public blacklist setTransportType(I)Landroid/telephony/PreciseDataConnectionState$Builder;
    .locals 0
    .param p1, "transportType"    # I

    .line 372
    iput p1, p0, Landroid/telephony/PreciseDataConnectionState$Builder;->mTransportType:I

    .line 373
    return-object p0
.end method
