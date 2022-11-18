.class public final synthetic Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda11;->f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

    iput p2, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda11;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda11;->f$0:Landroid/telephony/ims/stub/ImsUtImplBase$1;

    iget v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda11;->f$1:I

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->lambda$updateCLIR$12$android-telephony-ims-stub-ImsUtImplBase$1(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
