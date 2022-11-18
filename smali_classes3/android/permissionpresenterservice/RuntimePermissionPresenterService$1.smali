.class Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;
.super Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;
.source "RuntimePermissionPresenterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;


# direct methods
.method constructor blacklist <init>(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    .line 83
    iput-object p1, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    invoke-direct {p0}, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$getAppPermissions$0(Ljava/lang/Object;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Ljava/lang/String;
    .param p2, "x$1"    # Landroid/os/RemoteCallback;

    .line 90
    move-object v0, p0

    check-cast v0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    invoke-static {v0, p1, p2}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->-$$Nest$mgetAppPermissions(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 86
    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "callback"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    invoke-static {v0}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->-$$Nest$fgetmHandler(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    .line 90
    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    return-void
.end method
