.class public final synthetic Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda30;->f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    iput-boolean p2, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda30;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda30;->f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    iget-boolean v1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda30;->f$1:Z

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$sendRttModifyResponse$32$android-telephony-ims-stub-ImsCallSessionImplBase$1(Z)V

    return-void
.end method
