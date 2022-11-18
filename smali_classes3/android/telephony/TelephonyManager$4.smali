.class Landroid/telephony/TelephonyManager$4;
.super Landroid/telephony/ICellInfoCallback$Stub;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->requestCellInfoUpdate(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/TelephonyManager;

.field final synthetic blacklist val$callback:Landroid/telephony/TelephonyManager$CellInfoCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;

    .line 6828
    iput-object p1, p0, Landroid/telephony/TelephonyManager$4;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$4;->val$callback:Landroid/telephony/TelephonyManager$CellInfoCallback;

    invoke-direct {p0}, Landroid/telephony/ICellInfoCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onCellInfo$0(Landroid/telephony/TelephonyManager$CellInfoCallback;Ljava/util/List;)V
    .locals 0
    .param p0, "callback"    # Landroid/telephony/TelephonyManager$CellInfoCallback;
    .param p1, "cellInfo"    # Ljava/util/List;

    .line 6833
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager$CellInfoCallback;->onCellInfo(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$onError$1(Landroid/telephony/TelephonyManager$CellInfoCallback;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "callback"    # Landroid/telephony/TelephonyManager$CellInfoCallback;
    .param p1, "errorCode"    # I
    .param p2, "exceptionName"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 6843
    nop

    .line 6845
    invoke-static {p2, p3}, Landroid/telephony/TelephonyManager;->-$$Nest$smcreateThrowableByClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    .line 6843
    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager$CellInfoCallback;->onError(ILjava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public blacklist onCellInfo(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 6831
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6833
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/TelephonyManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/TelephonyManager$4;->val$callback:Landroid/telephony/TelephonyManager$CellInfoCallback;

    new-instance v4, Landroid/telephony/TelephonyManager$4$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, p1}, Landroid/telephony/TelephonyManager$4$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/TelephonyManager$CellInfoCallback;Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6835
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6836
    nop

    .line 6837
    return-void

    .line 6835
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6836
    throw v2
.end method

.method public blacklist onError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "exceptionName"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 6841
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6843
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/TelephonyManager$4;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/TelephonyManager$4;->val$callback:Landroid/telephony/TelephonyManager$CellInfoCallback;

    new-instance v4, Landroid/telephony/TelephonyManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1, p2, p3}, Landroid/telephony/TelephonyManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyManager$CellInfoCallback;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6847
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6848
    nop

    .line 6849
    return-void

    .line 6847
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6848
    throw v2
.end method
