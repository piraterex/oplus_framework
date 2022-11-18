.class public abstract Lcom/android/internal/telephony/PackageChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageChangeReceiver.java"


# static fields
.field private static blacklist sHandlerThread:Landroid/os/HandlerThread;

.field static final blacklist sPackageIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field blacklist mRegisteredContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PackageChangeReceiver;->sPackageIntentFilter:Landroid/content/IntentFilter;

    .line 39
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static declared-synchronized blacklist getStaticLooper()Landroid/os/Looper;
    .locals 3

    const-class v0, Lcom/android/internal/telephony/PackageChangeReceiver;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PackageChangeReceiver;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/internal/telephony/PackageChangeReceiver;->sHandlerThread:Landroid/os/HandlerThread;

    .line 80
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 82
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PackageChangeReceiver;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method blacklist getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 167
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 168
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 169
    .local v1, "pkg":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method public blacklist onHandleForceStop([Ljava/lang/String;Z)V
    .locals 0
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "doit"    # Z

    .line 115
    return-void
.end method

.method public blacklist onPackageAdded(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 89
    return-void
.end method

.method public blacklist onPackageAppeared()V
    .locals 0

    .line 127
    return-void
.end method

.method public blacklist onPackageDisappeared()V
    .locals 0

    .line 121
    return-void
.end method

.method public blacklist onPackageModified(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 108
    return-void
.end method

.method public blacklist onPackageRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 95
    return-void
.end method

.method public blacklist onPackageUpdateFinished(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 101
    return-void
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 134
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/PackageChangeReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PackageChangeReceiver;->onPackageUpdateFinished(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PackageChangeReceiver;->onPackageModified(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PackageChangeReceiver;->onPackageAdded(Ljava/lang/String;)V

    .line 142
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/PackageChangeReceiver;->onPackageAppeared()V

    .line 144
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    goto :goto_2

    :cond_2
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 145
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/PackageChangeReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .restart local v1    # "pkg":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 147
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PackageChangeReceiver;->onPackageRemoved(Ljava/lang/String;)V

    .line 150
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/PackageChangeReceiver;->onPackageDisappeared()V

    .line 152
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_4
    goto :goto_2

    :cond_5
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 153
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/PackageChangeReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .restart local v1    # "pkg":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 155
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/PackageChangeReceiver;->onPackageModified(Ljava/lang/String;)V

    .line 157
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_6
    goto :goto_2

    :cond_7
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 158
    const-string v1, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "disappearingPackages":[Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/PackageChangeReceiver;->onHandleForceStop([Ljava/lang/String;Z)V

    .end local v1    # "disappearingPackages":[Ljava/lang/String;
    goto :goto_1

    .line 160
    :cond_8
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 161
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/PackageChangeReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 162
    .local v2, "disappearingPackages":[Ljava/lang/String;
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/PackageChangeReceiver;->onHandleForceStop([Ljava/lang/String;Z)V

    goto :goto_2

    .line 160
    .end local v2    # "disappearingPackages":[Ljava/lang/String;
    :cond_9
    :goto_1
    nop

    .line 164
    :goto_2
    return-void
.end method

.method public blacklist register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thread"    # Landroid/os/Looper;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/PackageChangeReceiver;->mRegisteredContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 61
    new-instance v0, Landroid/os/Handler;

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PackageChangeReceiver;->getStaticLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    .local v0, "handler":Landroid/os/Handler;
    if-nez p3, :cond_1

    move-object v1, p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, p3, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/android/internal/telephony/PackageChangeReceiver;->mRegisteredContext:Landroid/content/Context;

    .line 63
    sget-object v2, Lcom/android/internal/telephony/PackageChangeReceiver;->sPackageIntentFilter:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 64
    return-void

    .line 59
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregister()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/PackageChangeReceiver;->mRegisteredContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/PackageChangeReceiver;->mRegisteredContext:Landroid/content/Context;

    .line 75
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
