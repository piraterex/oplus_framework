.class public final synthetic Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/ImsRegistrationAttributes;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

    iput-object p2, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/ims/ImsRegistrationAttributes;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

    iget-object v1, p0, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/ims/ImsRegistrationAttributes;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onRegistered$0$android-telephony-ims-RegistrationManager$RegistrationCallback$RegistrationBinder(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method
