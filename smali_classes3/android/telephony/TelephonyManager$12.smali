.class Landroid/telephony/TelephonyManager$12;
.super Lcom/android/internal/telephony/IBooleanConsumer$Stub;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->setSystemSelectionChannelsInternal(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
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

    .line 15064
    iput-object p1, p0, Landroid/telephony/TelephonyManager$12;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$12;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$12;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/android/internal/telephony/IBooleanConsumer$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$accept$0(Ljava/util/function/Consumer;Z)V
    .locals 1
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "result"    # Z

    .line 15069
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist accept(Z)V
    .locals 5
    .param p1, "result"    # Z

    .line 15067
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 15069
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Landroid/telephony/TelephonyManager$12;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/TelephonyManager$12;->val$callback:Ljava/util/function/Consumer;

    new-instance v4, Landroid/telephony/TelephonyManager$12$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/telephony/TelephonyManager$12$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15071
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15072
    nop

    .line 15073
    return-void

    .line 15071
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15072
    throw v2
.end method
