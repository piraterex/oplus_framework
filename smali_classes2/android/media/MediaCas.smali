.class public final Landroid/media/MediaCas;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCas$OpenSession_1_2_Callback;,
        Landroid/media/MediaCas$OpenSessionCallback;,
        Landroid/media/MediaCas$EventListener;,
        Landroid/media/MediaCas$Session;,
        Landroid/media/MediaCas$PluginDescriptor;,
        Landroid/media/MediaCas$EventHandler;,
        Landroid/media/MediaCas$PluginStatus;,
        Landroid/media/MediaCas$SessionUsage;,
        Landroid/media/MediaCas$ScramblingMode;
    }
.end annotation


# static fields
.field public static final whitelist PLUGIN_STATUS_PHYSICAL_MODULE_CHANGED:I = 0x0

.field public static final whitelist PLUGIN_STATUS_SESSION_NUMBER_CHANGED:I = 0x1

.field public static final whitelist SCRAMBLING_MODE_AES128:I = 0x9

.field public static final whitelist SCRAMBLING_MODE_AES_ECB:I = 0xa

.field public static final whitelist SCRAMBLING_MODE_AES_SCTE52:I = 0xb

.field public static final whitelist SCRAMBLING_MODE_DVB_CISSA_V1:I = 0x6

.field public static final whitelist SCRAMBLING_MODE_DVB_CSA1:I = 0x1

.field public static final whitelist SCRAMBLING_MODE_DVB_CSA2:I = 0x2

.field public static final whitelist SCRAMBLING_MODE_DVB_CSA3_ENHANCE:I = 0x5

.field public static final whitelist SCRAMBLING_MODE_DVB_CSA3_MINIMAL:I = 0x4

.field public static final whitelist SCRAMBLING_MODE_DVB_CSA3_STANDARD:I = 0x3

.field public static final whitelist SCRAMBLING_MODE_DVB_IDSA:I = 0x7

.field public static final whitelist SCRAMBLING_MODE_MULTI2:I = 0x8

.field public static final whitelist SCRAMBLING_MODE_RESERVED:I = 0x0

.field public static final whitelist SCRAMBLING_MODE_TDES_ECB:I = 0xc

.field public static final whitelist SCRAMBLING_MODE_TDES_SCTE52:I = 0xd

.field public static final whitelist SESSION_USAGE_LIVE:I = 0x0

.field public static final whitelist SESSION_USAGE_PLAYBACK:I = 0x1

.field public static final whitelist SESSION_USAGE_RECORD:I = 0x2

.field public static final whitelist SESSION_USAGE_TIMESHIFT:I = 0x3

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaCas"

.field private static final blacklist sService:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/hardware/cas/V1_0/IMediaCasService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBinder:Landroid/hardware/cas/V1_2/ICasListener$Stub;

.field private blacklist mCasSystemId:I

.field private blacklist mClientId:I

.field private greylist-max-o mEventHandler:Landroid/media/MediaCas$EventHandler;

.field private greylist-max-o mHandlerThread:Landroid/os/HandlerThread;

.field private greylist-max-o mICas:Landroid/hardware/cas/V1_0/ICas;

.field private blacklist mICasV11:Landroid/hardware/cas/V1_1/ICas;

.field private blacklist mICasV12:Landroid/hardware/cas/V1_2/ICas;

.field private greylist-max-o mListener:Landroid/media/MediaCas$EventListener;

.field private blacklist mPriorityHint:I

.field private final blacklist mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

.field private final blacklist mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/MediaCas$Session;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

.field private blacklist mTvInputServiceSessionId:Ljava/lang/String;

.field private blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCasSystemId(Landroid/media/MediaCas;)I
    .locals 0

    iget p0, p0, Landroid/media/MediaCas;->mCasSystemId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmICasV11(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_1/ICas;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCas;->mICasV11:Landroid/hardware/cas/V1_1/ICas;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionMap(Landroid/media/MediaCas;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTunerResourceManager(Landroid/media/MediaCas;)Landroid/media/tv/tunerresourcemanager/TunerResourceManager;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaCas;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveSessionFromResourceMap(Landroid/media/MediaCas;Landroid/media/MediaCas$Session;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaCas;->removeSessionFromResourceMap(Landroid/media/MediaCas$Session;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtoByteArray(Landroid/media/MediaCas;[B)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mtoByteArray(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mtoBytes(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaCas;->toBytes(Ljava/util/ArrayList;)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 271
    new-instance v0, Landroid/media/MediaCas$1;

    invoke-direct {v0}, Landroid/media/MediaCas$1;-><init>()V

    sput-object v0, Landroid/media/MediaCas;->sService:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1
    .param p1, "casSystemId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    .line 360
    new-instance v0, Landroid/media/MediaCas$2;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$2;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    .line 395
    new-instance v0, Landroid/media/MediaCas$3;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$3;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    .line 736
    invoke-direct {p0, p1}, Landroid/media/MediaCas;->createPlugin(I)V

    .line 737
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "casSystemId"    # I
    .param p3, "tvInputServiceSessionId"    # Ljava/lang/String;
    .param p4, "priorityHint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    .line 360
    new-instance v0, Landroid/media/MediaCas$2;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$2;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    .line 395
    new-instance v0, Landroid/media/MediaCas$3;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$3;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    .line 754
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 755
    invoke-direct {p0, p2}, Landroid/media/MediaCas;->createPlugin(I)V

    .line 756
    invoke-direct {p0, p1, p3, p4}, Landroid/media/MediaCas;->registerClient(Landroid/content/Context;Ljava/lang/String;I)V

    .line 757
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILjava/lang/String;ILandroid/os/Handler;Landroid/media/MediaCas$EventListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "casSystemId"    # I
    .param p3, "tvInputServiceSessionId"    # Ljava/lang/String;
    .param p4, "priorityHint"    # I
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "listener"    # Landroid/media/MediaCas$EventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    .line 360
    new-instance v0, Landroid/media/MediaCas$2;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$2;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    .line 395
    new-instance v0, Landroid/media/MediaCas$3;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$3;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    .line 779
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 780
    invoke-virtual {p0, p6, p5}, Landroid/media/MediaCas;->setEventListener(Landroid/media/MediaCas$EventListener;Landroid/os/Handler;)V

    .line 781
    invoke-direct {p0, p2}, Landroid/media/MediaCas;->createPlugin(I)V

    .line 782
    invoke-direct {p0, p1, p3, p4}, Landroid/media/MediaCas;->registerClient(Landroid/content/Context;Ljava/lang/String;I)V

    .line 783
    return-void
.end method

.method private blacklist addSessionToResourceMap(Landroid/media/MediaCas$Session;I)V
    .locals 3
    .param p1, "session"    # Landroid/media/MediaCas$Session;
    .param p2, "sessionResourceHandle"    # I

    .line 939
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 940
    iget-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    monitor-enter v0

    .line 941
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 944
    :cond_0
    :goto_0
    return-void
.end method

.method private greylist-max-o cleanupAndRethrowIllegalState()V
    .locals 1

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    .line 319
    iput-object v0, p0, Landroid/media/MediaCas;->mICasV11:Landroid/hardware/cas/V1_1/ICas;

    .line 320
    iput-object v0, p0, Landroid/media/MediaCas;->mICasV12:Landroid/hardware/cas/V1_2/ICas;

    .line 321
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private blacklist createPlugin(I)V
    .locals 6
    .param p1, "casSystemId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    .line 680
    const-string v0, "Unsupported casSystemId "

    const-string v1, "MediaCas"

    :try_start_0
    iput p1, p0, Landroid/media/MediaCas;->mCasSystemId:I

    .line 681
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, p0, Landroid/media/MediaCas;->mUserId:I

    .line 682
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v2

    .line 683
    .local v2, "service":Landroid/hardware/cas/V1_0/IMediaCasService;
    nop

    .line 684
    invoke-static {v2}, Landroid/hardware/cas/V1_2/IMediaCasService;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/cas/V1_2/IMediaCasService;

    move-result-object v3

    .line 685
    .local v3, "serviceV12":Landroid/hardware/cas/V1_2/IMediaCasService;
    if-nez v3, :cond_1

    .line 686
    nop

    .line 687
    invoke-static {v2}, Landroid/hardware/cas/V1_1/IMediaCasService;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/cas/V1_1/IMediaCasService;

    move-result-object v4

    .line 688
    .local v4, "serviceV11":Landroid/hardware/cas/V1_1/IMediaCasService;
    if-nez v4, :cond_0

    .line 689
    const-string v5, "Used cas@1_0 interface to create plugin"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v5, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    invoke-interface {v2, p1, v5}, Landroid/hardware/cas/V1_0/IMediaCasService;->createPlugin(ILandroid/hardware/cas/V1_0/ICasListener;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    goto :goto_0

    .line 692
    :cond_0
    const-string v5, "Used cas@1.1 interface to create plugin"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v5, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    invoke-interface {v4, p1, v5}, Landroid/hardware/cas/V1_1/IMediaCasService;->createPluginExt(ILandroid/hardware/cas/V1_1/ICasListener;)Landroid/hardware/cas/V1_1/ICas;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaCas;->mICasV11:Landroid/hardware/cas/V1_1/ICas;

    iput-object v5, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    .line 695
    .end local v4    # "serviceV11":Landroid/hardware/cas/V1_1/IMediaCasService;
    :goto_0
    goto :goto_1

    .line 696
    :cond_1
    const-string v4, "Used cas@1.2 interface to create plugin"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v4, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    .line 699
    invoke-interface {v3, p1, v4}, Landroid/hardware/cas/V1_2/IMediaCasService;->createPluginExt(ILandroid/hardware/cas/V1_1/ICasListener;)Landroid/hardware/cas/V1_1/ICas;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/cas/V1_2/ICas;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/cas/V1_2/ICas;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaCas;->mICasV12:Landroid/hardware/cas/V1_2/ICas;

    iput-object v4, p0, Landroid/media/MediaCas;->mICasV11:Landroid/hardware/cas/V1_1/ICas;

    iput-object v4, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    .end local v2    # "service":Landroid/hardware/cas/V1_0/IMediaCasService;
    .end local v3    # "serviceV12":Landroid/hardware/cas/V1_2/IMediaCasService;
    :goto_1
    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v1, :cond_2

    .line 710
    return-void

    .line 706
    :cond_2
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 705
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 701
    :catch_0
    move-exception v2

    .line 702
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create plugin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 705
    .end local v2    # "e":Ljava/lang/Exception;
    nop

    .line 706
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 705
    :goto_2
    iget-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    if-nez v2, :cond_3

    .line 706
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 709
    :cond_3
    throw v1
.end method

.method public static whitelist enumeratePlugins()[Landroid/media/MediaCas$PluginDescriptor;
    .locals 7

    .line 658
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v0

    .line 660
    .local v0, "service":Landroid/hardware/cas/V1_0/IMediaCasService;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 662
    nop

    .line 663
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/cas/V1_0/IMediaCasService;->enumeratePlugins()Ljava/util/ArrayList;

    move-result-object v2

    .line 664
    .local v2, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 665
    return-object v1

    .line 667
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/media/MediaCas$PluginDescriptor;

    .line 668
    .local v3, "results":[Landroid/media/MediaCas$PluginDescriptor;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 669
    new-instance v5, Landroid/media/MediaCas$PluginDescriptor;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;

    invoke-direct {v5, v6}, Landroid/media/MediaCas$PluginDescriptor;-><init>(Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;)V

    aput-object v5, v3, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 671
    .end local v4    # "i":I
    :cond_1
    return-object v3

    .line 672
    .end local v2    # "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;>;"
    .end local v3    # "results":[Landroid/media/MediaCas$PluginDescriptor;
    :catch_0
    move-exception v2

    .line 675
    :cond_2
    return-object v1
.end method

.method static greylist-max-o getService()Landroid/hardware/cas/V1_0/IMediaCasService;
    .locals 1

    .line 308
    sget-object v0, Landroid/media/MediaCas;->sService:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/cas/V1_0/IMediaCasService;

    return-object v0
.end method

.method private blacklist getSessionResourceHandle()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 920
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 922
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 923
    .local v0, "sessionResourceHandle":[I
    const/4 v1, -0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 924
    iget-object v1, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    if-eqz v1, :cond_1

    .line 925
    new-instance v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;-><init>()V

    .line 926
    .local v1, "casSessionRequest":Landroid/media/tv/tunerresourcemanager/CasSessionRequest;
    iget v3, p0, Landroid/media/MediaCas;->mClientId:I

    iput v3, v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    .line 927
    iget v3, p0, Landroid/media/MediaCas;->mCasSystemId:I

    iput v3, v1, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    .line 928
    iget-object v3, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 929
    invoke-virtual {v3, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 930
    :cond_0
    new-instance v2, Landroid/media/MediaCasException$InsufficientResourceException;

    const-string v3, "insufficient resource to Open Session"

    invoke-direct {v2, v3}, Landroid/media/MediaCasException$InsufficientResourceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 934
    .end local v1    # "casSessionRequest":Landroid/media/tv/tunerresourcemanager/CasSessionRequest;
    :cond_1
    :goto_0
    aget v1, v0, v2

    return v1
.end method

.method public static whitelist isSystemIdSupported(I)Z
    .locals 2
    .param p0, "CA_system_id"    # I

    .line 641
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v0

    .line 643
    .local v0, "service":Landroid/hardware/cas/V1_0/IMediaCasService;
    if-eqz v0, :cond_0

    .line 645
    :try_start_0
    invoke-interface {v0, p0}, Landroid/hardware/cas/V1_0/IMediaCasService;->isSystemIdSupported(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 646
    :catch_0
    move-exception v1

    .line 649
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist registerClient(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tvInputServiceSessionId"    # Ljava/lang/String;
    .param p3, "priorityHint"    # I

    .line 715
    nop

    .line 716
    const-string/jumbo v0, "tv_tuner_resource_mgr"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iput-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 717
    if-eqz v0, :cond_0

    .line 718
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 719
    .local v0, "clientId":[I
    new-instance v1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;-><init>()V

    .line 720
    .local v1, "profile":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    iput-object p2, v1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    .line 721
    iput p3, v1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 722
    iget-object v2, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 723
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    .line 722
    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;[I)V

    .line 724
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, p0, Landroid/media/MediaCas;->mClientId:I

    .line 726
    .end local v0    # "clientId":[I
    .end local v1    # "profile":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    :cond_0
    return-void
.end method

.method private blacklist removeSessionFromResourceMap(Landroid/media/MediaCas$Session;)V
    .locals 4
    .param p1, "session"    # Landroid/media/MediaCas$Session;

    .line 948
    iget-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    monitor-enter v0

    .line 949
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 950
    iget-object v1, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v2, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/MediaCas;->mClientId:I

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseCasSession(II)V

    .line 951
    iget-object v1, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    :cond_0
    monitor-exit v0

    .line 954
    return-void

    .line 953
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o toByteArray([B)Ljava/util/ArrayList;
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 454
    if-nez p1, :cond_0

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 457
    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o toByteArray([BII)Ljava/util/ArrayList;
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 447
    .local v0, "byteArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 448
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private greylist-max-o toBytes(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 461
    .local p1, "byteArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 462
    .local v0, "data":[B
    if-eqz p1, :cond_0

    .line 463
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [B

    .line 464
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 465
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private greylist-max-o validateInternalStates()V
    .locals 1

    .line 312
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v0, :cond_0

    .line 315
    return-void

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 3

    .line 1159
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1161
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/cas/V1_0/ICas;->release()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1164
    :catchall_0
    move-exception v0

    iput-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    .line 1165
    throw v0

    .line 1162
    :catch_0
    move-exception v0

    .line 1164
    :goto_0
    iput-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    .line 1168
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    if-eqz v0, :cond_1

    .line 1169
    iget v2, p0, Landroid/media/MediaCas;->mClientId:I

    invoke-virtual {v0, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->unregisterClientProfile(I)V

    .line 1170
    iput-object v1, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 1173
    :cond_1
    iget-object v0, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 1174
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1175
    iput-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1177
    :cond_2
    return-void
.end method

.method greylist-max-o createFromSessionId(Ljava/util/ArrayList;)Landroid/media/MediaCas$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/media/MediaCas$Session;"
        }
    .end annotation

    .line 627
    .local p1, "sessionId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 630
    :cond_0
    new-instance v0, Landroid/media/MediaCas$Session;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaCas$Session;-><init>(Landroid/media/MediaCas;Ljava/util/ArrayList;)V

    return-object v0

    .line 628
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    .line 1181
    invoke-virtual {p0}, Landroid/media/MediaCas;->close()V

    .line 1182
    return-void
.end method

.method public blacklist forceResourceLost()V
    .locals 1

    .line 1152
    iget-object v0, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    if-eqz v0, :cond_0

    .line 1153
    invoke-virtual {v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;->onReclaimResources()V

    .line 1155
    :cond_0
    return-void
.end method

.method greylist-max-o getBinder()Landroid/os/IHwBinder;
    .locals 1

    .line 786
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 788
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v0}, Landroid/hardware/cas/V1_0/ICas;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openSession()Landroid/media/MediaCas$Session;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 971
    const-string v0, "MediaCas"

    invoke-direct {p0}, Landroid/media/MediaCas;->getSessionResourceHandle()I

    move-result v1

    .line 974
    .local v1, "sessionResourceHandle":I
    const/16 v2, 0x118

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/media/MediaCas$OpenSessionCallback;

    invoke-direct {v4, p0, v3}, Landroid/media/MediaCas$OpenSessionCallback;-><init>(Landroid/media/MediaCas;Landroid/media/MediaCas$OpenSessionCallback-IA;)V

    .line 975
    .local v4, "cb":Landroid/media/MediaCas$OpenSessionCallback;
    iget-object v5, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v5, v4}, Landroid/hardware/cas/V1_0/ICas;->openSession(Landroid/hardware/cas/V1_0/ICas$openSessionCallback;)V

    .line 976
    iget v5, v4, Landroid/media/MediaCas$OpenSessionCallback;->mStatus:I

    invoke-static {v5}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .line 977
    iget-object v5, v4, Landroid/media/MediaCas$OpenSessionCallback;->mSession:Landroid/media/MediaCas$Session;

    invoke-direct {p0, v5, v1}, Landroid/media/MediaCas;->addSessionToResourceMap(Landroid/media/MediaCas$Session;I)V

    .line 978
    const-string v5, "Write Stats Log for succeed to Open Session."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget v5, p0, Landroid/media/MediaCas;->mUserId:I

    iget v6, p0, Landroid/media/MediaCas;->mCasSystemId:I

    const/4 v7, 0x1

    .line 980
    invoke-static {v2, v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 982
    iget-object v0, v4, Landroid/media/MediaCas$OpenSessionCallback;->mSession:Landroid/media/MediaCas$Session;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 983
    .end local v4    # "cb":Landroid/media/MediaCas$OpenSessionCallback;
    :catch_0
    move-exception v4

    .line 984
    .local v4, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 986
    .end local v4    # "e":Landroid/os/RemoteException;
    const-string v4, "Write Stats Log for fail to Open Session."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget v0, p0, Landroid/media/MediaCas;->mUserId:I

    iget v4, p0, Landroid/media/MediaCas;->mCasSystemId:I

    const/4 v5, 0x2

    .line 988
    invoke-static {v2, v0, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 990
    return-object v3
.end method

.method public whitelist openSession(II)Landroid/media/MediaCas$Session;
    .locals 8
    .param p1, "sessionUsage"    # I
    .param p2, "scramblingMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1013
    invoke-direct {p0}, Landroid/media/MediaCas;->getSessionResourceHandle()I

    move-result v0

    .line 1015
    .local v0, "sessionResourceHandle":I
    iget-object v1, p0, Landroid/media/MediaCas;->mICasV12:Landroid/hardware/cas/V1_2/ICas;

    const-string v2, "MediaCas"

    if-eqz v1, :cond_0

    .line 1021
    const/16 v1, 0x118

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/media/MediaCas$OpenSession_1_2_Callback;

    invoke-direct {v4, p0, v3}, Landroid/media/MediaCas$OpenSession_1_2_Callback;-><init>(Landroid/media/MediaCas;Landroid/media/MediaCas$OpenSession_1_2_Callback-IA;)V

    .line 1022
    .local v4, "cb":Landroid/media/MediaCas$OpenSession_1_2_Callback;
    iget-object v5, p0, Landroid/media/MediaCas;->mICasV12:Landroid/hardware/cas/V1_2/ICas;

    invoke-interface {v5, p1, p2, v4}, Landroid/hardware/cas/V1_2/ICas;->openSession_1_2(IILandroid/hardware/cas/V1_2/ICas$openSession_1_2Callback;)V

    .line 1023
    iget v5, v4, Landroid/media/MediaCas$OpenSession_1_2_Callback;->mStatus:I

    invoke-static {v5}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .line 1024
    iget-object v5, v4, Landroid/media/MediaCas$OpenSession_1_2_Callback;->mSession:Landroid/media/MediaCas$Session;

    invoke-direct {p0, v5, v0}, Landroid/media/MediaCas;->addSessionToResourceMap(Landroid/media/MediaCas$Session;I)V

    .line 1025
    const-string v5, "Write Stats Log for succeed to Open Session."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget v5, p0, Landroid/media/MediaCas;->mUserId:I

    iget v6, p0, Landroid/media/MediaCas;->mCasSystemId:I

    const/4 v7, 0x1

    .line 1027
    invoke-static {v1, v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1029
    iget-object v1, v4, Landroid/media/MediaCas$OpenSession_1_2_Callback;->mSession:Landroid/media/MediaCas$Session;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1030
    .end local v4    # "cb":Landroid/media/MediaCas$OpenSession_1_2_Callback;
    :catch_0
    move-exception v4

    .line 1031
    .local v4, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1033
    .end local v4    # "e":Landroid/os/RemoteException;
    const-string v4, "Write Stats Log for fail to Open Session."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget v2, p0, Landroid/media/MediaCas;->mUserId:I

    iget v4, p0, Landroid/media/MediaCas;->mCasSystemId:I

    const/4 v5, 0x2

    .line 1035
    invoke-static {v1, v2, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1037
    return-object v3

    .line 1016
    :cond_0
    const-string v1, "Open Session with scrambling mode is only supported by cas@1.2+ interface"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    const-string v2, "Open Session with scrambling mode is not supported"

    invoke-direct {v1, v2}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist processEmm([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1075
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/MediaCas;->processEmm([BII)V

    .line 1076
    return-void
.end method

.method public whitelist processEmm([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1053
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 1056
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    .line 1057
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/cas/V1_0/ICas;->processEmm(Ljava/util/ArrayList;)I

    move-result v0

    .line 1056
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    goto :goto_0

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1061
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist provision(Ljava/lang/String;)V
    .locals 1
    .param p1, "provisionString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1114
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 1117
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    .line 1118
    invoke-interface {v0, p1}, Landroid/hardware/cas/V1_0/ICas;->provision(Ljava/lang/String;)I

    move-result v0

    .line 1117
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    goto :goto_0

    .line 1119
    :catch_0
    move-exception v0

    .line 1120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1122
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist refreshEntitlements(I[B)V
    .locals 2
    .param p1, "refreshType"    # I
    .param p2, "refreshData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1136
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 1139
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    .line 1140
    invoke-direct {p0, p2}, Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/cas/V1_0/ICas;->refreshEntitlements(ILjava/util/ArrayList;)I

    move-result v0

    .line 1139
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    goto :goto_0

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1144
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist sendEvent(II[B)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "arg"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1092
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 1095
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    .line 1096
    invoke-direct {p0, p3}, Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/hardware/cas/V1_0/ICas;->sendEvent(IILjava/util/ArrayList;)I

    move-result v0

    .line 1095
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    goto :goto_0

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1100
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setEventListener(Landroid/media/MediaCas$EventListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/MediaCas$EventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 855
    iput-object p1, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    .line 857
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 858
    iput-object v0, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    .line 859
    return-void

    .line 862
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 863
    .local v0, "looper":Landroid/os/Looper;
    :cond_1
    if-nez v0, :cond_4

    .line 864
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_4

    .line 865
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_4

    .line 866
    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 867
    :cond_2
    new-instance v1, Landroid/os/HandlerThread;

    const/4 v2, -0x2

    const-string v3, "MediaCasEventThread"

    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    .line 869
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 871
    :cond_3
    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 873
    :cond_4
    new-instance v1, Landroid/media/MediaCas$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaCas$EventHandler;-><init>(Landroid/media/MediaCas;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    .line 874
    return-void
.end method

.method public whitelist setPrivateData([B)V
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 886
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 889
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    const/4 v1, 0x0

    array-length v2, p1

    .line 890
    invoke-direct {p0, p1, v1, v2}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/cas/V1_0/ICas;->setPrivateData(Ljava/util/ArrayList;)I

    move-result v0

    .line 889
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    goto :goto_0

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 894
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
