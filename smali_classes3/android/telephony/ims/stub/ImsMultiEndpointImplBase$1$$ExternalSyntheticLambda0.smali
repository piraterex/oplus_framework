.class public final synthetic Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;

.field public final synthetic blacklist f$1:Lcom/android/ims/internal/IImsExternalCallStateListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;

    iput-object p2, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/ims/internal/IImsExternalCallStateListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/ims/internal/IImsExternalCallStateListener;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;->lambda$setListener$0$android-telephony-ims-stub-ImsMultiEndpointImplBase$1(Lcom/android/ims/internal/IImsExternalCallStateListener;)V

    return-void
.end method
