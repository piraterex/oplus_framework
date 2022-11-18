.class Landroid/telephony/ims/ImsMmTelManager$2;
.super Lcom/android/internal/telephony/IIntegerConsumer$Stub;
.source "ImsMmTelManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/ims/ImsMmTelManager;->getRegistrationTransportType(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/ImsMmTelManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$transportTypeCallback:Ljava/util/function/Consumer;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/ImsMmTelManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/ImsMmTelManager;

    .line 508
    iput-object p1, p0, Landroid/telephony/ims/ImsMmTelManager$2;->this$0:Landroid/telephony/ims/ImsMmTelManager;

    iput-object p2, p0, Landroid/telephony/ims/ImsMmTelManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/ims/ImsMmTelManager$2;->val$transportTypeCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$accept$0(Ljava/util/function/Consumer;I)V
    .locals 1
    .param p0, "transportTypeCallback"    # Ljava/util/function/Consumer;
    .param p1, "result"    # I

    .line 513
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist accept(I)V
    .locals 5
    .param p1, "result"    # I

    .line 511
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 513
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ImsMmTelManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/ims/ImsMmTelManager$2;->val$transportTypeCallback:Ljava/util/function/Consumer;

    new-instance v4, Landroid/telephony/ims/ImsMmTelManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/telephony/ims/ImsMmTelManager$2$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    nop

    .line 517
    return-void

    .line 515
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 516
    throw v2
.end method
