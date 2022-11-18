.class Landroid/view/ViewRootImpl$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/graphics/BLASTBufferQueue$TransactionHangCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onTransactionHang(Z)V
    .locals 2
    .param p1, "isGPUHang"    # Z

    .line 878
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetsAnrReported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 879
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$sfputsAnrReported(Z)V

    .line 881
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "Buffer processing hung up due to stuck fence. Indicates GPU hang"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->appNotResponding(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    goto :goto_0

    .line 883
    :catch_0
    move-exception v0

    .line 892
    :cond_0
    :goto_0
    return-void
.end method
