.class public final synthetic Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/Consumer;

.field public final synthetic blacklist f$1:Landroid/service/trust/GrantTrustResult;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;->f$1:Landroid/service/trust/GrantTrustResult;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/service/trust/TrustAgentService$$ExternalSyntheticLambda1;->f$1:Landroid/service/trust/GrantTrustResult;

    invoke-static {v0, v1}, Landroid/service/trust/TrustAgentService;->lambda$grantTrust$0(Ljava/util/function/Consumer;Landroid/service/trust/GrantTrustResult;)V

    return-void
.end method
