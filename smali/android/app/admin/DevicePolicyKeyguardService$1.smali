.class Landroid/app/admin/DevicePolicyKeyguardService$1;
.super Landroid/app/admin/IKeyguardClient$Stub;
.source "DevicePolicyKeyguardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/admin/DevicePolicyKeyguardService;


# direct methods
.method constructor blacklist <init>(Landroid/app/admin/DevicePolicyKeyguardService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/admin/DevicePolicyKeyguardService;

    .line 50
    iput-object p1, p0, Landroid/app/admin/DevicePolicyKeyguardService$1;->this$0:Landroid/app/admin/DevicePolicyKeyguardService;

    invoke-direct {p0}, Landroid/app/admin/IKeyguardClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onCreateKeyguardSurface$0$android-app-admin-DevicePolicyKeyguardService$1(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "hostInputToken"    # Landroid/os/IBinder;

    .line 57
    iget-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService$1;->this$0:Landroid/app/admin/DevicePolicyKeyguardService;

    .line 58
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyKeyguardService;->onCreateKeyguardSurface(Landroid/os/IBinder;)Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    .line 61
    .local v0, "surfacePackage":Landroid/view/SurfaceControlViewHost$SurfacePackage;
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyKeyguardService$1;->this$0:Landroid/app/admin/DevicePolicyKeyguardService;

    invoke-static {v1}, Landroid/app/admin/DevicePolicyKeyguardService;->-$$Nest$fgetmCallback(Landroid/app/admin/DevicePolicyKeyguardService;)Landroid/app/admin/IKeyguardCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/admin/IKeyguardCallback;->onRemoteContentReady(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DevicePolicyKeyguardService"

    const-string v3, "Failed to return created SurfacePackage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist onCreateKeyguardSurface(Landroid/os/IBinder;Landroid/app/admin/IKeyguardCallback;)V
    .locals 2
    .param p1, "hostInputToken"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/app/admin/IKeyguardCallback;

    .line 55
    iget-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService$1;->this$0:Landroid/app/admin/DevicePolicyKeyguardService;

    invoke-static {v0, p2}, Landroid/app/admin/DevicePolicyKeyguardService;->-$$Nest$fputmCallback(Landroid/app/admin/DevicePolicyKeyguardService;Landroid/app/admin/IKeyguardCallback;)V

    .line 56
    iget-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService$1;->this$0:Landroid/app/admin/DevicePolicyKeyguardService;

    invoke-static {v0}, Landroid/app/admin/DevicePolicyKeyguardService;->-$$Nest$fgetmHandler(Landroid/app/admin/DevicePolicyKeyguardService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/admin/DevicePolicyKeyguardService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/admin/DevicePolicyKeyguardService$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/admin/DevicePolicyKeyguardService$1;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    return-void
.end method
