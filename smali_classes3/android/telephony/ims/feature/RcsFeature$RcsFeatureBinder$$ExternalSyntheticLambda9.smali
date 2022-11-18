.class public final synthetic Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda9;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda9;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$queryCapabilityStatus$0$android-telephony-ims-feature-RcsFeature$RcsFeatureBinder()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
