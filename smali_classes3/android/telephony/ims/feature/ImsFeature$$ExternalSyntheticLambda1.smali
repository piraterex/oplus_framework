.class public final synthetic Landroid/telephony/ims/feature/ImsFeature$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/feature/ImsFeature$Capabilities;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/ImsFeature$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    check-cast p1, Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-static {v0, p1}, Landroid/telephony/ims/feature/ImsFeature;->lambda$notifyCapabilitiesStatusChanged$1(Landroid/telephony/ims/feature/ImsFeature$Capabilities;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method
