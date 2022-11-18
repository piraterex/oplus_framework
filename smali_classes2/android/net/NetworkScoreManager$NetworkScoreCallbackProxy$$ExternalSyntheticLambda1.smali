.class public final synthetic Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda1;->f$0:Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;

    iput-object p2, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda1;->f$0:Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;

    iget-object v1, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->lambda$updateScores$0$android-net-NetworkScoreManager$NetworkScoreCallbackProxy(Ljava/util/List;)V

    return-void
.end method
