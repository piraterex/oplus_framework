.class public final synthetic Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

.field public final synthetic blacklist f$1:C


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda12;->f$0:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    iput-char p2, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda12;->f$1:C

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda12;->f$0:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    iget-char v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda12;->f$1:C

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionDtmfReceived$38$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(C)V

    return-void
.end method
