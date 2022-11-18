.class public final synthetic Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/ImsCallProfile;

.field public final synthetic blacklist f$2:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/feature/MmTelFeature$1;Landroid/telephony/ims/ImsCallProfile;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda6;->f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

    iput-object p2, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda6;->f$1:Landroid/telephony/ims/ImsCallProfile;

    iput-object p3, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda6;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda6;->f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda6;->f$1:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda6;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$createCallSession$4$android-telephony-ims-feature-MmTelFeature$1(Landroid/telephony/ims/ImsCallProfile;Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    return-object v0
.end method
