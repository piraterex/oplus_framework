.class Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;
.super Landroid/service/watchdog/IExplicitHealthCheckService$Stub;
.source "ExplicitHealthCheckService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/watchdog/ExplicitHealthCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExplicitHealthCheckServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/watchdog/ExplicitHealthCheckService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/watchdog/ExplicitHealthCheckService;)V
    .locals 0

    .line 296
    iput-object p1, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-direct {p0}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/watchdog/ExplicitHealthCheckService;Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService;)V

    return-void
.end method


# virtual methods
.method public blacklist cancel(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    return-void
.end method

.method public blacklist getRequestedPackages(Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    return-void
.end method

.method public blacklist getSupportedPackages(Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    return-void
.end method

.method synthetic blacklist lambda$cancel$2$android-service-watchdog-ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 311
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-virtual {v0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService;->onCancelHealthCheck(Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$getRequestedPackages$4$android-service-watchdog-ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper(Landroid/os/RemoteCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 329
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    .line 330
    invoke-virtual {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->onGetRequestedPackages()Ljava/util/List;

    move-result-object v0

    .line 331
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "Requested  package list must be non-null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 332
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 333
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "android.service.watchdog.extra.requested_packages"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 334
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 335
    return-void
.end method

.method synthetic blacklist lambda$getSupportedPackages$3$android-service-watchdog-ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper(Landroid/os/RemoteCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 317
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    .line 318
    invoke-virtual {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->onGetSupportedPackages()Ljava/util/List;

    move-result-object v0

    .line 319
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;>;"
    const-string v1, "Supported package list must be non-null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 320
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 321
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "android.service.watchdog.extra.supported_packages"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 322
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 323
    return-void
.end method

.method synthetic blacklist lambda$request$1$android-service-watchdog-ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 306
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-virtual {v0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService;->onRequestHealthCheck(Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$setCallback$0$android-service-watchdog-ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper(Landroid/os/RemoteCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 300
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fputmCallback(Landroid/service/watchdog/ExplicitHealthCheckService;Landroid/os/RemoteCallback;)V

    .line 301
    return-void
.end method

.method public blacklist request(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    return-void
.end method

.method public blacklist setCallback(Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/RemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    return-void
.end method
