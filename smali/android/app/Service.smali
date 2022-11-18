.class public abstract Landroid/app/Service;
.super Landroid/content/ContextWrapper;
.source "Service.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Service$StartArgFlags;,
        Landroid/app/Service$StartResult;,
        Landroid/app/Service$StopForegroundSelector;
    }
.end annotation


# static fields
.field public static final whitelist START_CONTINUATION_MASK:I = 0xf

.field public static final whitelist START_FLAG_REDELIVERY:I = 0x1

.field public static final whitelist START_FLAG_RETRY:I = 0x2

.field public static final whitelist START_NOT_STICKY:I = 0x2

.field public static final whitelist START_REDELIVER_INTENT:I = 0x3

.field public static final whitelist START_STICKY:I = 0x1

.field public static final whitelist START_STICKY_COMPATIBILITY:I = 0x0

.field public static final greylist-max-o START_TASK_REMOVED_COMPLETE:I = 0x3e8

.field public static final whitelist STOP_FOREGROUND_DETACH:I = 0x2

.field public static final whitelist STOP_FOREGROUND_LEGACY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STOP_FOREGROUND_REMOVE:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Service"

.field private static final blacklist sStartForegroundServiceStackTraces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/StackTrace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist mActivityManager:Landroid/app/IActivityManager;

.field private greylist mApplication:Landroid/app/Application;

.field private greylist mClassName:Ljava/lang/String;

.field private greylist mStartCompatibility:Z

.field private greylist mThread:Landroid/app/ActivityThread;

.field private greylist mToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 984
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/Service;->sStartForegroundServiceStackTraces:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 350
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 965
    iput-object v0, p0, Landroid/app/Service;->mThread:Landroid/app/ActivityThread;

    .line 967
    iput-object v0, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    .line 969
    iput-object v0, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    .line 971
    iput-object v0, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    .line 973
    iput-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    .line 975
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Service;->mStartCompatibility:Z

    .line 351
    return-void
.end method

.method private blacklist clearStartForegroundServiceStackTrace()V
    .locals 2

    .line 996
    sget-object v0, Landroid/app/Service;->sStartForegroundServiceStackTraces:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 997
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    monitor-exit v0

    .line 999
    return-void

    .line 998
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getStartForegroundServiceStackTrace(Ljava/lang/String;)Landroid/app/StackTrace;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .line 1003
    sget-object v0, Landroid/app/Service;->sStartForegroundServiceStackTraces:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1004
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StackTrace;

    monitor-exit v0

    return-object v1

    .line 1005
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist setStartForegroundServiceStackTrace(Ljava/lang/String;Landroid/app/StackTrace;)V
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "stacktrace"    # Landroid/app/StackTrace;

    .line 990
    sget-object v0, Landroid/app/Service;->sStartForegroundServiceStackTraces:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 991
    :try_start_0
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    monitor-exit v0

    .line 993
    return-void

    .line 992
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final greylist attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/app/ActivityThread;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "application"    # Landroid/app/Application;
    .param p6, "activityManager"    # Ljava/lang/Object;

    .line 915
    invoke-virtual {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 916
    iput-object p2, p0, Landroid/app/Service;->mThread:Landroid/app/ActivityThread;

    .line 917
    iput-object p3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    .line 918
    iput-object p4, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    .line 919
    iput-object p5, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    .line 920
    move-object v0, p6

    check-cast v0, Landroid/app/IActivityManager;

    iput-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    .line 921
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/Service;->mStartCompatibility:Z

    .line 924
    invoke-virtual {p5}, Landroid/app/Application;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Service;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 925
    return-void
.end method

.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "newBase"    # Landroid/content/Context;

    .line 899
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 900
    if-eqz p1, :cond_0

    .line 901
    invoke-virtual {p0}, Landroid/app/Service;->getContentCaptureOptions()Landroid/content/ContentCaptureOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V

    .line 903
    :cond_0
    return-void
.end method

.method public final blacklist contentCaptureClientGetComponentName()Landroid/content/ComponentName;
    .locals 2

    .line 961
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist createServiceBaseContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/content/Context;
    .locals 1
    .param p1, "mainThread"    # Landroid/app/ActivityThread;
    .param p2, "packageInfo"    # Landroid/app/LoadedApk;

    .line 937
    invoke-static {p1, p2}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o detachAndCleanUp()V
    .locals 1

    .line 945
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    .line 946
    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 894
    const-string/jumbo v0, "nothing to dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    return-void
.end method

.method public final whitelist getApplication()Landroid/app/Application;
    .locals 1

    .line 355
    iget-object v0, p0, Landroid/app/Service;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method final greylist-max-o getClassName()Ljava/lang/String;
    .locals 1

    .line 949
    iget-object v0, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist getContentCaptureClient()Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;
    .locals 0

    .line 955
    return-object p0
.end method

.method public final whitelist getForegroundServiceType()I
    .locals 4

    .line 870
    const/4 v0, 0x0

    .line 872
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getForegroundServiceType(Landroid/content/ComponentName;Landroid/os/IBinder;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 875
    goto :goto_0

    .line 874
    :catch_0
    move-exception v1

    .line 876
    :goto_0
    return v0
.end method

.method public abstract whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 536
    return-void
.end method

.method public whitelist onCreate()V
    .locals 0

    .line 362
    return-void
.end method

.method public whitelist onDestroy()V
    .locals 0

    .line 533
    return-void
.end method

.method public whitelist onLowMemory()V
    .locals 0

    .line 539
    return-void
.end method

.method public whitelist onRebind(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 597
    return-void
.end method

.method public whitelist onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 369
    return-void
.end method

.method public whitelist onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 522
    invoke-virtual {p0, p1, p3}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 523
    iget-boolean v0, p0, Landroid/app/Service;->mStartCompatibility:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist onTaskRemoved(Landroid/content/Intent;)V
    .locals 0
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .line 610
    return-void
.end method

.method public whitelist onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .line 542
    return-void
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 582
    const/4 v0, 0x0

    return v0
.end method

.method public final greylist setForeground(Z)V
    .locals 2
    .param p1, "isForeground"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForeground: ignoring old API call on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Service"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    return-void
.end method

.method public final whitelist startForeground(ILandroid/app/Notification;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .line 743
    :try_start_0
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, -0x1

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V

    .line 746
    invoke-direct {p0}, Landroid/app/Service;->clearStartForegroundServiceStackTrace()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    .line 749
    :goto_0
    return-void
.end method

.method public final whitelist startForeground(ILandroid/app/Notification;I)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "foregroundServiceType"    # I

    .line 797
    :try_start_0
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    move v3, p1

    move-object v4, p2

    move v6, p3

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V

    .line 800
    invoke-direct {p0}, Landroid/app/Service;->clearStartForegroundServiceStackTrace()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    goto :goto_0

    .line 801
    :catch_0
    move-exception v0

    .line 803
    :goto_0
    return-void
.end method

.method public final whitelist stopForeground(I)V
    .locals 7
    .param p1, "notificationBehavior"    # I

    .line 848
    :try_start_0
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    goto :goto_0

    .line 851
    :catch_0
    move-exception v0

    .line 853
    :goto_0
    return-void
.end method

.method public final whitelist stopForeground(Z)V
    .locals 0
    .param p1, "removeNotification"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 819
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(I)V

    .line 820
    return-void
.end method

.method public final whitelist stopSelf()V
    .locals 1

    .line 619
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelf(I)V

    .line 620
    return-void
.end method

.method public final whitelist stopSelf(I)V
    .locals 3
    .param p1, "startId"    # I

    .line 628
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    .line 629
    return-void

    .line 632
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, v2, p1}, Landroid/app/IActivityManager;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    goto :goto_0

    .line 634
    :catch_0
    move-exception v0

    .line 636
    :goto_0
    return-void
.end method

.method public final whitelist stopSelfResult(I)Z
    .locals 4
    .param p1, "startId"    # I

    .line 660
    iget-object v0, p0, Landroid/app/Service;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 661
    return v1

    .line 664
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/app/Service;->mClassName:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/Service;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2, v3, p1}, Landroid/app/IActivityManager;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 666
    :catch_0
    move-exception v0

    .line 668
    return v1
.end method
