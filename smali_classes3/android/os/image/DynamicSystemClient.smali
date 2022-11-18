.class public Landroid/os/image/DynamicSystemClient;
.super Ljava/lang/Object;
.source "DynamicSystemClient.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;,
        Landroid/os/image/DynamicSystemClient$IncomingHandler;,
        Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;,
        Landroid/os/image/DynamicSystemClient$StatusChangedCause;,
        Landroid/os/image/DynamicSystemClient$InstallationStatus;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_NOTIFY_IF_IN_USE:Ljava/lang/String; = "android.os.image.action.NOTIFY_IF_IN_USE"

.field public static final blacklist ACTION_START_INSTALL:Ljava/lang/String; = "android.os.image.action.START_INSTALL"

.field public static final whitelist CAUSE_ERROR_EXCEPTION:I = 0x6

.field public static final whitelist CAUSE_ERROR_INVALID_URL:I = 0x4

.field public static final whitelist CAUSE_ERROR_IO:I = 0x3

.field public static final whitelist CAUSE_ERROR_IPC:I = 0x5

.field public static final whitelist CAUSE_INSTALL_CANCELLED:I = 0x2

.field public static final whitelist CAUSE_INSTALL_COMPLETED:I = 0x1

.field public static final whitelist CAUSE_NOT_SPECIFIED:I = 0x0

.field public static final blacklist KEY_EXCEPTION_DETAIL:Ljava/lang/String; = "KEY_EXCEPTION_DETAIL"

.field public static final blacklist KEY_INSTALLED_SIZE:Ljava/lang/String; = "KEY_INSTALLED_SIZE"

.field public static final blacklist KEY_SYSTEM_SIZE:Ljava/lang/String; = "KEY_SYSTEM_SIZE"

.field public static final blacklist KEY_USERDATA_SIZE:Ljava/lang/String; = "KEY_USERDATA_SIZE"

.field public static final blacklist MSG_POST_STATUS:I = 0x3

.field public static final blacklist MSG_REGISTER_LISTENER:I = 0x1

.field public static final blacklist MSG_UNREGISTER_LISTENER:I = 0x2

.field public static final whitelist STATUS_IN_PROGRESS:I = 0x2

.field public static final whitelist STATUS_IN_USE:I = 0x4

.field public static final whitelist STATUS_NOT_STARTED:I = 0x1

.field public static final whitelist STATUS_READY:I = 0x3

.field public static final whitelist STATUS_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "DynamicSystemClient"


# instance fields
.field private blacklist mBound:Z

.field private final blacklist mConnection:Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

.field private final blacklist mMessenger:Landroid/os/Messenger;

.field private blacklist mService:Landroid/os/Messenger;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMessenger(Landroid/os/image/DynamicSystemClient;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Landroid/os/image/DynamicSystemClient;->mMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/os/image/DynamicSystemClient;)Landroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Landroid/os/image/DynamicSystemClient;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMessage(Landroid/os/image/DynamicSystemClient;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/image/DynamicSystemClient;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyOnStatusChangedListener(Landroid/os/image/DynamicSystemClient;IIJLjava/lang/Throwable;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/os/image/DynamicSystemClient;->notifyOnStatusChangedListener(IIJLjava/lang/Throwable;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mContext:Landroid/content/Context;

    .line 281
    new-instance v0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;-><init>(Landroid/os/image/DynamicSystemClient;Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection-IA;)V

    iput-object v0, p0, Landroid/os/image/DynamicSystemClient;->mConnection:Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

    .line 282
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/os/image/DynamicSystemClient$IncomingHandler;

    invoke-direct {v1, p0}, Landroid/os/image/DynamicSystemClient$IncomingHandler;-><init>(Landroid/os/image/DynamicSystemClient;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/os/image/DynamicSystemClient;->mMessenger:Landroid/os/Messenger;

    .line 283
    return-void
.end method

.method private blacklist handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 415
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 417
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 418
    .local v0, "status":I
    iget v7, p1, Landroid/os/Message;->arg2:I

    .line 420
    .local v7, "cause":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Landroid/os/Bundle;

    .line 421
    .local v8, "bundle":Landroid/os/Bundle;
    const-string v1, "KEY_INSTALLED_SIZE"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 422
    .local v9, "progress":J
    const-string v1, "KEY_EXCEPTION_DETAIL"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/os/ParcelableException;

    .line 425
    .local v11, "t":Landroid/os/ParcelableException;
    if-nez v11, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v11}, Landroid/os/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    :goto_0
    move-object v6, v1

    .line 427
    .local v6, "detail":Ljava/lang/Throwable;
    move-object v1, p0

    move v2, v0

    move v3, v7

    move-wide v4, v9

    invoke-direct/range {v1 .. v6}, Landroid/os/image/DynamicSystemClient;->notifyOnStatusChangedListener(IIJLjava/lang/Throwable;)V

    .line 428
    nop

    .line 433
    .end local v0    # "status":I
    .end local v6    # "detail":Ljava/lang/Throwable;
    .end local v7    # "cause":I
    .end local v8    # "bundle":Landroid/os/Bundle;
    .end local v9    # "progress":J
    .end local v11    # "t":Landroid/os/ParcelableException;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist notifyOnStatusChangedListener(IIJLjava/lang/Throwable;)V
    .locals 9
    .param p1, "status"    # I
    .param p2, "cause"    # I
    .param p3, "progress"    # J
    .param p5, "detail"    # Ljava/lang/Throwable;

    .line 308
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    if-eqz v0, :cond_1

    .line 309
    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    .line 310
    new-instance v0, Landroid/os/image/DynamicSystemClient$$ExternalSyntheticLambda0;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Landroid/os/image/DynamicSystemClient$$ExternalSyntheticLambda0;-><init>(Landroid/os/image/DynamicSystemClient;IIJLjava/lang/Throwable;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 315
    :cond_0
    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;->onStatusChanged(IIJLjava/lang/Throwable;)V

    .line 318
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist bind()V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 329
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 330
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.dynsystem"

    const-string v2, "com.android.dynsystem.DynamicSystemInstallationService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/os/image/DynamicSystemClient;->mConnection:Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 335
    iput-boolean v3, p0, Landroid/os/image/DynamicSystemClient;->mBound:Z

    .line 336
    return-void
.end method

.method synthetic blacklist lambda$notifyOnStatusChangedListener$0$android-os-image-DynamicSystemClient(IIJLjava/lang/Throwable;)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "cause"    # I
    .param p3, "progress"    # J
    .param p5, "detail"    # Ljava/lang/Throwable;

    .line 312
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;->onStatusChanged(IIJLjava/lang/Throwable;)V

    .line 313
    return-void
.end method

.method public whitelist setOnStatusChangedListener(Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    .line 302
    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/image/DynamicSystemClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 304
    return-void
.end method

.method public whitelist setOnStatusChangedListener(Ljava/util/concurrent/Executor;Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    .line 292
    iput-object p2, p0, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    .line 293
    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 294
    return-void
.end method

.method public whitelist start(Landroid/net/Uri;J)V
    .locals 6
    .param p1, "systemUrl"    # Landroid/net/Uri;
    .param p2, "systemSize"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 381
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/os/image/DynamicSystemClient;->start(Landroid/net/Uri;JJ)V

    .line 382
    return-void
.end method

.method public whitelist start(Landroid/net/Uri;JJ)V
    .locals 3
    .param p1, "systemUrl"    # Landroid/net/Uri;
    .param p2, "systemSize"    # J
    .param p4, "userdataSize"    # J

    .line 399
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 401
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.dynsystem"

    const-string v2, "com.android.dynsystem.VerificationActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 405
    const-string v1, "android.os.image.action.START_INSTALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 408
    const-string v1, "KEY_SYSTEM_SIZE"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 409
    const-string v1, "KEY_USERDATA_SIZE"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 411
    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 412
    return-void
.end method

.method public whitelist unbind()V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 346
    iget-boolean v0, p0, Landroid/os/image/DynamicSystemClient;->mBound:Z

    if-nez v0, :cond_0

    .line 347
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 352
    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 353
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 354
    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DynamicSystemClient"

    const-string v2, "Unable to unregister from installation service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mConnection:Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/image/DynamicSystemClient;->mBound:Z

    .line 364
    return-void
.end method
