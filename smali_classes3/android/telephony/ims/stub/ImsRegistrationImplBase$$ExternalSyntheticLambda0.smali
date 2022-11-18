.class public final synthetic Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Landroid/telephony/ims/ImsReasonInfo;


# direct methods
.method public synthetic constructor blacklist <init>(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/ImsReasonInfo;

    check-cast p1, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    invoke-static {v0, v1, p1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->lambda$onTechnologyChangeFailed$3(ILandroid/telephony/ims/ImsReasonInfo;Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    return-void
.end method
