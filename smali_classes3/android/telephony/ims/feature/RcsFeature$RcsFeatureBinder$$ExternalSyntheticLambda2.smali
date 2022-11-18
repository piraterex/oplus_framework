.class public final synthetic Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

.field public final synthetic blacklist f$1:Ljava/util/List;

.field public final synthetic blacklist f$2:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Ljava/util/List;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iput-object p2, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iput-object p3, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda2;->f$2:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iget-object v2, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda2;->f$2:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->lambda$subscribeForCapabilities$7$android-telephony-ims-feature-RcsFeature$RcsFeatureBinder(Ljava/util/List;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V

    return-void
.end method
