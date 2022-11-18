.class final Landroid/service/dreams/DreamService$DreamServiceWrapper;
.super Landroid/service/dreams/IDreamService$Stub;
.source "DreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DreamServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/dreams/DreamService;


# direct methods
.method constructor blacklist <init>(Landroid/service/dreams/DreamService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/dreams/DreamService;

    .line 1439
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamService$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$detach$1(Landroid/service/dreams/DreamService;)V
    .locals 0
    .param p0, "rec$"    # Landroid/service/dreams/DreamService;

    .line 1448
    invoke-static {p0}, Landroid/service/dreams/DreamService;->-$$Nest$mdetach(Landroid/service/dreams/DreamService;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o attach(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
    .locals 2
    .param p1, "dreamToken"    # Landroid/os/IBinder;
    .param p2, "canDoze"    # Z
    .param p3, "started"    # Landroid/os/IRemoteCallback;

    .line 1443
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmHandler(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1444
    return-void
.end method

.method public greylist-max-o detach()V
    .locals 3

    .line 1448
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmHandler(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    new-instance v2, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1449
    return-void
.end method

.method synthetic blacklist lambda$attach$0$android-service-dreams-DreamService$DreamServiceWrapper(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "dreamToken"    # Landroid/os/IBinder;
    .param p2, "canDoze"    # Z
    .param p3, "started"    # Landroid/os/IRemoteCallback;

    .line 1443
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0, p1, p2, p3}, Landroid/service/dreams/DreamService;->-$$Nest$mattach(Landroid/service/dreams/DreamService;Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V

    return-void
.end method

.method synthetic blacklist lambda$wakeUp$2$android-service-dreams-DreamService$DreamServiceWrapper()V
    .locals 2

    .line 1453
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/service/dreams/DreamService;->-$$Nest$mwakeUp(Landroid/service/dreams/DreamService;Z)V

    return-void
.end method

.method public greylist-max-o wakeUp()V
    .locals 2

    .line 1453
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    invoke-static {v0}, Landroid/service/dreams/DreamService;->-$$Nest$fgetmHandler(Landroid/service/dreams/DreamService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/service/dreams/DreamService$DreamServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1454
    return-void
.end method
