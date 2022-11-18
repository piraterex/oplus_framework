.class public final synthetic Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;

    iput p2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;

    iget v1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1$$ExternalSyntheticLambda2;->f$1:I

    invoke-virtual {v0, v1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;->lambda$onDestroyed$4$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper$1(I)V

    return-void
.end method
