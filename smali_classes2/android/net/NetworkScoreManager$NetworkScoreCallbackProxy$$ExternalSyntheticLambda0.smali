.class public final synthetic Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda0;->f$0:Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->lambda$clearScores$1$android-net-NetworkScoreManager$NetworkScoreCallbackProxy()V

    return-void
.end method
