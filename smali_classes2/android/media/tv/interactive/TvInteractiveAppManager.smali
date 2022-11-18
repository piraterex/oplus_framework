.class public final Landroid/media/tv/interactive/TvInteractiveAppManager;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$Session;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$TeletextAppState;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$ErrorCode;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$InteractiveAppState;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$ServiceState;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_APP_LINK_COMMAND:Ljava/lang/String; = "android.media.tv.interactive.action.APP_LINK_COMMAND"

.field public static final whitelist APP_LINK_KEY_BACK_URI:Ljava/lang/String; = "back_uri"

.field public static final whitelist APP_LINK_KEY_CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final whitelist APP_LINK_KEY_COMMAND_TYPE:Ljava/lang/String; = "command_type"

.field public static final whitelist APP_LINK_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final whitelist APP_LINK_KEY_SERVICE_ID:Ljava/lang/String; = "service_id"

.field public static final whitelist ERROR_BLOCKED:I = 0x5

.field public static final whitelist ERROR_ENCRYPTED:I = 0x6

.field public static final whitelist ERROR_NONE:I = 0x0

.field public static final whitelist ERROR_NOT_SUPPORTED:I = 0x2

.field public static final whitelist ERROR_RESOURCE_UNAVAILABLE:I = 0x4

.field public static final whitelist ERROR_UNKNOWN:I = 0x1

.field public static final whitelist ERROR_UNKNOWN_CHANNEL:I = 0x7

.field public static final whitelist ERROR_WEAK_SIGNAL:I = 0x3

.field public static final whitelist INTENT_KEY_BI_INTERACTIVE_APP_TYPE:Ljava/lang/String; = "bi_interactive_app_type"

.field public static final whitelist INTENT_KEY_BI_INTERACTIVE_APP_URI:Ljava/lang/String; = "bi_interactive_app_uri"

.field public static final whitelist INTENT_KEY_CHANNEL_URI:Ljava/lang/String; = "channel_uri"

.field public static final whitelist INTENT_KEY_COMMAND_TYPE:Ljava/lang/String; = "command_type"

.field public static final whitelist INTENT_KEY_INTERACTIVE_APP_SERVICE_ID:Ljava/lang/String; = "interactive_app_id"

.field public static final whitelist INTENT_KEY_TV_INPUT_ID:Ljava/lang/String; = "tv_input_id"

.field public static final whitelist INTERACTIVE_APP_STATE_ERROR:I = 0x3

.field public static final whitelist INTERACTIVE_APP_STATE_RUNNING:I = 0x2

.field public static final whitelist INTERACTIVE_APP_STATE_STOPPED:I = 0x1

.field public static final whitelist SERVICE_STATE_ERROR:I = 0x4

.field public static final whitelist SERVICE_STATE_PREPARING:I = 0x2

.field public static final whitelist SERVICE_STATE_READY:I = 0x3

.field public static final whitelist SERVICE_STATE_UNREALIZED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "TvInteractiveAppManager"

.field public static final whitelist TELETEXT_APP_STATE_ERROR:I = 0x3

.field public static final whitelist TELETEXT_APP_STATE_HIDE:I = 0x2

.field public static final whitelist TELETEXT_APP_STATE_SHOW:I = 0x1


# instance fields
.field private final blacklist mCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNextSeq:I

.field private final blacklist mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

.field private final blacklist mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackRecords(Landroid/media/tv/interactive/TvInteractiveAppManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/media/tv/interactive/TvInteractiveAppManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/media/tv/interactive/ITvInteractiveAppManager;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallbackRecordMap(Landroid/media/tv/interactive/TvInteractiveAppManager;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Landroid/media/tv/interactive/TvInteractiveAppManager;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    return p0
.end method

.method public constructor blacklist <init>(Landroid/media/tv/interactive/ITvInteractiveAppManager;I)V
    .locals 3
    .param p1, "service"    # Landroid/media/tv/interactive/ITvInteractiveAppManager;
    .param p2, "userId"    # I

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    .line 305
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mCallbackRecords:Ljava/util/List;

    .line 311
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mLock:Ljava/lang/Object;

    .line 317
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    .line 318
    iput p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    .line 319
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppManager$1;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    .line 538
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppManager$2;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager;)V

    .line 587
    .local v0, "managerCallback":Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
    if-eqz p1, :cond_0

    .line 588
    :try_start_0
    invoke-interface {p1, v0, p2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 590
    :catch_0
    move-exception v1

    .line 591
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 592
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 593
    return-void
.end method

.method private blacklist createSessionInternal(Ljava/lang/String;ILandroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V
    .locals 10
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "callback"    # Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 746
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;

    invoke-direct {v0, p3, p4}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V

    .line 750
    .local v0, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 751
    :try_start_0
    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mNextSeq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mNextSeq:I

    .line 752
    .local v2, "seq":I
    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    :try_start_1
    iget-object v4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget-object v5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    iget v9, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    move-object v6, p1

    move v7, p2

    move v8, v2

    invoke-interface/range {v4 .. v9}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->createSession(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    nop

    .line 758
    .end local v2    # "seq":I
    :try_start_2
    monitor-exit v1

    .line 759
    return-void

    .line 755
    .restart local v2    # "seq":I
    :catch_0
    move-exception v3

    .line 756
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    .end local p0    # "this":Landroid/media/tv/interactive/TvInteractiveAppManager;
    .end local p1    # "iAppServiceId":Ljava/lang/String;
    .end local p2    # "type":I
    .end local p3    # "callback":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;
    .end local p4    # "handler":Landroid/os/Handler;
    throw v4

    .line 758
    .end local v2    # "seq":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
    .restart local p0    # "this":Landroid/media/tv/interactive/TvInteractiveAppManager;
    .restart local p1    # "iAppServiceId":Ljava/lang/String;
    .restart local p2    # "type":I
    .restart local p3    # "callback":Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;
    .restart local p4    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public blacklist createSession(Ljava/lang/String;ILandroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "callback"    # Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;
    .param p4, "handler"    # Landroid/os/Handler;

    .line 741
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/interactive/TvInteractiveAppManager;->createSessionInternal(Ljava/lang/String;ILandroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V

    .line 742
    return-void
.end method

.method public whitelist getTvInteractiveAppServiceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;",
            ">;"
        }
    .end annotation

    .line 770
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->getTvInteractiveAppServiceList(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;)V
    .locals 2
    .param p1, "tvIAppServiceId"    # Ljava/lang/String;
    .param p2, "appLinkInfo"    # Landroid/media/tv/interactive/AppLinkInfo;

    .line 787
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->registerAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    nop

    .line 791
    return-void

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;

    .line 834
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 837
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    invoke-direct {v2, p2, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    monitor-exit v0

    .line 839
    return-void

    .line 838
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "tvIAppServiceId"    # Ljava/lang/String;
    .param p2, "command"    # Landroid/os/Bundle;

    .line 819
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    nop

    .line 823
    return-void

    .line 820
    :catch_0
    move-exception v0

    .line 821
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;)V
    .locals 2
    .param p1, "tvIAppServiceId"    # Ljava/lang/String;
    .param p2, "appLinkInfo"    # Landroid/media/tv/interactive/AppLinkInfo;

    .line 804
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mUserId:I

    invoke-interface {v0, p1, p2, v1}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->unregisterAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    nop

    .line 808
    return-void

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;

    .line 847
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 849
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 850
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 851
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;

    .line 852
    .local v2, "record":Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;
    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;->getCallback()Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallback;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 853
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 854
    goto :goto_1

    .line 856
    .end local v2    # "record":Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;
    :cond_0
    goto :goto_0

    .line 857
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/tv/interactive/TvInteractiveAppManager$TvInteractiveAppCallbackRecord;>;"
    :cond_1
    :goto_1
    monitor-exit v0

    .line 858
    return-void

    .line 857
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
