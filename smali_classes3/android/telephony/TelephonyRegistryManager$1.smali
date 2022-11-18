.class Landroid/telephony/TelephonyRegistryManager$1;
.super Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;
.source "TelephonyRegistryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyRegistryManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/TelephonyRegistryManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyRegistryManager;Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/TelephonyRegistryManager;

    .line 127
    iput-object p1, p0, Landroid/telephony/TelephonyRegistryManager$1;->this$0:Landroid/telephony/TelephonyRegistryManager;

    iput-object p2, p0, Landroid/telephony/TelephonyRegistryManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/TelephonyRegistryManager$1;->val$listener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-direct {p0}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onSubscriptionsChanged$0(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 4
    .param p0, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 141
    const-wide/16 v0, 0x0

    .line 142
    .local v0, "durationUptime":J
    invoke-static {}, Landroid/telephony/TelephonyRegistryManager;->-$$Nest$sfgetIS_DEBUG_BUILD()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    .line 146
    invoke-static {}, Landroid/telephony/TelephonyRegistryManager;->-$$Nest$sfgetIS_DEBUG_BUILD()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 148
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cost "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms in listener = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyRegistryManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist onSubscriptionsChanged()V
    .locals 3

    .line 140
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager$1;->val$listener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v2, Landroid/telephony/TelephonyRegistryManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/telephony/TelephonyRegistryManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method
