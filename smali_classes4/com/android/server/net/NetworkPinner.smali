.class public Lcom/android/server/net/NetworkPinner;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkPinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPinner$Callback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sCM:Landroid/net/ConnectivityManager;

.field private static blacklist sCallback:Lcom/android/server/net/NetworkPinner$Callback;

.field protected static final blacklist sLock:Ljava/lang/Object;

.field protected static blacklist sNetwork:Landroid/net/Network;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsCM()Landroid/net/ConnectivityManager;
    .locals 1

    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsCallback()Lcom/android/server/net/NetworkPinner$Callback;
    .locals 1

    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/android/server/net/NetworkPinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private static blacklist maybeInitConnectivityManager(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 78
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 81
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    .line 82
    if-eqz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bad luck, ConnectivityService not started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    :goto_0
    return-void
.end method

.method public static blacklist pin(Landroid/content/Context;Landroid/net/NetworkRequest;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 118
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    if-nez v1, :cond_0

    .line 120
    invoke-static {p0}, Lcom/android/server/net/NetworkPinner;->maybeInitConnectivityManager(Landroid/content/Context;)V

    .line 121
    new-instance v1, Lcom/android/server/net/NetworkPinner$Callback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/net/NetworkPinner$Callback;-><init>(Lcom/android/server/net/NetworkPinner$Callback-IA;)V

    sput-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :try_start_1
    sget-object v3, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, p1, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_2
    sget-object v3, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    const-string v4, "Failed to register network callback"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    sput-object v2, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    .line 129
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static blacklist unpin()V
    .locals 5

    .line 133
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 136
    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 137
    sget-object v2, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    sget-object v3, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/SecurityException;
    :try_start_2
    sget-object v3, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    const-string v4, "Failed to unregister network callback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v2    # "e":Ljava/lang/SecurityException;
    :goto_0
    sput-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    .line 142
    sput-object v1, Lcom/android/server/net/NetworkPinner;->sNetwork:Landroid/net/Network;

    .line 144
    :cond_0
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
