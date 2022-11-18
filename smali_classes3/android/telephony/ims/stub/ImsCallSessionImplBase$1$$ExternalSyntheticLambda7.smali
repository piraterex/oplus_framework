.class public final synthetic Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/telephony/ims/ImsStreamMediaProfile;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    iput p2, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda7;->f$1:I

    iput-object p3, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda7;->f$2:Landroid/telephony/ims/ImsStreamMediaProfile;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda7;->f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    iget v1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda7;->f$1:I

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda7;->f$2:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$accept$12$android-telephony-ims-stub-ImsCallSessionImplBase$1(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method
