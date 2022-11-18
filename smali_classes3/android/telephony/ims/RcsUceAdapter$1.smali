.class Landroid/telephony/ims/RcsUceAdapter$1;
.super Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;
.source "RcsUceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/ims/RcsUceAdapter;->requestCapabilities(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/RcsUceAdapter;

.field final synthetic blacklist val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/RcsUceAdapter;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/RcsUceAdapter;

    .line 546
    iput-object p1, p0, Landroid/telephony/ims/RcsUceAdapter$1;->this$0:Landroid/telephony/ims/RcsUceAdapter;

    iput-object p2, p0, Landroid/telephony/ims/RcsUceAdapter$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/ims/RcsUceAdapter$1;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onCapabilitiesReceived$0(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Ljava/util/List;)V
    .locals 0
    .param p0, "c"    # Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;
    .param p1, "contactCapabilities"    # Ljava/util/List;

    .line 551
    invoke-interface {p0, p1}, Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;->onCapabilitiesReceived(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$onComplete$1(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V
    .locals 0
    .param p0, "c"    # Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    .line 560
    invoke-interface {p0}, Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;->onComplete()V

    return-void
.end method

.method static synthetic blacklist lambda$onError$2(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;IJ)V
    .locals 0
    .param p0, "c"    # Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;
    .param p1, "errorCode"    # I
    .param p2, "retryAfterMilliseconds"    # J

    .line 569
    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;->onError(IJ)V

    return-void
.end method


# virtual methods
.method public blacklist onCapabilitiesReceived(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactUceCapability;",
            ">;)V"
        }
    .end annotation

    .line 549
    .local p1, "contactCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 551
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/ims/RcsUceAdapter$1;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    new-instance v4, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, p1}, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$1;->restoreCallingIdentity(J)V

    .line 554
    nop

    .line 555
    return-void

    .line 553
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$1;->restoreCallingIdentity(J)V

    .line 554
    throw v2
.end method

.method public blacklist onComplete()V
    .locals 5

    .line 558
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 560
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/ims/RcsUceAdapter$1;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    new-instance v4, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$1;->restoreCallingIdentity(J)V

    .line 563
    nop

    .line 564
    return-void

    .line 562
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$1;->restoreCallingIdentity(J)V

    .line 563
    throw v2
.end method

.method public blacklist onError(IJ)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "retryAfterMilliseconds"    # J

    .line 567
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 569
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/ims/RcsUceAdapter$1;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    new-instance v4, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3, p1, p2, p3}, Landroid/telephony/ims/RcsUceAdapter$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;IJ)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$1;->restoreCallingIdentity(J)V

    .line 572
    nop

    .line 573
    return-void

    .line 571
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$1;->restoreCallingIdentity(J)V

    .line 572
    throw v2
.end method
