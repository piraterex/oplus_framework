.class Landroid/telephony/ims/RcsUceAdapter$2;
.super Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;
.source "RcsUceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/ims/RcsUceAdapter;->requestAvailability(Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V
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

    .line 642
    iput-object p1, p0, Landroid/telephony/ims/RcsUceAdapter$2;->this$0:Landroid/telephony/ims/RcsUceAdapter;

    iput-object p2, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onCapabilitiesReceived$0(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Ljava/util/List;)V
    .locals 0
    .param p0, "c"    # Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;
    .param p1, "contactCapabilities"    # Ljava/util/List;

    .line 647
    invoke-interface {p0, p1}, Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;->onCapabilitiesReceived(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$onComplete$1(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V
    .locals 0
    .param p0, "c"    # Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    .line 656
    invoke-interface {p0}, Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;->onComplete()V

    return-void
.end method

.method static synthetic blacklist lambda$onError$2(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;IJ)V
    .locals 0
    .param p0, "c"    # Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;
    .param p1, "errorCode"    # I
    .param p2, "retryAfterMilliseconds"    # J

    .line 665
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

    .line 645
    .local p1, "contactCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactUceCapability;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 647
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    new-instance v4, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3, p1}, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$2;->restoreCallingIdentity(J)V

    .line 650
    nop

    .line 651
    return-void

    .line 649
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$2;->restoreCallingIdentity(J)V

    .line 650
    throw v2
.end method

.method public blacklist onComplete()V
    .locals 5

    .line 654
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 656
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    new-instance v4, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$2;->restoreCallingIdentity(J)V

    .line 659
    nop

    .line 660
    return-void

    .line 658
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$2;->restoreCallingIdentity(J)V

    .line 659
    throw v2
.end method

.method public blacklist onError(IJ)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "retryAfterMilliseconds"    # J

    .line 663
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 665
    .local v0, "callingIdentity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/ims/RcsUceAdapter$2;->val$c:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    new-instance v4, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1, p2, p3}, Landroid/telephony/ims/RcsUceAdapter$2$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;IJ)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$2;->restoreCallingIdentity(J)V

    .line 668
    nop

    .line 669
    return-void

    .line 667
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$2;->restoreCallingIdentity(J)V

    .line 668
    throw v2
.end method
