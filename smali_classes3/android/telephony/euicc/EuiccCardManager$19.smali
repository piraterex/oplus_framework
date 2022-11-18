.class Landroid/telephony/euicc/EuiccCardManager$19;
.super Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback$Stub;
.source "EuiccCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/euicc/EuiccCardManager;->loadBoundProfilePackage(Ljava/lang/String;[BLjava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/euicc/EuiccCardManager;

.field final synthetic blacklist val$callback:Landroid/telephony/euicc/EuiccCardManager$ResultCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/euicc/EuiccCardManager;Ljava/util/concurrent/Executor;Landroid/telephony/euicc/EuiccCardManager$ResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/euicc/EuiccCardManager;

    .line 752
    iput-object p1, p0, Landroid/telephony/euicc/EuiccCardManager$19;->this$0:Landroid/telephony/euicc/EuiccCardManager;

    iput-object p2, p0, Landroid/telephony/euicc/EuiccCardManager$19;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/euicc/EuiccCardManager$19;->val$callback:Landroid/telephony/euicc/EuiccCardManager$ResultCallback;

    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onComplete$0(Landroid/telephony/euicc/EuiccCardManager$ResultCallback;I[B)V
    .locals 0
    .param p0, "callback"    # Landroid/telephony/euicc/EuiccCardManager$ResultCallback;
    .param p1, "resultCode"    # I
    .param p2, "response"    # [B

    .line 757
    invoke-interface {p0, p1, p2}, Landroid/telephony/euicc/EuiccCardManager$ResultCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist onComplete(I[B)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "response"    # [B

    .line 755
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 757
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/euicc/EuiccCardManager$19;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/euicc/EuiccCardManager$19;->val$callback:Landroid/telephony/euicc/EuiccCardManager$ResultCallback;

    new-instance v4, Landroid/telephony/euicc/EuiccCardManager$19$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1, p2}, Landroid/telephony/euicc/EuiccCardManager$19$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/euicc/EuiccCardManager$ResultCallback;I[B)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 760
    nop

    .line 761
    return-void

    .line 759
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 760
    throw v2
.end method
