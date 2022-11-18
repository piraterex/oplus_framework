.class Landroid/telephony/TelephonyManager$10;
.super Lcom/android/internal/telephony/ISetOpportunisticDataCallback$Stub;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->setPreferredOpportunisticDataSubscription(IZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/TelephonyManager;

.field final synthetic blacklist val$callback:Ljava/util/function/Consumer;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;

    .line 14470
    iput-object p1, p0, Landroid/telephony/TelephonyManager$10;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$10;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$10;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/android/internal/telephony/ISetOpportunisticDataCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onComplete$0(Ljava/util/function/Consumer;I)V
    .locals 1
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "result"    # I

    .line 14479
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 14480
    return-void
.end method


# virtual methods
.method public blacklist onComplete(I)V
    .locals 5
    .param p1, "result"    # I

    .line 14473
    iget-object v0, p0, Landroid/telephony/TelephonyManager$10;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/TelephonyManager$10;->val$callback:Ljava/util/function/Consumer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 14476
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 14478
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/TelephonyManager$10;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/TelephonyManager$10;->val$callback:Ljava/util/function/Consumer;

    new-instance v4, Landroid/telephony/TelephonyManager$10$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/telephony/TelephonyManager$10$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14482
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14483
    nop

    .line 14484
    return-void

    .line 14482
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14483
    throw v2

    .line 14474
    .end local v0    # "identity":J
    :cond_1
    :goto_0
    return-void
.end method
