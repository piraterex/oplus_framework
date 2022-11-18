.class public final synthetic Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/telephony/ims/ImsReasonInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

    iput p2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

    iget v1, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onTechnologyChangeFailed$3$android-telephony-ims-RegistrationManager$RegistrationCallback$RegistrationBinder(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method
