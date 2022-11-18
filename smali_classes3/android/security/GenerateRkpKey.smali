.class public Landroid/security/GenerateRkpKey;
.super Ljava/lang/Object;
.source "GenerateRkpKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/GenerateRkpKey$Status;
    }
.end annotation


# static fields
.field private static final blacklist NOTIFY_EMPTY:I = 0x0

.field private static final blacklist NOTIFY_KEY_GENERATED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "GenerateRkpKey"

.field private static final blacklist TIMEOUT_MS:I = 0x3e8


# instance fields
.field private blacklist mBinder:Landroid/security/IGenerateRkpKeyService;

.field private blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCountDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCountDownLatch(Landroid/security/GenerateRkpKey;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Landroid/security/GenerateRkpKey;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBinder(Landroid/security/GenerateRkpKey;Landroid/security/IGenerateRkpKeyService;)V
    .locals 0

    iput-object p1, p0, Landroid/security/GenerateRkpKey;->mBinder:Landroid/security/IGenerateRkpKeyService;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/security/GenerateRkpKey$1;

    invoke-direct {v0, p0}, Landroid/security/GenerateRkpKey$1;-><init>(Landroid/security/GenerateRkpKey;)V

    iput-object v0, p0, Landroid/security/GenerateRkpKey;->mConnection:Landroid/content/ServiceConnection;

    .line 100
    iput-object p1, p0, Landroid/security/GenerateRkpKey;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method private blacklist bindAndSendCommand(II)I
    .locals 9
    .param p1, "command"    # I
    .param p2, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    const-string v0, "GenerateRkpKey"

    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/security/IGenerateRkpKeyService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/security/GenerateRkpKey;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v2

    .line 107
    .local v2, "comp":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 108
    .local v3, "returnCode":I
    if-nez v2, :cond_0

    .line 110
    return v3

    .line 112
    :cond_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 113
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Landroid/security/GenerateRkpKey;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 114
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 115
    .local v4, "executor":Ljava/util/concurrent/Executor;
    iget-object v6, p0, Landroid/security/GenerateRkpKey;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/security/GenerateRkpKey;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v1, v5, v4, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    :try_start_0
    iget-object v5, p0, Landroid/security/GenerateRkpKey;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v6, 0x3e8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 120
    :catch_0
    move-exception v5

    .line 121
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v6, "Interrupted: "

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v5, p0, Landroid/security/GenerateRkpKey;->mBinder:Landroid/security/IGenerateRkpKeyService;

    if-eqz v5, :cond_1

    .line 124
    packed-switch p1, :pswitch_data_0

    .line 132
    const-string v5, "Invalid case for command"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 129
    :pswitch_0
    invoke-interface {v5, p2}, Landroid/security/IGenerateRkpKeyService;->notifyKeyGenerated(I)V

    .line 130
    goto :goto_1

    .line 126
    :pswitch_1
    invoke-interface {v5, p2}, Landroid/security/IGenerateRkpKeyService;->generateKey(I)I

    move-result v3

    .line 127
    goto :goto_1

    .line 135
    :cond_1
    const-string v5, "Binder object is null; failed to bind to GenerateRkpKeyService."

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/16 v3, 0x8

    .line 138
    :goto_1
    iget-object v0, p0, Landroid/security/GenerateRkpKey;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/security/GenerateRkpKey;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 139
    return v3

    .line 116
    :cond_2
    new-instance v0, Landroid/os/RemoteException;

    const-string v5, "Failed to bind to GenerateRkpKeyService"

    invoke-direct {v0, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist notifyEmpty(I)I
    .locals 1
    .param p1, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/security/GenerateRkpKey;->bindAndSendCommand(II)I

    move-result v0

    return v0
.end method

.method public blacklist notifyKeyGenerated(I)V
    .locals 1
    .param p1, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/security/GenerateRkpKey;->bindAndSendCommand(II)I

    .line 158
    return-void
.end method
