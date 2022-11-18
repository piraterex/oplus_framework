.class public abstract Landroid/service/watchdog/ExplicitHealthCheckService;
.super Landroid/app/Service;
.source "ExplicitHealthCheckService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;,
        Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;
    }
.end annotation


# static fields
.field public static final whitelist BIND_PERMISSION:Ljava/lang/String; = "android.permission.BIND_EXPLICIT_HEALTH_CHECK_SERVICE"

.field public static final blacklist EXTRA_HEALTH_CHECK_PASSED_PACKAGE:Ljava/lang/String; = "android.service.watchdog.extra.health_check_passed_package"

.field public static final blacklist EXTRA_REQUESTED_PACKAGES:Ljava/lang/String; = "android.service.watchdog.extra.requested_packages"

.field public static final blacklist EXTRA_SUPPORTED_PACKAGES:Ljava/lang/String; = "android.service.watchdog.extra.supported_packages"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.watchdog.ExplicitHealthCheckService"

.field private static final blacklist TAG:Ljava/lang/String; = "ExplicitHealthCheckService"


# instance fields
.field private blacklist mCallback:Landroid/os/RemoteCallback;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mWrapper:Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/service/watchdog/ExplicitHealthCheckService;Landroid/os/RemoteCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mCallback:Landroid/os/RemoteCallback;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 4

    .line 70
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 114
    new-instance v0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService;Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper-IA;)V

    iput-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mWrapper:Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;

    .line 154
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$notifyHealthCheckPassed$0$android-service-watchdog-ExplicitHealthCheckService(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mCallback:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "Package passing explicit health check must be non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.service.watchdog.extra.health_check_passed_package"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mCallback:Landroid/os/RemoteCallback;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 184
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System missed explicit health check result for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExplicitHealthCheckService"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    return-void
.end method

.method public final whitelist notifyHealthCheckPassed(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 177
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$$ExternalSyntheticLambda0;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 160
    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mWrapper:Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;

    return-object v0
.end method

.method public abstract whitelist onCancelHealthCheck(Ljava/lang/String;)V
.end method

.method public abstract whitelist onGetRequestedPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist onGetSupportedPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist onRequestHealthCheck(Ljava/lang/String;)V
.end method

.method public blacklist setCallback(Landroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 170
    iput-object p1, p0, Landroid/service/watchdog/ExplicitHealthCheckService;->mCallback:Landroid/os/RemoteCallback;

    .line 171
    return-void
.end method
