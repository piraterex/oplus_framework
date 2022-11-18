.class public final synthetic Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;IILjava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    iput p2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda1;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    iget v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda1;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$setConfigInt$4$android-telephony-ims-stub-ImsConfigImplBase$ImsConfigStub(IILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
