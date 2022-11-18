.class final Landroid/telephony/data/DataService$SetupDataCallRequest;
.super Ljava/lang/Object;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SetupDataCallRequest"
.end annotation


# instance fields
.field public final greylist-max-o accessNetworkType:I

.field public final greylist-max-o allowRoaming:Z

.field public final greylist-max-o callback:Landroid/telephony/data/IDataServiceCallback;

.field public final greylist-max-o dataProfile:Landroid/telephony/data/DataProfile;

.field public final greylist-max-o isRoaming:Z

.field public final greylist-max-o linkProperties:Landroid/net/LinkProperties;

.field public final blacklist matchAllRuleAllowed:Z

.field public final blacklist pduSessionId:I

.field public final greylist-max-o reason:I

.field public final blacklist sliceInfo:Landroid/telephony/data/NetworkSliceInfo;

.field public final blacklist trafficDescriptor:Landroid/telephony/data/TrafficDescriptor;


# direct methods
.method constructor blacklist <init>(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/IDataServiceCallback;)V
    .locals 0
    .param p1, "accessNetworkType"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "allowRoaming"    # Z
    .param p5, "reason"    # I
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "pduSessionId"    # I
    .param p8, "sliceInfo"    # Landroid/telephony/data/NetworkSliceInfo;
    .param p9, "trafficDescriptor"    # Landroid/telephony/data/TrafficDescriptor;
    .param p10, "matchAllRuleAllowed"    # Z
    .param p11, "callback"    # Landroid/telephony/data/IDataServiceCallback;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput p1, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->accessNetworkType:I

    .line 455
    iput-object p2, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 456
    iput-boolean p3, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->isRoaming:Z

    .line 457
    iput-boolean p4, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->allowRoaming:Z

    .line 458
    iput-object p6, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->linkProperties:Landroid/net/LinkProperties;

    .line 459
    iput p5, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->reason:I

    .line 460
    iput p7, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->pduSessionId:I

    .line 461
    iput-object p8, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->sliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 462
    iput-object p9, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->trafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    .line 463
    iput-boolean p10, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->matchAllRuleAllowed:Z

    .line 464
    iput-object p11, p0, Landroid/telephony/data/DataService$SetupDataCallRequest;->callback:Landroid/telephony/data/IDataServiceCallback;

    .line 465
    return-void
.end method
