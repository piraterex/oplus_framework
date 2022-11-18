.class public final synthetic Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/lowpan/LowpanInterface$Callback;

.field public final synthetic blacklist f$1:Landroid/net/IpPrefix;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda6;->f$0:Landroid/net/lowpan/LowpanInterface$Callback;

    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda6;->f$1:Landroid/net/IpPrefix;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda6;->f$0:Landroid/net/lowpan/LowpanInterface$Callback;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1$$ExternalSyntheticLambda6;->f$1:Landroid/net/IpPrefix;

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$onLinkNetworkRemoved$7(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V

    return-void
.end method
