.class public final synthetic Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/feature/RcsFeature;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/feature/RcsFeature;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda5;->f$0:Landroid/telephony/ims/feature/RcsFeature;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda5;->f$0:Landroid/telephony/ims/feature/RcsFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/ImsFeature;->getFeatureState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
