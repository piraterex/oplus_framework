.class public Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "NetworkPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkPolicyCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;

    .line 944
    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    .line 945
    iput-object p1, p0, Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 946
    iput-object p2, p0, Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;->mCallback:Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;

    .line 947
    return-void
.end method


# virtual methods
.method public blacklist onBlockedReasonChanged(III)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "oldBlockedReasons"    # I
    .param p3, "newBlockedReasons"    # I

    .line 951
    if-eq p2, p3, :cond_0

    .line 952
    iget-object v0, p0, Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/NetworkPolicyManager$NetworkPolicyCallbackProxy;->mCallback:Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;

    invoke-static {v0, v1, p1, p3}, Landroid/net/NetworkPolicyManager;->-$$Nest$smdispatchOnUidBlockedReasonChanged(Ljava/util/concurrent/Executor;Landroid/net/NetworkPolicyManager$NetworkPolicyCallback;II)V

    .line 954
    :cond_0
    return-void
.end method
