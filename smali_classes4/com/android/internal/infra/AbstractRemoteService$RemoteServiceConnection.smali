.class Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;
.super Ljava/lang/Object;
.source "AbstractRemoteService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/AbstractRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/infra/AbstractRemoteService;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/infra/AbstractRemoteService;)V
    .locals 0

    .line 484
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>.RemoteServiceConnection;"
    iput-object p1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/infra/AbstractRemoteService;Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;-><init>(Lcom/android/internal/infra/AbstractRemoteService;)V

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 514
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>.RemoteServiceConnection;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-boolean v0, v0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-object v0, v0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onBindingDied()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$mscheduleUnbind(Lcom/android/internal/infra/AbstractRemoteService;Z)V

    .line 516
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 487
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>.RemoteServiceConnection;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-boolean v0, v0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-object v0, v0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-static {v0}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fgetmDestroyed(Lcom/android/internal/infra/AbstractRemoteService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-static {v0}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fgetmConnecting(Lcom/android/internal/infra/AbstractRemoteService;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fputmConnecting(Lcom/android/internal/infra/AbstractRemoteService;Z)V

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    nop

    .line 500
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-virtual {v0, p2}, Lcom/android/internal/infra/AbstractRemoteService;->getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    .line 501
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$mhandleOnConnectedStateChangedInternal(Lcom/android/internal/infra/AbstractRemoteService;Z)V

    .line 502
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-static {v0, v1}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fputmServiceDied(Lcom/android/internal/infra/AbstractRemoteService;Z)V

    .line 503
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "re":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    invoke-static {v1}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$mhandleBinderDied(Lcom/android/internal/infra/AbstractRemoteService;)V

    .line 498
    return-void

    .line 490
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-object v0, v0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onServiceConnected() was dispatched after unbindService."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 507
    .local p0, "this":Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;, "Lcom/android/internal/infra/AbstractRemoteService<TS;TI;>.RemoteServiceConnection;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-boolean v0, v0, Lcom/android/internal/infra/AbstractRemoteService;->mVerbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    iget-object v0, v0, Lcom/android/internal/infra/AbstractRemoteService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/infra/AbstractRemoteService;->-$$Nest$fputmConnecting(Lcom/android/internal/infra/AbstractRemoteService;Z)V

    .line 509
    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$RemoteServiceConnection;->this$0:Lcom/android/internal/infra/AbstractRemoteService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/infra/AbstractRemoteService;->mService:Landroid/os/IInterface;

    .line 510
    return-void
.end method
