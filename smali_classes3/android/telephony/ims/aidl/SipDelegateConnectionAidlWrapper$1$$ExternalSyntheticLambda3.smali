.class public final synthetic Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/SipDelegateImsConfiguration;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;

    iput-object p2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda3;->f$1:Landroid/telephony/ims/SipDelegateImsConfiguration;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda3;->f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;

    iget-object v1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda3;->f$1:Landroid/telephony/ims/SipDelegateImsConfiguration;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->lambda$onImsConfigurationChanged$2$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$1(Landroid/telephony/ims/SipDelegateImsConfiguration;)V

    return-void
.end method
