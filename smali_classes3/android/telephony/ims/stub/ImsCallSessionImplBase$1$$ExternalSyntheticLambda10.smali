.class public final synthetic Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/ImsStreamMediaProfile;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda10;->f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    iput-object p2, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda10;->f$1:Landroid/telephony/ims/ImsStreamMediaProfile;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda10;->f$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda10;->f$1:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->lambda$hold$18$android-telephony-ims-stub-ImsCallSessionImplBase$1(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method
