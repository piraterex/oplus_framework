.class Landroid/service/contentcapture/ContentCaptureService$3;
.super Ljava/lang/Object;
.source "ContentCaptureService.java"

# interfaces
.implements Landroid/service/contentcapture/DataShareCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/contentcapture/ContentCaptureService;->handleOnDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/contentcapture/ContentCaptureService;

.field final synthetic blacklist val$callback:Landroid/service/contentcapture/IDataShareCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/contentcapture/ContentCaptureService;Landroid/service/contentcapture/IDataShareCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/contentcapture/ContentCaptureService;

    .line 542
    iput-object p1, p0, Landroid/service/contentcapture/ContentCaptureService$3;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    iput-object p2, p0, Landroid/service/contentcapture/ContentCaptureService$3;->val$callback:Landroid/service/contentcapture/IDataShareCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAccept(Ljava/util/concurrent/Executor;Landroid/service/contentcapture/DataShareReadAdapter;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "adapter"    # Landroid/service/contentcapture/DataShareReadAdapter;

    .line 547
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    new-instance v0, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;

    iget-object v1, p0, Landroid/service/contentcapture/ContentCaptureService$3;->this$0:Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {v1}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$fgetmDataShareAdapterResourceManager(Landroid/service/contentcapture/ContentCaptureService;)Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/service/contentcapture/DataShareReadAdapter;Landroid/service/contentcapture/ContentCaptureService$LocalDataShareAdapterResourceManager;)V

    .line 555
    .local v0, "delegate":Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;
    :try_start_0
    iget-object v1, p0, Landroid/service/contentcapture/ContentCaptureService$3;->val$callback:Landroid/service/contentcapture/IDataShareCallback;

    invoke-interface {v1, v0}, Landroid/service/contentcapture/IDataShareCallback;->accept(Landroid/service/contentcapture/IDataShareReadAdapter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    goto :goto_0

    .line 556
    :catch_0
    move-exception v1

    .line 557
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to accept data sharing"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist onReject()V
    .locals 3

    .line 564
    :try_start_0
    iget-object v0, p0, Landroid/service/contentcapture/ContentCaptureService$3;->val$callback:Landroid/service/contentcapture/IDataShareCallback;

    invoke-interface {v0}, Landroid/service/contentcapture/IDataShareCallback;->reject()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Landroid/service/contentcapture/ContentCaptureService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to reject data sharing"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 568
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
